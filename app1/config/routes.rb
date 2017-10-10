Rails.application.routes.draw do
  match '/sums' => 'documents#sums',via: :post
end
