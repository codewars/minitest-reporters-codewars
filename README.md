# Minitest::Reporters::Codewars

`test/test_helper.rb`:
```ruby
require "minitest/reporters"
require "minitest/reporters/codewars"
Minitest::Reporters.use! Minitest::Reporters::Codewars.new
```

Write tests in files matching pattern `test/*_test.rb`.

Run all tests:
```bash
ruby -Ilib -Itest -r 'test_helper' -e 'ARGV.each { |f| require f }' ./test/*_test.rb
```
