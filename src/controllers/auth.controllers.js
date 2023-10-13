import { v4 as uuid } from 'uuid';
import bcrypt from 'bcrypt';
import { registerUserSession, getUserbyEmail } from '../repositories/users.repository.js';
import { authRepository } from '../repositories/auth.repository.js';

async function signUp (req, res) {
    const { username, email, password, photo } = res.locals.body;

    try {
        const passwordHash = bcrypt.hashSync(password, 10);

        await authRepository.signUpAuth(username, email, passwordHash, photo);

        return res.sendStatus(201);
    } catch (error) {
        return res.status(500).send(error);
    };
};

async function signIn (req, res) {
    const { email, password } = req.body;
    try {
        const userExists = await authRepository.emailRegistered(email, password);

        if (!userExists) {
            res.sendStatus(401);
            return;
        }

        const isValidPassword = bcrypt.compareSync(password, userExists.password);
        if (!isValidPassword) {
            res.sendStatus(401);
            return;
        }
        
        const token = uuid();        
        const user = await getUserbyEmail(email);

        await registerUserSession(user.id, token);

        return res.status(200).send({ token });
    } catch (error) {
        return res.status(500).send('Internal server error');
    };
};

export { signUp, signIn };