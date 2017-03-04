use mangos to download all english language pages for any given series from batoto.  Try not to have to many instances running at the same time.

requires:
  * phantomjs
  * python2 ~~with BeautifulSoup4~~
  * perl
  * zsh
  * perl
  * grep
  * pcregrep
  * wget

![Mango Image](https://raw.githubusercontent.com/jarano93/green-grocer/master/mangos.png)

the default config file is ~/.config/mangos.config, can change the location in mangos script.
Before running mangos for the first time  you _need_ to enter all the values listend in the below example in your config file.

### Example ~/.config/mangos.config
```config
output_dir=/home/username/fresh_mangos
sleep=number_of_seconds_you_want_to_sleep
member_id=your_member_id_cookie_value
pass_hash=your_pass_hash_cookie_value
```
pass a single or multiple urls of series from bato.to as a argument to mangos to download all english works in the series.

###### What's Next?

Maybe in the future have the choice to filter by group/chapters but I'm not to hot on this, especially filtering by chapter
