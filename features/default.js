const { request} = require('pactum');
const { Before } = require('@cucumber/cucumber');

Before(() => {
    request.setDefaultTimeout(100000);
    request.setBaseUrl('http://localhost:5239/api/lead');
    
});