const express = require("express");
const path = require("path");
const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({extended: true}));
app.use(express.json());

app.use(express.static("public/"));

app.get("/ping", (req, res) => {
    console.info(`${req.method} request received, responding with pong.html`);
    res.sendFile(path.join(__dirname, "public/pong.html"));
});

app.get("/version", (req, res) => {
    console.info(`${req.method} request received, responding with version.html`);
    res.sendFile(path.join(__dirname, "public/version.html"));
});

app.get("/:num", (req, res) => {
    result = Number(req.params.num)
    if (isNaN(result)) {
        res.sendFile(path.join(__dirname, "public/index.html"));
    }
    else {
        console.info(`${req.method} request received, responding with roman.html with param ${req.params.num}`);
        res.redirect(`/roman.html?num=${req.params.num}`)
    }
});

//Listens on PORT, which is handled by the above
app.listen(PORT, () => {
    console.log(`Listening at ${PORT}`);
});
