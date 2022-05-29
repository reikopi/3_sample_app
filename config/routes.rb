Rails.application.routes.draw do
  get 'top'=>'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 post 'lists'=>'lists#create'
 get 'lists'=>'lists#index'
 get 'lists/:id'=>'lists#show',as: 'list'
# as:と'list'の間にスペースがないと適用されないので注意
 get 'lists/:id/edit'=>'lists#edit',as:'edit_list'
 patch 'lists/:id'=>'lists#update',as:'update_list'
 delete 'lists/:id'=>'lists#destroy',as:'destroy_list'
end
