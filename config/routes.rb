Rails.application.routes.draw do
  devise_for :users # ユーザー機能に必要なルーティングを一気に生成するdeviseのメソッド
  root 'rooms#index' # messagesコントローラーのindexアクションを実行する
  resources :users, only: [:edit, :update] # usersコントローラーのedit,updateアクションの処理を実行
  resources :rooms, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end