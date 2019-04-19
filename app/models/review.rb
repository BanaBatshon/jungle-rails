class Review < ActiveRecord::Base
  before_save :default_values
  def default_values
    self.createdat ||= "default value"
    self.updatedat ||= "default value"
  end
end
