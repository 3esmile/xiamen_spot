class Spot < ActiveRecord::Base
  attr_accessible :address, :image, :name, :pinyin, :url, :description, :open_time, :price, :rate, :tags, :category_id, :area_id, :image2, :image3, :image4, :featured
  belongs_to :category
  belongs_to :area
  
  has_many :comments, dependent: :destroy
  #validates :title, presence: true, length: { minimum: 5 }
  validates :address, presence: true, length: { minimum: 5 }

  #scope :by_category_id, lambda {|cid| joins(:category).where(['category.id =?',cid])}
end
