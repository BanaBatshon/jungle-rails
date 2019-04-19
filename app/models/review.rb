class Review < ActiveRecord::Base
  before_save :default_values
  belongs_to :product
  belongs_to :user
  validates :product_id, presence: true
  validates :description, presence: true
  validates :rating, presence: true
  def default_values
    self.createdat ||= "default value"
    self.updatedat ||= "default value"
  end
end
