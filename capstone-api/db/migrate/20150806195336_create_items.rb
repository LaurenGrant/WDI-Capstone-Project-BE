#
class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :description, limit: 120
      t.integer :zipcode, limit: 5
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end
