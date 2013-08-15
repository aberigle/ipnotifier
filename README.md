ipnotifier
==========

ipnotifier is a simple bash script that will check if your public ip has changed since last check, and send an email to the `_EMAILRECIPENT_` if it has.

###How it works

In order to work, ipnotifier uses an util called `mailx` [Documentation here](http://heirloom.sourceforge.net/mailx.html)

You can install it with `sudo apt-get install mailutils heirloom-mailx`

`mailx` can be configured with a file located in `~/.mailrc`. An example configuration file for gmail is provided in the source.

When you have set up your `mailx` and are able to send emails, you can register a cron task to execute ipnotifier at some time interval. 
