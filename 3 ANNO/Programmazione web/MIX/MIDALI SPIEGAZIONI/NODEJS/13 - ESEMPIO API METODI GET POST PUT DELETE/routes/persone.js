const express = require('express');
const router = express.Router();    //a fine file lo esportiamo
const {persone} = require("../persone");

//GET:
router.get('/',(req,res)=>{
    res.status(200).json({success:true, data: persone})
})

router.get('/:idParam',(req,res)=>{
    const {idParam} = req.params;
    const persona = persone.find(
        (persona)=>persona.id===idParam
    )
    if(persona){
        res.json({success:true, data: persona})
    }else{
        res.json({success:false, data:{}})
    }
    
})


//POST:
/*se dovessi raccogliere dati da un form dovrei utilizzare il middleware seguente:
app.use(express.urlencoded({extended:false}))
con form method="post" action="url"
*/
router.post('/',(req,res)=>{
    console.log(req.body);
    const persona = req.body;
    persone.push(persona);  //push in copia del file non nel file!!
    res.status(200).json({success:true, data:persone})
})


//PUT:
router.put('/:idParam',(req,res)=>{
    const {idParam} = req.params;
    const persona = req.body;
    persone[Number(idParam) - 1] = persona;
    //per modificare nome: persone[Number(idParam) - 1].nome = persona.nome;
    res.status(200).json({success:true, data:persone})
})


//DELETE:
router.delete('/:idParam',(req,res)=>{
    const {idParam} = req.params;
    const indexPersonaDaEliminare = persone.findIndex((persona)=>persona.id === idParam) 
    persone.splice(indexPersonaDaEliminare,1); //toglie l'elemento che parte da indexPersonaDaEliminare e ne toglie solo 1 (1 indicato in secondo parametro)
    res.status(200).json({status:true, data: persone})
})

module.exports = router;