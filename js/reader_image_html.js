#!/usr/bin/phantomjs

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
    var image =  page.evaluate( function () {
        return document.querySelector('img#comic_page').outerHTML;
    });
    console.log(image)
    phantom.exit();
});
