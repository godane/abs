Archlinux ABS Git
=================
This is a unofficial mirror of Archlinux ABS.

Why
---------------
	I maintain many of my own packages and tracking changes using just abs was not enough.

How it works
---------------
	Originally I used git svn fetch and pulled changes into the svn branch. However in order to have svn look like 
what you would expect from ABS I had to do to much merging. So I've switched to using a slightly hacked abs script
to pull in changes into the git tree which I then commit. And summarize with a commit message.

Issues
--------------
If you have any issues . Please post an issue @ [Issues](http://github.com/str1ngs/abs/issues)

	There are no Archlinux commit messages. It might be for the best since majority of Archlinux commits are stuff being 
moved between the different repos see. [arch-commits](http://mailman.archlinux.org/pipermail/arch-commits/2010-July/thread.html)

	The time it takes from svn to abs rync seems to be quite a long time in some cases. There are many times when the binary 
will reach the repo's and rsync is not updated for up to 8 hours later. I'll look it this more, maybe there is a better mirror to use?

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
