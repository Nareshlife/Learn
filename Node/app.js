const http = require('http');
const fs = require('fs');

  
const server = http.createServer ((req,res)=>{
    const url = req.url;
    const method = req.method;     
    if (url === '/'){
        res.setHeader('Content-Type','text/html');
        res.write('<html><body><form action = "/message" method="POST"><input type="text" ><button type="submit">Send</button></form></body></html>');
        return res.end();    
    
    if(url==='/message' && method ==='POST'){
        const body=[];
        req.on('data',(chunk)=>{
            console.log(chunk);
           body.push(chunk);
            
        });

        res.on('end',()=>{
                const parsedBody = Buffer.concat(body).toString();
                console.log(parsedBody);
        });
        fs.writeFileSync('message.txt','DUMMY');
        res.statusCode =302;
        res.setHeader('Location','/');
        return res.end();

    }
}
    //console.log (req.url, req.headers);
    res.setHeader('Content-Type','text/html');
    res.write('<html><body>Hello Nodemon JS</body></html>')
    res.end();
    //process.exit();
});

server.listen(3000);

//
// function rqListener(req, res){
// console.log("req ")
// }

// http.createServer(rqListener);

