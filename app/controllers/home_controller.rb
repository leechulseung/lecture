class HomeController < ApplicationController
  before_action :authenticate_user!
  def index#로그인
  end

  def main
  end
end
