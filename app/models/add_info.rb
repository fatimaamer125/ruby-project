class AddInfo < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "200x200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    validates :name,:number, presence: true
    validates :name, length: { minimum: 2 }
    validates :number, length: { maximum: 15 }
    validates :description, length: { maximum: 150 }
    #validates :image, file_size: { less_than: 2.gigabytes }
    
end
