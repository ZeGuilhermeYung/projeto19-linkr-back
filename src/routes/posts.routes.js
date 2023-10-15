import { Router } from "express";
import { validateAuth } from "../middlewares/auth.middlewares.js";
import { createPost } from "../controllers/posts.controllers.js";
import validateSchema from "../middlewares/validate.schema.js";
import postsSchemas from "../schemas/posts.schemas.js";

const postsRouter = Router();

//postsRouter.get('/timeline', validateAuth, getPosts);
postsRouter.post('/timeline', validateAuth, validateSchema(postsSchemas), createPost);

export default postsRouter;