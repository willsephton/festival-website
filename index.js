const express = require("express");
const mysql = require("mysql");

const db = mysql.createConnection({
	host: "localhost",
	user: "root",
	password: "",
	database: "festival"
});

db.connect(err=>{
	if(err) throw err;
	console.log("MySQL has started!");
});

const app = express();

app.set('view engine', 'ejs');
app.use(express.static("public"));
app.use(express.json());
app.use(express.urlencoded({extended: true}));

app.get("/", (req, res) =>{
	res.render("main", {title: "Home Page"});
});

app.get("/about", (req, res) =>{
	res.render("about", {title: "About Page"});
});



app.get("/stage", (req, res) =>{
	db.query("SELECT * FROM stages", (error, results)=>{
		res.render("stage", {stages: results, title: "Stage List"})
	});
});

app.get("/faq", (req, res) =>{
	res.render("faq", {title: "FAQ Page"});
});

app.get("/game", (req, res) =>{
	res.render("game", {title: "Guess the instrument"});
});

app.get("/contact", (req, res) =>{
	res.render("contact", {title: "Contact Us"});
});

app.post("/contact", (req, res)=>{
	db.query("INSERT INTO contactus(contactName, contactCont, contactDesc) VALUES(?,?,?)", [req.body.contactName, req.body.contactCont, req.body.contactDesc], (error, results)=>{
		res.render("contact2", {err: error, title: "Contact Us"});
	});
});

app.listen(5000, () =>{ console.log("Server started")});

