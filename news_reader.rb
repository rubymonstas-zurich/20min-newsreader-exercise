require 'rss'
require './news'

class NewsReader
  NEWS_URL = 'http://www.20min.ch/rss/rss.tmpl?type=channel&get=4'

  def print_latest
    latest.each do |item|
      print_list_item(item)
    end
  end

  def print_list_item(item)
    puts item
  end

  def latest
    count = 0
    rss_entries.map do |item|
      count += 1
      News.new(count, item)
    end
  end

  def rss_entries
    rss = RSS::Parser.parse(NEWS_URL, false)
    rss.items
  end

  def print(id)
    news_item = find(id)
    if news_item
      news_item.print
    else
      puts "News with id '#{id}' not found..."
    end
  end

  def find(id)
    latest.find { |news| news.id == id }
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
