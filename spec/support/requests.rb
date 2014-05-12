def login_request_user(user)
  post_via_redirect user_session_path, 'user[email]' => user.email, 'user[password]' => user.password
end