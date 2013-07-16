require 'spec_helper'

describe EmployCrawler do
  describe 'JneduCrawler' do
    before(:all) do
      @jnedu = EmployCrawler::JneduCrawler.new
      @jnedu.crawl
    end

    it "raw_content should be a Nokogiri::HTML::Document object" do
      @jnedu.raw_content.class.should == Nokogiri::HTML::Document
    end

    it "crawler's content should be a array" do
      p '--------------------------------------'
      p @jnedu.content
      p '--------------------------------------'
      @jnedu.content.class.should == Array
    end
  end

  describe 'ZdjwCrawler' do
    before(:all) do
      @zdjw = EmployCrawler::ZdjwCrawler.new
      @zdjw.crawl
    end

    it "raw_content should be a Nokogiri::HTML::Document object" do
      @zdjw.raw_content.class.should == Nokogiri::HTML::Document
    end

    it "crawler's content should be a array" do
      p '--------------------------------------'
      p @zdjw.content
      p '--------------------------------------'
      @zdjw.content.class.should == Array
    end
  end

  describe 'YteduCrawler' do
    before(:all) do
      @ytedu = EmployCrawler::YteduCrawler.new
      @ytedu.crawl
    end

    it "raw_content should be a Nokogiri::HTML::Document object" do
      @ytedu.raw_content.class.should == Nokogiri::HTML::Document
    end

    it "crawler's content should be a array" do
      p '--------------------------------------'
      p @ytedu.content
      p '--------------------------------------'
      @ytedu.content.class.should == Array
    end
  end

  describe 'QdeduCrawler' do
    before(:all) do
      @qdedu = EmployCrawler::QdeduCrawler.new
      @qdedu.crawl
    end

    it "raw_content should be a Nokogiri::HTML::Document object" do
      @qdedu.raw_content.class.should == Nokogiri::HTML::Document
    end

    it "crawler's content should be a array" do
      p '--------------------------------------'
      p @qdedu.content
      p '--------------------------------------'
      @qdedu.content.class.should == Array
    end
  end
end
