# RescueTracer
Log backtrace when rescue_from is called.

## Installation
```ruby
group :test do
  gem "rescue_tracer"
end
```

## Usage
Enable at spec/spec_helper.rb

```ruby
RescueTracer.enable!
```

When `rescue_from` catches any exception, it logs the exception's information to Rails.logger.

```
Started GET "/recipes" for 127.0.0.1 at 2014-01-21 17:17:57 +0900
Processing by RecipesController#show as HTML
  Recipes Load (0.4ms)  SELECT id FROM `recipes` WHERE `recipes`.`user_id` = '1'
RuntimeError
/Users/r7kamura/example/app/controllers/recipess_controller.rb:20:in `show'
/Users/r7kamura/.rbenv/versions/2.0.0-p247/lib/ruby/gems/2.0.0/gems/actionpack-4.0.2/lib/action_controller/metal/implicit_render.rb:4:in `send_action'
/Users/r7kamura/.rbenv/versions/2.0.0-p247/lib/ruby/gems/2.0.0/gems/actionpack-4.0.2/lib/abstract_controller/base.rb:189:in `process_action'
/Users/r7kamura/.rbenv/versions/2.0.0-p247/lib/ruby/gems/2.0.0/gems/actionpack-4.0.2/lib/action_controller/metal/rendering.rb:10:in `process_action'
...
```
