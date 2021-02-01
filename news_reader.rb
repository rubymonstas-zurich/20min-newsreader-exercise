require 'rss'
require './news'

class NewsReader
  NEWS_URL = 'https://partner-feeds.beta.20min.ch/rss/20minuten'

  def print_latest
    latest.each do |item|
      print_list_item(item)
    end
  end

  def print_list_item(item)
    # TODO: Print the item to the console in the following format: id - publication date - title
  end

  def latest
    count = 0
    rss_entries.map do |item|
      count += 1
      News.new(count, item)
    end
  end

  def rss_entries
    # TODO: 1. Initialize the RSS parser with the NEWS_URL
    # TODO: 2. Return the items from the RSS parser
  end

  def print(id)
    news_item = find(id)
    if news_item
      puts news_item.title
      puts news_item.publication_date
      puts news_item.description
      puts news_item.link
    else
      puts "News with id '#{id}' not found..."
    end
  end

  def find(id)
    # TODO: Find the news with the given ID
  end
end

def print_help
  puts 'help: Print this help'
  puts 'latest: Print the latest news'
  puts 'show ID: Print the details for news with the given ID'
end

news_reader = NewsReader.new

command = ARGV[0]
case command
when 'help'
  print_help
when 'latest'
  news_reader.print_latest
when 'show'
  id = ARGV[1].to_i
  news_reader.print(id)
else
  print_help
end
