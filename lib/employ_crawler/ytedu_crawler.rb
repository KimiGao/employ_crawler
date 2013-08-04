# encoding: utf-8
require 'employ_crawler/base'

module EmployCrawler

  # 抓取烟台教育局招聘公告
  class YteduCrawler < EmployCrawler::Base

    YTEDU_SITE = 'http://www.ytedu.cn'

    YTEDU_URL = "#{YTEDU_SITE}/cnet/dynamic/presentation/net_1/"

    CRAWLER_URL = "#{YTEDU_URL}classitem.do?unitid=1&clazz=123&branch="

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
      raw_content.css('.td_list_clazz_1').inject([]) do |result, post|
        if (link = post.at_css('a')) && /招聘/.match(link.text)
          result << {
            title: link.text,
            href:  "#{YTEDU_URL}#{link['href']}",
            date:  Date.parse(post.at_css('font').text)
          }
        end
        result
      end
    end
  end
end
