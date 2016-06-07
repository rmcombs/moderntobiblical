class CreateModernQuotes < ActiveRecord::Migration
  def change
    create_table :modern_quotes do |t|

      t.string :reference

      t.timestamps null: false
    end
  end
end
