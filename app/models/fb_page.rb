class FbPage < ActiveRecord::Base
  def authorized?
    !access_token.nil?
  end
end
