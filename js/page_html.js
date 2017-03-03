#!/bin/usr/phantomjs

var args = require('system').args;
var page = require('webpage').create();

phantom.addCookie({
    'name': 'member_id',
    'value': args[1],
    'domain': '.bato.to'
});
phantom.addCookie({
    'name': 'pass_hash',
    'value': args[2],
    'domain': '.bato.to'
});

page.open(args[3], function (status) {
    console.log(page.content);
    phantom.exit();
});
