import db from "../database/db.js";

async function signUpAuth(name, email, passwordHash, photo) {
  const query = `INSERT INTO users (username, email , password, photo) VALUES ( $1, $2, $3, $4 );`;
  return db.query(query, [name, email, passwordHash, photo]);
}

async function signInAuth(id, token) {
const query = `INSERT INTO sessions ("userId", token) VALUES ($1, $2);`;
  return db.query(query, [id, token]);
}

async function sessionAuth(userId, token) {
  const query = `SELECT * FROM sessions WHERE "userId" = $1 AND token = $2;`;
  return db.query(query, [userId, token]);
}

async function userRegistered(email) {
  const query = `SELECT * FROM users WHERE email = $1;`;
  const result = await db.query(query, [email]);
  return result.rows[0];
}

const authRepository = {
  signUpAuth,
  signInAuth,
  sessionAuth,
  userRegistered  
};

export { authRepository };