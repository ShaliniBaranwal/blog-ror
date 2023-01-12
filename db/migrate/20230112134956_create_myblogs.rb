class CreateMyblogs < ActiveRecord::Migration[7.0]
  def change
    create_table :myblogs do |t|
      t.string :blogtitle
      t.string :img_url
      t.string :content
      t.timestamps
    end
  end
end
