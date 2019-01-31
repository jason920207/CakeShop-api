# @Author: xiaojiezhang
# @Date:   2018-10-02T19:52:46-04:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T13:20:10-05:00



# frozen_string_literal: true

class ExampleSerializer < ActiveModel::Serializer
  attributes :id, :text, :editable

  def editable
    scope == object.user
  end
end
