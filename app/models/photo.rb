class Photo < ApplicationRecord
  # Direct associations

  belongs_to :owner,
             :class_name => "User"

  has_many   :comments,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  # Indirect associations

  has_many   :commentors,
             :through => :comments,
             :source => :author

  has_many   :viewers,
             :through => :owner,
             :source => :following

  # Validations

end
