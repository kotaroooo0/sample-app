class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :from_name
      t.string :to_name
      t.text :content
      t.string :picture
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
