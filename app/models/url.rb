class Url < ApplicationRecord

  after_create :process_parser

  def process_parser
    open(uri, allow_redirect: :safe)
  end
end
