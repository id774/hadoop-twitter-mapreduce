#!/opt/ruby/current/bin/ruby
# -*- coding: utf-8 -*-

$:.unshift File.join(File.dirname(__FILE__))

class Reducer
  def self.reduce(stdin)
    key = nil
    hits = 0

    stdin.each_line {|line|
      newkey, count = line.strip.split
      if newkey.length > 0
        unless key == newkey
          puts "#{key}\t#{hits}\n" unless key.nil?
          key = newkey
          hits = 0
        end
        hits += count.to_i
      end
    }
    unless key.nil?
      puts "#{key}\t#{hits}\n" unless key.nil?
    end
  end
end

if __FILE__ == $0
  require ARGV.shift || 'cached'
  Reducer.reduce($stdin)
end
