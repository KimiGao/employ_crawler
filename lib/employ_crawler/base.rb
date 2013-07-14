# encoding: utf-8
require 'nokogiri'
require 'open-uri'

module EmployCrawler

  class Base
    attr_accessor :raw_content, :crawler_url

    def initialize(crawler_url)
      @crawler_url = crawler_url
    end

    def crawl
      @raw_content = Nokogiri::HTML(open(crawler_url))
    end
  end
end

