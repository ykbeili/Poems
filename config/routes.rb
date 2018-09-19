Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/about_me', to: 'welcome#about'
  get('/contact_me',{to: 'contacts#index'})
  post('/contact_me', {to: 'contacts#create'})
end
