const middlewareProva = (req, res, next)=>{
    const {method, url} = req;
    const time = new Date().getMinutes();
    console.log(method, url, time);
    next(); //per passare da middleware a res ("per andare avanti"), altrimenti esecuzione rimane bloccata nel middleware
    //per mandare risposta da qui e non andare a res successiva faccio res.send("risposta dal middleware")
}

module.exports = middlewareProva;