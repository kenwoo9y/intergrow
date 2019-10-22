class User < ApplicationRecord
    has_secure_password

    with_options presence: true do
        validates :name
        validates :email
    end

    validates :email, uniqueness: true

    has_many :articles
end
