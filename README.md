use mangos to download all english language pages for any given series from batoto.  Try not to have to many instances running at the same time.

requires:
  * phantomjs
  * python2 with BeautifulSoup4
  * perl
  * zsh
  * perl

the default config file is ~/.config/mangos.config, can change the location in mangos script

![Mango Image](https://raw.githubusercontent.com/jarano93/green-grocer/master/mangos.png)

### Example ~/.config/mangos.config
```config
sleep=number_of_seconds_you_want_to_sleep
member_id=your_member_id_cookie_value
pass_hash=your_pass_hash_cookie_value
```
the default output file is ~/fresh-mangos/, can change the location in the mangos script

pass url of series as a argument to mangos to download all english works in the series

###### What's Next?

The next major build of mangos should be interruptible, so you can cancel downloading a series then resume later without having to restart the entire process.

Maybe be able to pass multiple series url's as args so mangos downloads them all sequentially.

Maybe in the future have the choice to filter by group/chapters but I'm not to hot on this, especially filtering by chapter
