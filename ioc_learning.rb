module TaxCode
	def self.generate(id)
		"US-#{id}"
	end
end

module BrazilianTaxCode
	def self.generate(id)
		"#{id+9}-BRA"
	end
end

class Customer
	include TaxCode
	include BrazilianTaxCode

	attr_writer :tax_code

	def initialize(id)
		@id = id
	end

	def tax_code_generator
		@tax_code.generate(@id)
	end
	

	# def tax_code(type=:us)
	# 	return TaxCode.generate(@id) if type == :us
	# 	BrazilianTaxCode.generate(@id)
	# end

	# def tax_code_brazilian
	# 	BrazilianTaxCode.generate(@id)
	# end
end

c = Customer.new(123456)
c.tax_code = BrazilianTaxCode
puts c.tax_code_generator
