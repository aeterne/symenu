class Categorization < ActiveRecord::Base
  attr_accessible :menu, :category
  belongs_to :menu
  belongs_to :category
end
