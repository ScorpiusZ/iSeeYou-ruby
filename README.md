# ISeeYou

GeekPark spam classifier interface

## Installation

Add this line to your application's Gemfile:

    $ gem 'iseeyou', '0.1.0', github: 'ScorpiusZ/iSeeYou-ruby'

And then execute:

    $ bundle

##Configuration

####Rails:
创建文件 `config/initializes/iseeyou_ruby.rb` 填入下面的代码，并修改对应的配置： 

```ruby
ISeeYou.configure do |config|
  config.base_url = 'http://localhost:8000'
  config.namespace = 'classifier namespace'
  config.name = 'classifier name'
end
```

## Usage

###判断是否垃圾信息

```ruby
ISeeYou.spam? text

ISeeYou.spam? '你好'
>false

ISeeYou.spam? '在干吗?','美女视频加QQ:1231412312'
>[false,true]

```

###学习接口
```ruby
ISeeYou.train [text,isSpam]

ISeeYou.train ['你好',false]
>{"msg"=>"success", "status_code"=>"200"} 

ISeeYou.train [['在干吗?',false],['美女视频加QQ:1231412312',true]]
>{"msg"=>"success", "status_code"=>"200"} 
```




## Contributing
1. Fork it ( https://github.com/ScorpiusZ/iSeeYou-ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
