sample-npmish-project
=====================

This project is a simple example of an npm-styled module layout for usage
in node.  I'm exploring how such a beast could be handled in an AMD-compatible
module system.

Here are the interesting bits:

* the main program - `sample.js`, loads two modules, `a`, and `b`, and then calls
the `run()` functions they export

* both `a` and `b` do a `require('c')`, and then run `c`'s `run()` function,
but the `c` modules they resolve to are
different - stored in the `node_modules` directory under `a` and `b`.

* `a`'s `c` module is resolved through a `package.json` file

* `b`'s `c` module is resolved via a `index.js` file

Both of the `c` modules print something different when run.  The output from
invoking

    node sample

should be

    in a/c
    in b/c

