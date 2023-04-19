json.extract! customer, :id, :custoner_name, :contactno, :contact_name, :address, :city, :date, :sale_person_code, :sale_person_name, :created_at, :updated_at
json.url customer_url(customer, format: :json)
