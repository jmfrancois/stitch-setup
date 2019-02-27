# Talend stitch setup

Goal setup some tap in one env.

## How to install

You must have python3 with virtualenv on your system
All stitch dependencies are installed using zc.buildout which let your python system clean.

```
    git clone https://github.com/jmfrancois/stitch-setup.git
    cd stictch-setup
    virtualenv .
    source bin/activate
    buildout
```

The first install the build dependencies. The second one install all the project dependencies
