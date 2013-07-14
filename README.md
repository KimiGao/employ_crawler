# EmployCrawler

抓取指定网站公布的招聘信息、主要是各省/市/区教育局发布的招聘信息。

## Installation

Add this line to your application's Gemfile:

    gem 'employ_crawler'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install employ_crawler

## Usage

    jnedu = EmployCrawler::JneduCrawler.new
    jnedu.crawl
    jnedu.content

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
