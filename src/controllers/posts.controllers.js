import { postsRepository } from "../repositories/posts.repository.js";

async function createPost (req, res) {
    const { url, description } = req.body;
    const { userId } = res.locals;

    try {
        await postsRepository.insertPost(url, description, userId);

        return res.sendStatus(201);
    } catch (error) {
        return res.status(500).send(error);
    };
};

export { createPost };