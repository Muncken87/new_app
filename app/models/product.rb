class Product < ActiveRecord::Base
  validates :name, presence: true
  has_many :orders, dependent: :destroy
  has_many :comments, dependent: :destroy
  extend FriendlyId
  friendly_id :name, use: :slugged

    def average_rating
      comments.average(:rating).to_f
    end

    def purchase!(user, token)
    begin
      charge = Stripe::Charge.create(
        :amount => self.price,
        :currency => "usd",
        :source => token,
        :description => user.email
        )
      if charge.paid
        Order.create(product_id: self.id,
        user_id: user.id, total: self.price)
      end
    end
  end

    # before_save do
    #   self.category.gsub!(/[\[\]\"]/, "") if attribute_present?("jumbo")
    # end
  
end
