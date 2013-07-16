# encoding: utf-8
require 'employ_crawler/base'

module EmployCrawler

  # 抓取青岛教育局招聘公告
  class QdeduCrawler < EmployCrawler::Base

    QDEDU_SITE = 'http://chushi.qdedu.gov.cn/'

    QDEDU_URL = "#{QDEDU_SITE}/renshi/renshi/Article/"

    CRAWLER_URL = "#{QDEDU_URL}ShowClass2.asp?ClassID=31"

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
      raw_content.css('.col2rightlist table').css('tr').inject([]) do |result, post|

        if (link = post.at_css('a')) && /招聘/.match(link.text)
          result << {
            title: link.text,
            href:  "#{QDEDU_URL}#{link['href']}",
            date:  post.at_css('span').text
          }
        end

        result
      end
    end
  end
end
