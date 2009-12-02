# coding: utf-8
$KCODE = "u" if RUBY_VERSION < "1.9"
require "rubygems"

$LOAD_PATH << File.expand_path("../../lib", File.dirname(__FILE__))
require 'spec/expectations'
require 'cucumber'

require 'bowling'
