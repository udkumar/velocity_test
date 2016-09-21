class Article < ActiveRecord::Base
  belongs_to :user,  class_name: "User", primary_key: "user_name", foreign_key: "user_name"

end
