class Item < ApplicationRecord
    has_many :orders
    has_many :users, through: :orders
    has_many :join_table_items_carts, dependent: :nullify
end
