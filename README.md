Archlinux ABS Git
=================

This is a unofficial mirror of the Archlinux svn server.


Why
---------------

I maintain alot of my own packages and tracking changes using just abs was not enough.

How it works
---------------

Once a day I run git svn fetch and pull any changes into 
the svn branch.The svn branch contains the exact untouched 
archlinux svn it also contains the same svn commit logs. 

I then merge the svn branch into master. Master has been layed out to represent
abs. The layout only needed to be done once and merging for the most part 
takes care of the rest. I also have another local git svn of community that I git svn fetch
with and then merge into this master branch.

Issues
--------------

If you have any issues . Please post an issue @ [Issues](http://github.com/str1ngs/abs/issues)

The master branch is now pretty stable. However if you 
are in doubt you can use the svn branch it remains untouched. 

There are some problems when new files that our not already in this repo are added in svn ie. a new patch or install.
However its pretty easy to resolve the conflicts in git.

The mirror does not contain the full archlinux svn history its only contains
from revision 84267 on. I do not plan on pulling that history.

The svn commits are kinda cryptic. I need to dig deeper and find a better way to present them.

How to Contribute and use it
--------------

Contributing is very easy start by _watching_ the project on github. From there on you can
pull from this repo.

All you have to do is clone git://github.com/str1ngs/abs.git . And where you would normally
use abs to sync. You just cd into the abs directory to pull. I also suggest you keep your
custom changes on another branch then git merge the master branch when you want to update
your packages.  You could also pull origin master into your custom branch but you might 
have to use git pull --rebase. I have not tested it yet.

I've added a wiki page on how to work with single or groups of packages it can be found
here [single package workflow](http://wiki.github.com/str1ngs/abs/working-with-single-packages)

Make sure you add content to the [wiki](http://wiki.github.com/str1ngs/abs/) or fix any errors you see.

Contact
--------------

I'm generally on freenode as str1ngs, or you can email me schizoid29 at gmail.com
