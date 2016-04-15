class NoticeboardController < ApplicationController
    def board
        
    end
    
    def write
        
        @title=params[:title]
        @content = params[:content]
        
        
        new_post = Post.new # Post는 rails g model 'post'를 생성할 때 사용한 이름
        
        
        new_post.title = @title     #title은 DB에서 정의한 이름
        new_post.content = @content # params[:content]와 같은 방식
        new_post.save # 저장
        
        
        
    end
    
    def list
        @every_post = Post.all.order("id desc") # DB의 모든 내용 뽑고, id 내림차순 정렬
        
    end
    
    def destroy
        @one_post = Post.find(params[:id]) #파라미터로 넘어온 id를 찾아서 값을 할당
   
        @one_post.destroy #데이터 삭제
        redirect_to '/list' 
    end
    
    
end
