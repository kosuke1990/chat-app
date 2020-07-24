Rails.application.routes.draw do
  devise_for :users # ユーザー機能に必要なルーティングを一気に生成するdeviseのメソッド
  root "messages#index" # messagesコントローラーのindexアクションを実行する
  resources :users, only: [:edit, :update] # usersコントローラーのedit,updateアクションの処理を実行
end