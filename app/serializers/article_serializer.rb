class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :conten, :path
  has_one :author
end
