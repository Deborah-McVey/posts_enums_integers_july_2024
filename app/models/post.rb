class Post < ApplicationRecord
    validates :title, presence: true

    STATUSES = [:draft, :published, :banned, :in_review]

    enum status: { draft: 0, published: 1, banned: 3, in_review: 4 }, _default: 0 
end
