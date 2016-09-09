require 'thor'

module Krewl
  class Agent < Thor

    desc 'fetch KEYWORD', 'Fetching products based on KEYWORD'
    long_desc <<-FETCH
      Fetching product based on provided KEYWORD
    FETCH
    option :site, aliases: '-s'
    def fetch(keyword)
      site = options[:site] || :tp
      puts "Crawling for '#{keyword}' from '#{site.upcase}'"
    end

  end
end
