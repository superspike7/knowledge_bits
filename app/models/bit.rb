class Bit < ApplicationRecord
  validates_presence_of :title, :body
  validates :body, length: { maximum: 250,
                             too_long: '%{count} characters is the maximum allowed' }

  before_create do
    self.author = "Anonymous" if author.blank?
  end
end
