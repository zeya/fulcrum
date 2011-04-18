Factory.define :user do |u|
  u.sequence(:email) {|n| "user#{n}@example.com"}
  u.password 'password'
  u.password_confirmation 'password'
  u.after_build {|user| user.confirm!}
end

Factory.define :project do |p|
  p.name 'Test Project'
end

Factory.define :story do |s|
  s.title 'Test story'
  s.association :requested_by, :factory => :user
  s.association :project
end