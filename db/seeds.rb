# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



 #Post.create(title: '안녕하세요', content: "첫글입니다.")
 #Reply.create(comment: '첫글입니다', post_:1)
 
 new_post = Post.new
 new_post.title="안녕하세요!"
 new_post.content="내용입니다!!!"
 new_post.save
 
 reply = Reply.new
 reply.comment="첫번째 리플입니다!!!"
 reply.post = new_post
 reply.save