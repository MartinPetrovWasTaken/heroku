Rails.application.routes.draw do
      get 'intervals' => 'intervals#index'
      post 'intervals' =>  'intervals#create'
      get 'sums' => 'sums#index'
      post 'sums' => 'sums#create'
      get 'filters' => 'filters#index'
      post 'filters' => 'filters#create'
      get 'lin_regressions' => 'lin_regressions#index'
      post 'lin_regressions' => 'lin_regressions#create'
end
