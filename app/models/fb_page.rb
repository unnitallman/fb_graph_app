class FbPage < ActiveRecord::Base
  def authorized?
    !auth_token.nil?
  end
end
