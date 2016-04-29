class Post < ActiveRecord::Base
    has_many :replies
    validates :title, presence: {
     message: "제목이 비었습니다"}  # title이란 값은 필수로 존재해야함
end
