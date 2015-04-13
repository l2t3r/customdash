My custom dashboard calling elasticsearch and updating the last enetered data 

Also monitoring github repo stats

![Alt text](https://github.com/l2t3r/customdash/blob/master/customdash.png "CustomDash")

Requirements

Installing on mac (ref: http://www.ryantaylor.cc/running-dashing-on-a-mac/)

1. sudo xcode-select --install
2. sudo gem install bundler
3. sudo gem install dashing
4. clone my repo
5. change into the directory you cloned the repo
6. run bundle install

Installing on Amazon linux or redhat variants

1. yum install ruby-devel rubygems gcc g++ bundler
2. yum install nodejs --enable-repo=epel
3. yum install libxml2-devel libxslt-devel
4. clone my repo
5. chnage into the directory you cloned the repo
6. run bundle install

Modify the widgets and layouts to your liking  : -
Assets — All your images, fonts, and js/coffeescript libraries. Uses Sprockets
Dashboards — One .erb file for each dashboard that contains the layout for the widgets.
Jobs — Your ruby jobs for fetching data (e.g for calling third party APIs like twitter).
Lib — Optional ruby files to help out your jobs.
Public — Static files that you want to serve. A good place for a favicon or a custom 404 page.
Widgets — All the html/css/coffee for individual widgets.

I have my own job that connects to elasticsearch and gets the results I want.
2 additional libaries need to be added in ruby

1. gem install elasticsearch
2. gem install hashie

I am also monitoring a public github repo using a community widget.
There are many more widgets which you can download and install and get some understanding of the layouts
https://github.com/Shopify/dashing/wiki/Additional-Widgets

After modifing to your requiremnet you can start dashing by issuing command "dashing start"

