source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in paggy.gemspec.
gemspec

gem "pg"
gem 'puma'

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"
group :test do
  gem "capybara"
  gem "selenium-webdriver"
end