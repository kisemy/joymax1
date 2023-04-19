class CreateAccountCharts < ActiveRecord::Migration[6.1]
  def change
    create_table :account_charts do |t|
      t.text :account_name
      t.text :ctype
      t.text :category
      t.text :class
      t.decimal :balance

      t.timestamps
    end
  end
end
