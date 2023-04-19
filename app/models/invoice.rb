class Invoice < ApplicationRecord
  has_many :invoice_lines
    accepts_nested_attributes_for :invoice_lines




#accepts_nested_attributes_for :invoice_lines


	def invoice_lines_attributes=(hash)
		    if !!self.id
		      self.invoice_lines.clear
		      hash.values.each do |attributes|
			attrs = attributes.merge({invoice_id: self.id})
			self.invoice_lines << InvoiceLine.find_or_create_by(attrs)
		      end
		    end
		  end








   

end
