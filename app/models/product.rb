class Product < ApplicationRecord
    has_one_attached :featured_image
    validates :name, presence: true

    def change
        unless table_exists?(:products)
          create_table :products do |t|
            t.string :name
            t.decimal :price
            t.timestamps
          end
        end
    end
end
