class Course < ApplicationRecord
    has_many :users
    paginates_per 2
end
