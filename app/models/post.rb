class Post < ApplicationRecord
    belongs_to :user
    has_many :comments, :dependent => :destroy
    validates :title , presence: true,
                       length: { :minimum => 2 , :maximum => 150}
    validates :secondtitle, presence: true,
                        length: { :minimum => 2, :maximum => 150}
    validates :content, presence: true,
                        length: { :minimim => 10, :maximum => 1000000000 }

    has_one_attached :postimage
    has_rich_text :content
end
