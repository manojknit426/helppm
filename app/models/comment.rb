class Comment < ActiveRecord::Base
belongs_to :rule
belongs_to :user
end
