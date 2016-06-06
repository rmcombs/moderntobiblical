class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :user
      t.text :quote
      t.text :note
      t.string :modern_ref
      t.string :biblical_ref

      t.timestamps null: false
    end
  end
end
