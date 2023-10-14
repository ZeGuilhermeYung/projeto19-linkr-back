import joi from 'joi';

const emailRegex = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)*(\.[a-z]{2,})$/;
const photoRegex = /(http[s]?:\/\/.*\.(?:png|jpg|gif|svg|jpeg))/i;

const userSchema = joi.object({
    username: joi.string().required(),
    email: joi.string().pattern(emailRegex).required(),
    password: joi.string().required(),
    photo: joi.string().pattern(photoRegex).empty('')
});

export default userSchema;