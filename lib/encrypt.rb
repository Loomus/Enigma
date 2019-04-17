require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/offset'
require './lib/key'

read_file, write_file  = ARGV

messages = File.open(read_file, "r")
encrypted = File.open(write_file, "w")

encrypted_message = Enigma.new.encrypt(messages.read)
encrypted.write(encrypted_message[:encryption])
encrypted.close

p "Created #{write_file} with the key #{(encrypted_message[:key])} and date #{(encrypted_message[:date])}"
