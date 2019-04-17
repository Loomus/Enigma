require 'minitest/autorun'
require 'minitest/pride'
require './lib/key'
require './lib/enigma'
require 'date'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_enigma_class_exists
    assert_instance_of Enigma, @enigma
  end

  def test_encrypt_method
      expected = {
        encryption: "keder ohulw",
        key: "02715",
        date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end
  def test_decrypt_method
      expected = {
        decryption: "hello world",
        key: "02715",
        date: "040895"
      }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end
end
# # encrypt a message with a key and date
