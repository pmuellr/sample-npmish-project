#!/usr/bin/env node

// should print:
// ----------
// in a/c
// in b/c
// ----------

a = require('a')
b = require('b')

a.run()
b.run()