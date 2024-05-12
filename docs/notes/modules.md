# Modules

## Naming / file structure

Naming modules on disk has always been a problem. The first Ada specification talks of a program library, which a number of compilers implemented as a database rather than as a static lib created by the OS' librarian program, ar on *nix.

GNAT uses 8.3 names for compatability with DOS and, I think, VMS; these are compacted names, gnatkr can show you what a package is called in the Ada RTS on disk.

Java has a huge deep directory of files which can be annoying at times.

I found an Oberon compiler, OO2C, which uses a form of the Java way without being too annoying. The root package is names ```Root.mod``` and then if there are submodules, a directory is used with the same name, e.g. ```Root/Blah.mod```. I have considered this before for an Ada compiler, but for some reason it never quite felt right for Ada, don't know why. But for Orenda, I think it could.

An alternative could use the following structure:

* Root/ (Package)
  * Root.oint/osig (Interface/Signature)
  * Root.oimp (Implementation)
  * Sub/ (Sub-Package)
    * Sub.oint/osig (Interface/Signature)
    * Sub.oimp (Implementation)

## Specifications

I asked a question about what features a new language should have re provability and correctness to Rod Chapman (SPARKNaCl) at FOSDEM 2022 and he stated that having separate specifications and bodies are important such that aspects can be specified in the specification clearing up the implementation (body). Definitely worth considering.

## Fine grained modularity

According to Ludovic Brenta, GNAT implements separates more like #includes in C, but they could be implemented as a separately compiled sub-module. He says they're not used much anymore. I consider them important for fine grained modularity when doing cross-platform, portable, development when a function body will differ depending on OS or architecture.

## Initialisation

If there is no ```begin`` keyword, how do you initialise a module?

```orenda
module a is
    -- Stuff
    init
        --  Initialise things here?
    end
end a
```