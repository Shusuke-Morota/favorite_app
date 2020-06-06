Rails.application.routes.draw do
  root to: 'home#top'
  devise_for :users
  resource :user,　except: [:new, :create, :destroy] #今回は新規登録(new),create,destroyは定義しないのでそれらのルーティングは生成しない
  resources :recipes do #今回は一覧画面を作るので、resourcesとなる。
  	resource :favorites, only: [:craete, :destroy]
  end
end
