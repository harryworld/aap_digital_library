require 'elasticsearch/model'

class Article < ApplicationRecord

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

end
