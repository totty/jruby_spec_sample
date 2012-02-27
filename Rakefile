require 'ant'

namespace :ant do
  task :compile => :clean do
    ant.javac :srcdir => "src", :destdir => "classes"
  end
end

require 'rake/clean'

CLEAN.include '*.class', '*.jar'
