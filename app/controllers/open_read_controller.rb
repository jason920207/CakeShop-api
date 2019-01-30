# @Author: xiaojiezhang
# @Date:   2018-10-02T19:52:46-04:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-29T16:07:00-05:00



# frozen_string_literal: true

# Inherit from this class to allow unauthenticate access to read actions
class OpenReadController < ProtectedController
  READ_ACTIONS = %i[index show].freeze
  skip_before_action :authenticate, only: READ_ACTIONS
  before_action :set_current_user, only: READ_ACTIONS
end
