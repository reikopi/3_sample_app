Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/edit'
  get 'top'=>'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 post 'lists'=>'lists#create'
 get 'lists'=>'lists#index'
 get 'lists/:id'=>'lists#show',as: 'list'
# as:と'list'の間にスペースがないと適用されないので注意
end
