class Product < ApplicationRecord
	enum measures: {kg: 0, ltr: 1, dozen: 2, single: 3, unkown: 4}
	enum categories: {grocery: 0, snacks: 1, packege: 2, personal: 3, household: 4, dairy: 5, other: 6}
	
	# def self.search(search)
	#   if search
	#     where('name LIKE ?', "%#{search}%")
	#   else
	#     scope
	#   end
	# end
end
