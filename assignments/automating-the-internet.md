---
layout: default
title: Automating the Internet
---

# Automating the Internet

There is a lot of information in our lives. Some of it comes in physical forms, like the mail in the CPO, and some is virtual. Actually, a *lot* of it is virtual. Email, SMS, news websites... it goes on and on.

If This Then That provides a way to help tame some of that---or, at least, control how we process and use that information. In this course, I would like to be able to use the course Twitter feed ([@craftoe](http://twitter.com/craftoe/)) to make announcements, but I do not want to require you to use Twitter to "follow" the account. You can choose how you want to keep track of this course.

## Create an IFTTT Account

You should go to [http://ifttt.com/](http://ifttt.com/) and create an account. Use your Berea email address, or whatever address you might want to receive email at. (Do **not** use an account you rarely read. Hence, your Berea address is probably a good idea.)

## Create a New Recipe

In particular, we will create a Recipe that follows an RSS Feed.

<div align="center">
	<img src="{{site.url}}/images/icons/rss-icon.jpg" />
</div>

That's the RSS icon. "RSS" stands for "Really Simple Syndication," where [syndication](http://en.wikipedia.org/wiki/Web_syndication) means *making material available to many websites*.

The URL you need for this feed is the following:

<div align="center">
<pre>http://api.twitter.com/1/statuses/user_timeline.rss?screen_name=craftoe</pre>
</div>

(You could use this in other recipes to get information about other Twitter users. Just change the "craftoe" part to the other person's Twitter username.)

## Filter The Content

You can choose to receive everything, or you can choose to filter the feed. I will always put the text

<div align="center">
	<pre>#ann</pre>
</div> 

in course announcements. This is short for "announcement." So, you could restrict the messages you receive to only course announcements. This is just fine.

## Choose a Destination

If you have free text messages, and like getting announcements that way, you could have the announcements sent to your phone as an SMS. Or, you could choose to receive an email. In fact, you could do many things:

1. You could receive a text message.
1. You could receive an email.
1. You could have a message saved in your Dropbox.
1. You could receive a **phone call**.

The last one isn't very practical in this case, but it is a complete riot. I love it... because it is silly, not because it is useful (for this particular purpose).

## Save It!

Once you are done, you give the Recipe a name, and then it will automatically run every 15 minutes, 24/7. You can later come back and change the Recipe, turn it off, delete it... whatever you want. But, for now, you will receive updates about the class in the manner that you choose.


