class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates_presence_of :title, :description, :price
  validates :price, numericality: true, format: { with: /\A\d+(.\d{1,2})?\z/   }

  def average_rating
    reviews.inject(0) { |sum, review|  sum + review.rating } / reviews.count().to_f
  end
end
