class Myblog < ApplicationRecord
    validates :blogtitle, presence: true, length: {minimum: 2, maximum: 80}
    validates :content, presence: true, length: {minimum: 2, maximum: 5000}
end
