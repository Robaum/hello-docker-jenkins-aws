var request = require('supertest');
var app = require('../app.js');

describe('GET /', function() {
  it('respond with hello XYZ', function(done) {
    request(app).get('/').expect('hello Jimmy', done);
  });
});