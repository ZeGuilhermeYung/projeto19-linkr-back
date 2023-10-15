import db from "../database/db.js";

async function insertPost(url, description, userId) {
  const query = `INSERT INTO posts (url, description , "userId") VALUES ( $1, $2, $3 );`;
  return db.query(query, [url, description, userId]);
}

async function getPosts(userId, url, description) {
  const query = `SELECT * FROM posts ORDER BY id DESC LIMIT 20;`;
  return db.query(query, [userId, url, description]);
}

async function userRegistered(email) {
  const query = `SELECT * FROM users WHERE email = $1;`;
  const result = await db.query(query, [email]);
  return result.rows[0];
}

const postsRepository = {
  insertPost,
  getPosts, 
};

export { postsRepository };