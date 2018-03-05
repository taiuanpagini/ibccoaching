class CreatePinterests < ActiveRecord::Migration[5.1]
  def change
    create_table :pinterests do |t|
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
