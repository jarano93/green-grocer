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
    page.evaluateJavaScript("$$('.chapter_row').invoke('show');$$('.chapter_row_expand').invoke('hide');");
    var rows = page.evaluate( function() {
        return [].map.call(document.querySelectorAll('tr.lang_English'), function(row) {
            return row.innerHTML;
        });
    });
    console.log(rows.join('\n'));
    phantom.exit();
});
