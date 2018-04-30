# 20min NewsReader Exercise

In case you get stuck anywhere, don’t be afraid to ask the coaches! They are here to help and will gladly explain everything to you! Take notes during the exercises. Even if you never look at them again, they will help you memorise things!

## Tasks

The tasks are listed as TODO comments in the source code files.

## Goal

In this excercise you will create a command line RSS news feed reader. Yay!

You are going to implement two "commands":

* `latest`
* `show [id]`

### `latest`

With this command you can "list" an _overview_ of recent news feed entries from 20min.ch .
You will be invoking this like so:

```shell
ruby news_reader.rb latest
```

### `show [id]`

The output of the `latest` command gives you for each news feed entry an unique number, which you can use to display the _full story_ of given entry.
So, if you decide to show the full story of id 13, you can execute this on the command line

```shell
ruby news_reader.rb show 13
```
