const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const conn = require('./db/db_connection');

const PORT = process.env.PORT || 8080;

app.use(bodyParser.urlencoded({ extended: true }));
app.set("view engine", "ejs");

// db_awardspace - 3397759_sport

const queryAllVisitors = 'SELECT * FROM спортивный_клуб.посетители';

app.get('/', (req, res) => {
    conn.query(queryAllVisitors, (err, results) => {
        if (err) throw err;
        res.render('index', {data: { results }});
    });
});

app.get('/visitor/:visitorId', (req, res) => {
    conn.query(queryAllVisitors, (err, result, field) => {
        if (err) throw err;        
        res.render('visitor', {data: { visitorId: req.params.visitorId, visitors: result }});
    });
});

app.post('/addVisitor',(req, res) => {
    let data = { name: req.body.name, age: req.body.age, sex: req.body.sex, sportType: req.body.sportType };
    const sql = "INSERT INTO спортивный_клуб.посетители (`ФИО`, `возраст`, `пол`, `вид спорта`) VALUES ('"+ data.name +"', '"+ data.age +"', '"+ data.sex +"', '"+ data.sportType +"')";
    conn.query(sql, data,(err, results) => {
      if (err) throw err;
      res.redirect('/');
    });
});


app.listen(PORT, () => console.log(`Сервер запущен на ${PORT}`));