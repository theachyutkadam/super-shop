class Customer < ApplicationRecord
	def self.search(params)
	  customers = all # for not existing params args
	  customers = customers.where("last_name like ?", "%#{params[:search]}%") if params[:search]
	  customers
	end
end