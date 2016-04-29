class NoticeboardController < ApplicationController
    def board
        
    end
    
    def write #글작성액션
        
        @title=params[:title]
        @content = params[:content]
        
        
        new_post = Post.new # Post는 rails g model 'post'를 생성할 때 사용한 이름
        
        
        new_post.title = @title     #title은 DB에서 정의한 이름
        new_post.content = @content # params[:content]와 같은 방식
        if new_post.save # 저장이 됬을경우 아무 짓도 안함
        
        else # 저장이 안되었다면
            render :text => new_post.errors.messages[:title].first #메시지 출력
            
        end
        
        
    end
    
    def list #게시판액션
        @every_post = Post.all.order("id desc") # DB의 모든 내용 뽑고, id 내림차순 정렬
        
    end
    
    def destroy #삭제액션
        @one_post = Post.find(params[:id]) #파라미터로 넘어온 id를 찾아서 값을 할당
   
        @one_post.destroy #데이터 삭제
        redirect_to '/list' 
    end
    
    def update_view #수정액션
    
        @one_post = Post.find(params[:id]) #파라미터로 넘어온 id를 찾아서 값을 할당
    
    end
    def update_real #실제 수정이 이루어지는 곳
    
         @one_post = Post.find(params[:id]) #파라미터로 넘어온 id를 찾아서 값을 할당
          @one_post.title = params[:title]
          @one_post.content = params[:content]
        @one_post.save
        redirect_to '/list'
    end
    
    def comment_create
        comment = Reply.new(post_id:params[:id],comment:params[:reple])
        comment.save
        redirect_to :back
    end
    
    
end
