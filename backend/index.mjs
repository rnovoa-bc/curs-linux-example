import express from "express";
import mariadb from "mariadb";
import cors from "cors";

const app = express();
app.use(cors());

const pool = mariadb.createPool( {
  host: "localhost",
  user: "joker",
  password: "secure_password",
  database: "jokes",
  connectionLimit: 5
});

app.get("/api", (req, res) => {
  pool.getConnection()
    .then( conn => {
      conn.query("select * from jokes")
        .then( rows => res.json(rows))
  });
});

app.get("/api/total", (req, res) => {
  pool.getConnection()
    .then( conn => {
      conn.query("select count(*) as total from jokes")
        .then( rows => {
          const row = rows[0];
          row.total = parseInt(row.total);
          res.json(row);
        })
  });
});

app.get("/api/:id", (req, res) => {
  pool.getConnection()
    .then( conn => {
      conn.query(`select * from jokes where id=${req.params.id}`)
        .then( rows => res.json(rows[0]))
  });
});


app.listen(3000, () => {
  console.log();
});