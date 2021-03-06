# encoding: utf-8
require 'employ_crawler/base'

module EmployCrawler

  # 抓取张店教育局招聘公告
  class ZdjwCrawler < EmployCrawler::Base

    ZDJW_URL = 'http://www.zdjw.gov.cn'

    CRAWLER_URL = "#{ZDJW_URL}/Category_1046/Index.aspx"

    def initialize
      super(CRAWLER_URL)
    end

    # return:
    # [
    #   {
    #     title: 'XX学校招聘',
    #     href:  'http://www.kimigao.me',
    #     date:  '2013-07-12'
    #   },
    #   ......
    # ]
    #
    def content
      raw_content.css('.listLi').inject([]) do |result, info_list|
        info_list.css('li').each do |post|
          link = post.at_css('a')

          next unless /招聘/.match(link.text)

          result << {
            title: link.text,
            href:  "#{ZDJW_URL}#{link['href']}",
            date:  Date.parse(post.at_css('.datetime').text)
          }
        end

        result
      end
    end
  end
end
