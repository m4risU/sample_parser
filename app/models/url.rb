class Url < ApplicationRecord

  MissingUri = Class.new(StandardError)

  after_create :process_parser

  def process_parser
    raise MissingUri unless uri
    open(uri, allow_redirections: :safe)
  end
end
