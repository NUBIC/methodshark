# Methodshark

Methodshark is a simple library to track the changes in a method over time. It mines a git repository for changes and then determines the complexity of that method at that point in time.

# Installation

1. Add it to your bundler Gemfile:

gem "methodshark"

`bundle install`

# Example

1. To determine the complexity of a method over time
  `rake shark:jump FILE=app/models/person.rb METHOD=Person#to_s`
  
2. To see what changed between versions
  `rake shark:diff FILE=app/models/person.rb v1=2a9d78a7 v2=e6d245ef`

