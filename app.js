const express = require('express');
const mongoose = require('mongoose');

const app = express();
const port = 3000; // Set your desired port number


mongoose.connect('mongodb://localhost:27017/mydatabase', {
  useNewUrlParser: true,
  useUnifiedTopology: true,
})
  .then(() => {
    console.log('Connected to MongoDB');
  })
  .catch((error) => {
    console.error('Failed to connect to MongoDB:', error);
  });


  // Example route
app.get('/', (req, res) => {
  res.send('Hello World!');
});

// Additional routes and middleware can be defined here


app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
