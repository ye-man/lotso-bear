class GenericCar < ActiveRecord::Base
  has_many :cars
  has_many :car_spare_alloys
  has_many :generic_spares, through: :car_spare_alloys, dependent: :destroy

  accepts_nested_attributes_for :car_spare_alloys, :reject_if => proc { |a| a[:relation].blank? }

<<<<<<< HEAD
  has_attached_file :photo1, :styles => { :medium => "500x500>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo1, :content_type => /\Aimage\/.*\Z/


  has_attached_file :photo2, :styles => { :medium => "500x500>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo2, :content_type => /\Aimage\/.*\Z/


  has_attached_file :photo3, :styles => { :medium => "500x500>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo3, :content_type => /\Aimage\/.*\Z/


  has_attached_file :photo4, :styles => { :medium => "500x500>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo4, :content_type => /\Aimage\/.*\Z/
=======
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("model like ? OR brand like ? OR year like ?", "%#{query}%", "%#{query}%", "%#{query}%")
  end

>>>>>>> db9e0ac8d39544591c6d09259506aba327833d34
end
