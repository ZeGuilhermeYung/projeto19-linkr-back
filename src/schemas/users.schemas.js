import joi from 'joi';

const userSchema = joi.object({
    username: joi.string().required(),
    email: joi.string().required(),
    password: joi.string().required(),
    photo: joi.string()
});

export default userSchema;