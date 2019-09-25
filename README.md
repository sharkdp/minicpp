# minicpp

A REPL-style "development environment" for small C++ snippets.
For cases where an online compiler is out of the question.

![minicpp](https://i.imgur.com/nyUedKx.png)

(the example uses the [`dbg(…)`](https://github.com/sharkdp/dbg-macro/) macro
which is included in `minicpp`)

## How to

1. Reset the environment (overwrites previous changes to `main.cpp`):
``` bash
./reset
```

2. Start the watcher that recompiles and runs the snippet:
``` bash
./run
```

3. Edit `main.cpp`. Save to file to trigger a new compile-and-run cycle.

## Install

Make sure that `inotifywait` is installed. It should be available
for most Linux distributions (the package is typically called `inotify-tools`).

Apart from that, you just need to clone the repository (recursively):

``` bash
git clone --recursive https://github.com/sharkdp/minicpp
```
