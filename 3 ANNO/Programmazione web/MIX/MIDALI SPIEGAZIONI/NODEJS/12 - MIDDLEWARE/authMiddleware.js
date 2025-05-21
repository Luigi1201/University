const auth = (req, res, next)=>{
    console.log("Accesso effettuato");
    next();
    //per mandare risposta da qui e non andare a res successiva faccio res.send("risposta dal middleware")
}

module.exports = auth;