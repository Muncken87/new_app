class Product < ActiveRecord::Base
  validates :name, presence: true
  has_many :orders, dependent: :destroy
  has_many :comments, dependent: :destroy



    def average_rating
      comments.average(:rating).to_f
    end

    # before_save do
    #   self.category.gsub!(/[\[\]\"]/, "") if attribute_present?("jumbo")
    # end
end
