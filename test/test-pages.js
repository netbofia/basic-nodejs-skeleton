var expect  = require('chai').expect;
var request = require('request');

it('Main page content', function(done) {
    request('http://localhost:3000' , function(error, response, body) {
        console.log(body)            
        expect(body).to.equal('<!DOCTYPE html><html><head><title>Express</title><link rel="stylesheet" href="/stylesheets/style.css"></head><body><h1>Express</h1><p>Welcome to Express</p><script defer src="/webpack/webpack.js"></script><script defer src="/webpack/cookieconsent.js"></script><script defer src="/webpack/vue.js"></script></body></html>');
        done();
    });
});
