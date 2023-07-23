Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :sellers do
    get('', action: :index)
    get('kekg', action: :create_kek)
  end
end
