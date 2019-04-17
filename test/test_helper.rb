require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/offset'
require './lib/key'
require 'pry'

read_file, write_file, key, date = ARGV
