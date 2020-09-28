class User < ApplicationRecord
    has_many :beats

    validates_presence_of :name
end
