# frozen_string_literal: true

class SessionsController < ApplicationController
  skip_before_action :authorized, only: %i[new create welcome]
  layout 'login'

  def new; end

  def create
    @team = Team.find_by(username: params[:username])
    if @team&.authenticate(params[:password])
      session[:team_id] = @team.id
      redirect_to root_url
    else
      redirect_to '/login'
    end
  end

  def destroy
    # Team.find(session).destroy
    session[:team_id] = nil
    redirect_to '/login'
  end

  def login; end

  def welcome; end

  def page_requires_login; end
end
