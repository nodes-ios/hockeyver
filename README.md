# Hockeyver
Hockeyver is ruby utility that outputs the version number of the latest build on Hockey based on the provided Hockey ID and access token.


## 📦 Installation

### Add our private gem source if you haven't done before
~~~
gem sources -a http://gems.nodesmanager.io
~~~

### Install using gem
~~~
gem install hockeyver
~~~ 
  
## 💻 Usage
###From terminal
~~~
hockeyver --app_id APPID --token HOCKEYTOKEN
~~~

###Using Ruby
~~~
require 'hockeyver'
hockeyver(app_id:APPID, token:HOCKEYTOKEN)
~~~

## 👥 Credits
Made with ❤️ at [Nodes](http://nodesagency.com).

## 📄 License
**Serializable** is available under the MIT license. See the [LICENSE](https://github.com/nodes-ios/Serializable/blob/master/LICENSE) file for more info.
