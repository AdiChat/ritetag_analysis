# :gem: RiteTag Analysis :star:

A gem for <strong>Social Media Optimization</strong>.<br>
This gem will be upgraded frequently thereby incorporating more useful methods aiding in extensive hashtag analysis.

## Installation

Add the gem to the gemfile:

```ruby
gem 'ritetag_analysis'
```

Then execute:
```ruby
$ bundle install
```
Install the gem :

```ruby
$ gem install ritetag
```

## Usage

Create a hash containing the oAuth parameters.

```ruby
	authorization = {
		'consumer_key' => 'CONSUMER KEY',
		'consumer_secret' => 'CONSUMER SECRET KEY',
		'token' => 'TOKEN KEY',
		'token_secret' => 'TOKEN SECRET KEY'
	}
```


Create an object :
```ruby
  analyse = RiteTag_Analysis.new(authorization)
```

In order to use a method( say: trending() )

```ruby
  analyse.trending('green','internship')
```
It would reveal the associated hashtags related to <i>internship</i> that has the perfect balance of exposure and retweets.<br>

All the other useful methods are used to get various information regarding user given hashtags

## Author
The gem <i><strong>ritetag_analysis</strong></i> has been coded by <strong>[Aditya Chatterjee](http://github.com/AdiChat)</strong>.

## Contributing

Bug reports and pull requests are welcomed. Feel free to fork me.

## License

The gem is available as open source project under the terms of the [MIT License](http://opensource.org/licenses/MIT).
