# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                properties GET    /properties(.:format)                                                                    properties#index
#                           POST   /properties(.:format)                                                                    properties#create
#              new_property GET    /properties/new(.:format)                                                                properties#new
#             edit_property GET    /properties/:id/edit(.:format)                                                           properties#edit
#                  property GET    /properties/:id(.:format)                                                                properties#show
#                           PATCH  /properties/:id(.:format)                                                                properties#update
#                           PUT    /properties/:id(.:format)                                                                properties#update
#                           DELETE /properties/:id(.:format)                                                                properties#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create


Rails.application.routes.draw do
    root 'properties#index'

    resources :properties
end
