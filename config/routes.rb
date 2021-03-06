Rails.application.routes.draw do
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # 페이지 간 이동
  #root 'convert#Page1'
  #get "Page1" => 'convert#Page1'
  #get "Page2" => 'convert#Page2'
  
  #게시판 만들기
  root 'noticeboard#board'
  get '/' =>'noticeboard#board'
  get '/list' =>'noticeboard#list'
  post '/write' => 'noticeboard#write' 
  post '/update_real/:id' => 'noticeboard#update_real'   #실제 수정할 곳
  get '/destroy/:id' =>'noticeboard#destroy' #무슨 글을 삭제할지 id라는 변수에 값이 담겨서 온다.
  get '/update_view/:id' =>'noticeboard#update_view' #무슨 글을 수정할지 id라는 변수에 값이 담겨서 온다.
  post '/comment_create/' =>'noticeboard#comment_create' # 게시글의 키를 넘겨준다.
  
    #얼굴인식
 
 #root 'recognition#face'
 # get '/face' =>'recognition#face'
 #post '/photo' =>'recognition#photo'

  
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
