#!/opt/ruby/current/bin/ruby
# -*- coding: utf-8 -*-

$:.unshift File.join(File.dirname(__FILE__))

require 'date'
require 'time'
require 'mongo'
require 'MeCab'
require 'json'

class Mapper
  def initialize(day = 0)
    @mecab = MeCab::Tagger.new("-Ochasen")
    @exclude = Array.new
  end

  def map(stdin)
    stdin.each_line {|line|
      datetime, tag, json = line.force_encoding("utf-8").strip.split("\t")
      JSON.parse(json).each {|k,v|
        if k == "text"
          pickup_nouns(v).each {|word|
            if word =~ /[亜-腕]/
              mapper_output(word)
            end
            if word =~ /^[A-Za-z].*/
              mapper_output(word) if word.length > 2
            end
          }
        end
      }
    }
  end

  private

  def mapper_output(word)
    puts "#{word}\t1" unless word.nil?
  end

  def pickup_nouns(string)
    node = @mecab.parseToNode(string)
    nouns = []
    while node
      if /^名詞/ =~ node.feature.force_encoding("utf-8").split(/,/)[0] then
        nouns.push(node.surface.force_encoding("utf-8"))
      end
      node = node.next
    end
    nouns
  end
end

if __FILE__ == $0
  day = ARGV.shift || 0; day = day.to_i
  mapper = Mapper.new(day)
  mapper.map($stdin)
end

