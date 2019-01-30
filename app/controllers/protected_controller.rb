# @Author: xiaojiezhang
# @Date:   2018-10-02T19:52:46-04:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-28T20:08:51-05:00



# frozen_string_literal: true

# Inherit from this class to require authenticated access to all actions
class ProtectedController < ApplicationController
  before_action :authenticate
end
