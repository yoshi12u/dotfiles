" Argument required
let g:rails_projections = {
  \ "app/serializers/*_serializer.rb": {
  \   "command": "serializer",
  \   "affinity": "model",
  \   "alternate": "app/models/{}.rb",
  \   "template": [
  \     "class {camelcase|capitalize|colons}Serializer < ApplicationSerializer",
  \     "end"
  \   ],
  \ }}

let g:rails_gem_projections = {
  \ "pundit": {
  \   "app/policies/*_policy.rb": {
  \     "command": "policy",
  \     "affinity": "model",
  \     "alternate": "app/models/{}.rb",
  \     "template": [
  \       "class {camelcase|capitalize|colons}Policy < ApplicationPolicy",
  \       "  class Scope < Scope",
  \       "    def resolve",
  \       "      scope.all",
  \       "    end",
  \       "  end",
  \       "end"
  \     ],
  \   }
  \ }}
