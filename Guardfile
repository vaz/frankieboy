guard 'sass', :input => 'style', :output => 'public'

guard 'livereload' do
  watch('config.ru')
  watch(%r{views/.+})
  watch(%r{public(/[^_].*\.(css|js|html|png|jpg)).*}) { |m| m[1] }
end
