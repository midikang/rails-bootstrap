### 2016-08-31

* show 'new post', 'new category' only if logined
  ```
    <% if user_signed_in? %>
      <li><%= link_to 'New Post', new_post_path %></li>
      <li><%= link_to 'New Category', new_category_path %></li>
    <% end %>
  ```

### 2016-08-21

* add badge
  * add badge to index and posts page
    ```
      Read:<span class="badge"><%= post.visit_count%></span>
    ```

### 2016-08-17

* polish ui via bootstrap style
  * add bootstrap style 'table table-striped' to posts and categories
    ```
      <table class="table table-striped">
    ```
  * truncate post.content on index page
    ```
      <%= truncate(simple_format(post.content), length: 100, omission: '... (continued)')%>
    ```
  * add bootstrap style 'btn btn-primary' to posts
    ```
      <td><%= link_to 'Edit', edit_post_path(post), :class => 'btn btn-primary' %></td>
    ```

### 2016-08-16

* add devise 4.2.0
  * add gem in Gemfile with: and run bundle install
    ```
      gem 'devise', '4.2.0'
    ```
  * Run the bundle command to install it.
    ```
      bundle install
    ```
  * Run the generator
    ```
      rails generate devise:install
    ```
  *  add configuration in config/environments/development.rb
    ```
        config.action_mailer.default_url_options = { host: 'localhost', port: 8080 }
    ```
  * generate user model
    ```
      rails generate devise user
    ```
  * generate devise views
    ```
      rails generate devise:views
    ```
  * create admin user in seed.rb and seed it
    ```
      user = CreateAdminService.new.call
      puts 'CREATED ADMIN USER: ' << user.email
    ```

### 2016-08-15

* show 3 most read posts on index
  * Add visit_count to post model
  * retrive 3 most read posts in visitors controller
    ```
      @posts = Post.order(visit_count: :desc).limit(3)
    ```
  * increase visit_count on posts#show
    ```
      @post.visit_count += 1
    ```
* simple_format content

### Sat Aug 13

  * apply templete for recent posts
  *

### Sat Aug 13

* Add markdown
  * Add markdown parser with [redcarpet](https://github.com/vmg/redcarpet)

### Thu Aug 11

* My changes
  * add bookmark url to nav
  * scaffold category, post
  * precompile assets for production

* Create by composer
  * rails_apps_composer: initial commit
  * Gemfile
  * create database
  * generators
  * testing framework
  * front-end framework
  * add pages
  * add README files
  * set up database
  * navigation links
  * prepare for deployment
  * add Bootstrap page layouts
  * extras


