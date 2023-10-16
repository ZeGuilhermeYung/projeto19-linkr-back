import db from "../database/db.js";

async function insertPost(url, description, userId) {
  const query = `INSERT INTO posts (url, description , "userId") VALUES ( $1, $2, $3 );`;
  return db.query(query, [url, description, userId]);
}

async function getPosts(userId, url, description) {
  const query = `SELECT * FROM posts ORDER BY id DESC LIMIT 20;`;
  return db.query(query, [userId, url, description]);
}

async function deletePost(id) {
  const query = `DELETE FROM posts WHERE id = $1;`;
  return db.query(query, [id]);
}

async function updatePost(id, description) {
  const query = `UPDATE posts SET "description" = $2 WHERE id = $1;`;
  return db.query(query, [id, description]);
}

async function userRegistered(email) {
  const query = `SELECT * FROM users WHERE email = $1;`;
  const result = await db.query(query, [email]);
  return result.rows[0];
}

const postsRepository = {
  insertPost,
  getPosts, 
  deletePost,
  updatePost
};

export { postsRepository };