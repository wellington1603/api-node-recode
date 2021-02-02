const express = require('express');
var app = express();
const connect = require("./db/connect")
const bodyParser = require("body-parser")
app.use(bodyParser.urlencoded({extend:true}))
app.use(bodyParser.json())

const cors = require('cors')

app.get("/", cors(), (req, res, next)=>{
 
    connect.query("select * from produto", (error, result) => {
        if(!error){
            console.log(result);
            res.json(result)
        }    
    })   
})

app.post('/postagem', (req, res) =>{
    let dados = []

    dados.push({
        nome: req.body.nome,
        msg: req.body.msg
    })
    
    connect.query("INSERT INTO comentarios SET ?", dados,()=>{
        dados=[]
        res.redirect('http://localhost:3000/contato')
    });
})

app.listen(2000, () =>{
    console.log('O servidor está ativo!')
})