Rails.application.routes.draw do
  

  devise_for :users
  
  resources :members do
  	post 'add_group'
  	delete 'remove_group/:group_id' => 'members#remove_group', :as => 'remove_from_group'
  end

  resources :groups

  root 'members#index'

end
