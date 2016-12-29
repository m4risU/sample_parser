class Url < ApplicationRecord

  MissingUri = Class.new(StandardError)

  after_create :process_parser
  attr_accessor :reviews

  def process_parser
    raise MissingUri unless uri

    walmart_service = WalmartService.new(uri)

    self.price = walmart_service.price
    self.title = walmart_service.title
    self.reviews = walmart_service.reviews
    self.save
  end

  private

  class WalmartService
    def initialize(uri)
      @doc = Nokogiri::HTML(open(uri, allow_redirections: :safe).read)
    end

    def price
      price = @doc.content.scan /\"price\":\"([\d.]*)\",\"sellerName\":\"Walmart.com\"/i
      price.flatten[0].to_f
    end

    def title
      @doc.css('title').text
    end

    def reviews

    end
  end
end
