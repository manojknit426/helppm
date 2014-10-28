class Rule < ActiveRecord::Base
has_many :comments
has_many :likes
validates_uniqueness_of :title
end
