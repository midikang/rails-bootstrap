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


