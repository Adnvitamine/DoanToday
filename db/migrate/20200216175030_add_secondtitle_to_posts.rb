class AddSecondtitleToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :secondtitle, :string
  end
end
