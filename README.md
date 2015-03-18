metatool
====

What is it for
----
It is intended to be a client workflow wrapper and toolbox
- helping to maintain good profile standards via chef-solo
- it's not trying to reivent the wheel but facilitate many good wheels while adding the ability to maintain local workflows which can in turn trigger remote workflows.
- mini framework event to help simplify bash scripting with yaml/json configs. (in the end it's really just a command builder/wrapper)

Caveats
----
- Please not this is in it's early stages and started as many ideas do to a set of problems I observe in my workplace or at home.  There are probably better solutions out there but creating somethings keeps me from going insanely mad.  I only hope it helps.
- - personally I found it an interesting challenge to try and make a framework(ishy) for bash

File Structure
---
The core lib section of metatool is written in bash but is structured as well as bash can be I guess.  libs/core should be a set of actions similar to private methods in OOP (but hey it's really just bash) while workflows in a similar vein are structured like public methods but are the stackable linear workflows that you might want.

    bin (metatool scripts)
    lib (supporting libraries for metatool)
     \_ chef (chef solo for managing dependencies)
     \_ metatool (metatool libs)
         \_ modules (modules that make up the metatool tool)
            \_ core (core libraries and predefined actions)
            \_ user (custom or third party modules - distribution to be worked out in the future)
         \_ workflow (new commands for metatool are made here for your local workflows)
            \_ core (workflows essential to using metqtool)
            \_ user (custom workflows that the user creates typically as they related to core/user modules
    tmp (temporary or disposable files isolated to your profile)
    etc (configuration stores for metatool and any other supporting tools it manages)

Compatibility
----

- This has been built and tested on OS X Mavericks and Yosemite.
- Intent is to have this work on most common platforms (Linux,FreeBSD,Solaris) but no testing has been done beyone Mavericks and Yosemite.

Installation
----
Assumes you are using locally installed version of rvm (https://rvm.io/)

1. Download and install chef-dk for your platform
    https://downloads.chef.io/chef-dk/
2. mount your chef-dk installation with RVM (example below is for OS X)
    rvm mount /opt/chefdk/embedded/bin/ruby
3. Clone this repository some place and make sure the bin directory is in your local PATH variable (assuming you fork your own)
    git clone https://github.com/hypertactics/metatool.git
4. Initialize metatool
    metatool init
5. source ~/.metatool

TODO
----
- There is a liberal use of bash eval here... normally eval in is really a no no and should never be used.  Replace as many as possible.  Since this is really a personal workflow system I'm less concerned about it but it lingers in the back of my mind.  
