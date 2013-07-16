# encoding: utf-8
require 'employ_crawler/base'

module EmployCrawler

  # 抓取济南教育局招聘公告
  class JneduCrawler < EmployCrawler::Base

    JNEDU_URL = 'http://www.jnedu.gov.cn'

    CRAWLER_URL = "#{JNEDU_URL}/tabid/371/MoreModuleID/441/MoreTabID/38/Default.aspx"

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
      raw_content.css('.C_InfoList').inject([]) do |result, info_list|
        info_list.css('li').each do |post|
          link = post.at_css('a')
          next unless /招聘/.match(link.text)

          result << {
            title: link.text,
            href:  "#{JNEDU_URL}#{link['href']}",
            date:  post.at_css('.date').text
          }
        end

        result
      end
    end
  end
end
