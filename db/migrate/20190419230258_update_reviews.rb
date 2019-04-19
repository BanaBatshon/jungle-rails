class UpdateReviews < ActiveRecord::Migration
  def change
    change_table :reviews do |t|
      t.remove :ceatedat
      t.remove :updatedat
    end
  end
end
