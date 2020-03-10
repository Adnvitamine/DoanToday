class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :name , presence: true,
  length: { :minimum => 2 , :maximum => 50}
  validates :email, presence: true,
   length: { :minimum => 5, :maximum => 50}
  validates :body, presence: true,
   length: { :minimim => 10, :maximum => 1000 }
end
