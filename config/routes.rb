Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'
  get('/contact_me',{to: 'contacts#index'})
  post('/contact_me', {to: 'contacts#create'})
end
