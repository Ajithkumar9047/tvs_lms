const { request} = require('pactum');
const { Before } = require('@cucumber/cucumber');

Before(() => {
    request.setDefaultTimeout(100000);
    request.setBaseUrl('http://localhost:17055/api');
    
});