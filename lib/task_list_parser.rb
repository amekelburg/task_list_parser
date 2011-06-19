require 'rubygems'
require 'active_support'
require 'builder'
require 'time'
require 'date'

$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module TaskListParser
  VERSION = '0.0.1'
  
  
  CONF = {
    :done=>"d",
    :assigned=>"a",
    :task=>'\*',
    :sub_task=>'\*',
    :sub_project=>"\t",
    :start_time=>Time.parse("9:00")
  }
  
  module TaskListLine

    attr_accessor :line_number, :list_id
    
    def uid
      "#{list_id}-#{line_number}"
    end
    
    def blank?
      false
    end
    
  end


  require 'task_list_parser/blank_task'
  require 'task_list_parser/list'
  require 'task_list_parser/project'
  require 'task_list_parser/task'
  
end