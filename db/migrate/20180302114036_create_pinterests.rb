class CreatePinterests < ActiveRecord::Migration[5.1]
  def change
    create_table :pinterests do |t|
      t.string :title
      t.attachment :image
      t.string :description

      t.timestamps
    end
  end
end
