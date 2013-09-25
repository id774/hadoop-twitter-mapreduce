#!/opt/ruby/current/bin/ruby
# -*- coding: utf-8 -*-

$:.unshift File.join(File.dirname(__FILE__))

class Reducer
  def reduce(stdin)
    key = nil
    hits = 0

    stdin.each_line {|line|
      newkey, count = line.force_encoding("utf-8").strip.split
      if newkey.length > 0
        unless key == newkey
          reducer_output(key, hits)
          key = newkey
          hits = 0
        end
        hits += count.to_i
      end
    }
    reducer_output(key, hits)
  end

  private

  def reducer_output(key, hits)
    puts "#{key}\t#{hits}\n" unless key.nil?
  end
end

if __FILE__ == $0
  require ARGV.shift || 'cached'
  reducer = Reducer.new
  reducer.reduce($stdin)
end
