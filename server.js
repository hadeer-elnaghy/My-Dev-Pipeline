// Import required modules
const express = require('express');
const fs = require('fs');
const app = express();

// Read the active configuration file
const rawData = fs.readFileSync('config.json');
const config = JSON.parse(rawData);

// Setup a simple web route
app.get('/', (req, res) => {
    res.send(`<h1>Welcome to the ${config.environment} Environment!</h1>
              <p>Database connected to: ${config.db_url}</p>`);
});

// Start the server
const port = config.port || 3000;
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});
