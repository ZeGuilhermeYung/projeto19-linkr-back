import db from "../database/db.js";

const findPosts =`SELECT
  p.id,
  p.url,
  p.description,
  p."userId",
  p.likes,
  u.username,
  u.photo
  FROM posts p
  JOIN users u ON p."userId" = u.id`;

async function insertPost(url, description, userId) {
  const query = `INSERT INTO posts (url, description , "userId") VALUES ( $1, $2, $3 );`;
  return db.query(query, [url, description, userId]);
}

async function getPosts() {
  const query = `${findPosts} ORDER BY id DESC LIMIT 20;`;
  const result = await db.query(query);
  return result.rows;
}

async function deletePost(id) {
  const query = `DELETE FROM posts WHERE id = $1;`;
  return db.query(query, [id]);
}

async function updatePost(id, description) {
  const query = `UPDATE posts SET "description" = $2 WHERE id = $1;`;
  return db.query(query, [id, description]);
}

const postsRepository = {
  insertPost,
  getPosts, 
  deletePost,
  updatePost,
};

export { postsRepository };