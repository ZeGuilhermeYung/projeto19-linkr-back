import { authRepository } from "../repositories/auth.repository.js";

async function validateAuth (req, res, next) {
  const authorization = req.headers.authorization;
  const token = authorization?.replace("Bearer ", "");
  const { userId } = req.body;
  
  if (!token) {
    res.sendStatus(401);
    return;
  }
  
  let user;

  try {
    const session = await authRepository.sessionAuth(userId, token);

    if (!session) {
      res.sendStatus(404);
      return;
    }

    res.locals.user = user;
    next();

  } catch (error) {
    console.error(error);
    res.sendStatus(500);
  }
};

export default validateAuth;