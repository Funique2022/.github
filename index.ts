import exp from 'express'
import axios from 'axios'

const port = process.env.port || 80;
const backend_url = process.env.backend || "http://127.0.0.1:15755";
var config:any | undefined = undefined
const default_data = {
    
}

const app = exp();

app.use(exp.static('/static'));

app.listen(port, () => {
    console.log(`Start listening to port: ${port}`)
})