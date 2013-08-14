# encoding: utf-8
require 'employ_crawler/base'

module EmployCrawler

  # 抓取济南教育局招聘公告
  class CodeMapping

    CODE_MAPPING = {
      jnedu:    { href: 'http://www.jnedu.gov.cn',    title: '济南市教育局' },
      qdedu:    { href: 'http://chushi.qdedu.gov.cn', title: '青岛市教育局' },
      ytedu:    { href: 'http://www.ytedu.cn',        title: '烟台市教育局' },
      zdjw:     { href: 'http://www.zdjw.gov.cn',     title: '张店区教育局' }
    }.freeze

  end
end
