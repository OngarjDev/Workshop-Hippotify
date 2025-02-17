import express from "express";
import connection from "./config/database.js";

const app = express();
const port = 3012;

app.use(express.json());

connection.connect((err)=> {
    if(err){
        console.log(err);
    }else{
        console.log("Database is connected");
    }
})

app.listen(port,() => {
    console.log(`App listenting on port ${port}`);
})
