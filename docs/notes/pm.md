# Package Manager

I was made aware of a livestream *tsoding* did on the Ada language, which highlighted what he and I suppose other programmers expect these days. He was surprised that ```gprbuild``` could not generate GPR files for him and that he had to write his own. I think having a package manager which can generate projects from templates would be a useful feature.

A package manager needs to be able to do the following things:

* Install and uninstall packages from a repository.
  * This should only be a repository of recipes, the sources should be grabbed from online repositories, i.e. Github.
* Create new projects.
* Build projects.

## Package locations

I'm not a fan of the idea that each project you write should have a directory of modules downloaded inside, that just wastes disk space. I much prefer a common directory in the user's home directory and have it be hidden on *nix operating systems. So there would be ```$HOME/.orenda``` and then a system wide directory ```/usr/lib{64}/orenda```. There's nothing stopping there being multiple revisions of a package in there, for other packages which require a specific version to be pinned, i.e. ```$ORENDA_LIB/$PKG_NAME/$PKG/VERSION```, where ```ORENDA_LIB``` is one of the above locations.

## Projects

This tool should interact with the project manager, storing a list of locations of the various packages used in some way? Maybe include the version in the import statement like TypeScript (I think) does?
