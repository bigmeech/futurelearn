#!/usr/bin/env node

'use strict';

const fs = require('fs');
const path = require('path');
const options = { recursive: true }
const exec = require('child_process').exec;
const fileToWatch = process.argv[2];

const onFileChange = (event) => {
    exec(`erl -compile ${fileToWatch}`, (err, stdout, stderr) => {
        if (err) throw err;
        console.log(`Detected change, Recompiling ${fileToWatch}...`);
    })
}
fs.watch(path.resolve(__dirname, './'), options, onFileChange)
console.log(`Watching ${fileToWatch} for changes :)...`);
