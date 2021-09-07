class Customer < ApplicationRecord
	def self.search(params)
		search = params[:search]
	  customers = all # for not existing params args
	  customers = customers.where('first_name LIKE :search OR last_name LIKE :search OR contact LIKE :search', search: "%#{search}%") if search
	  customers
	end
end