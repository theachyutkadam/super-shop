class Inventory < ApplicationRecord
  belongs_to :product
  enum measures: {kg: 0, ltr: 1, dozen: 2, single: 3, unkown: 4}
end
