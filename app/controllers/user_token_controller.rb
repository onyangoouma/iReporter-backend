class UserTokenController < Knock::AuthTokenController
include Knock::Authenticable
undef_method :current_user
end
