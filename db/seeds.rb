admins = User.where(admin: true)

if admins.blank?
  user          = User.new
  user.email    = 'admin@admin.com'
  user.password = '123456'
  user.admin    = true
  user.save
end
