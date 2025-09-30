var express = require('express');
 
var app = express();//Respond with "hello world" for requests that hit our root "/"
app.get('/', function (req, res) {
 res.send('changed not ');
});//listen to port 3000 by default
app.listen(3000, '0.0.0.0', function ()  {
  console.log('Server running on port 3000');
});
module.exports = app;
