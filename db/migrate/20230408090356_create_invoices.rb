class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.text :customer_no
      t.text :custoner_name
      t.text :contactno
      t.text :contact_name
      t.text :address
      t.text :city
      t.date :date
      t.text :sale_person_code
      t.text :sale_person_name

      t.timestamps
    end
  end
end
