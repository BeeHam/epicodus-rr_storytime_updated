class Story < ActiveRecord::Base
  has_many :contents
  validates :title, presence: true
  validates :image, :format => URI::regexp(%w(http https))

  default_scope { order(:created_at) }
end
