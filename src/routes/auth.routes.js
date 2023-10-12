import { Router } from "express";
import userSchema from "../schemas/users.schemas.js";
import authSchema from "../schemas/auth.schemas.js";
import { signUp, signIn } from "../controllers/auth.controllers.js";
import validateSchema from "../middlewares/validate.schema.js";
import { validateEmail } from "../middlewares/users.middlewares.js";

const authRouter = Router();

authRouter.post('/sign-up',validateSchema(userSchema), validateEmail, signUp);
authRouter.post('/',validateSchema(authSchema), signIn);

export default authRouter;