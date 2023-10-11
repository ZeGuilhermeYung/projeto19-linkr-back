import db from "../database/db.js";

async function registerUser (username, email, password, photo) {
  const defaultUserImage = "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/768px-User-avatar.svg.png";
  try {
      const user = await db.query(
        `INSERT INTO users ("username", "email" , "password", "photo") VALUES ( $1, $2, $3, $4 )`,
        [username, email, password, photo ? photo : defaultUserImage]
      );
      return user;
  } catch (error) {
      return error;
  };
};

async function validateEmail (email) {
    try {
        const userEmail = await db.query(
          `SELECT * FROM users WHERE "email"=$1`,
          [email]
        );
        return userEmail.rowCount > 0;
    } catch (error) {
        return null;
    };
};

async function validateUserRegister (email, password) {
    try {
        const userInfo = await db.query(
          `SELECT * FROM users WHERE "email"=$1`,
          [email]
        );
        if (userInfo.rowCount == 0 || userInfo.rows[0].password !== password) return false;
        return true;
    } catch (error) {
        return false;
    };
};

export { registerUser, validateEmail, validateUserRegister };