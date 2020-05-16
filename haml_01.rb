#!/usr/local/bin/ruby
print "Content-type:text/html\n\n"

require_relative './lib/haml'

File.open("haml_01.haml") do |f|
  pp = Haml::Engine.new(f.read, :format => :xhtml).render_proc(Object.new, :hello)
  ["Hello World!!"].each do |hello|
     print pp.call :hello => hello
  end
end
