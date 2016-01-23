require 'irb/completion'
require 'pp'


IRB.conf[:PROMPT][:CUSTOM] = {
  :PROMPT_I => "%03n:%i>> ",
  :PROMPT_C => "%03n:%i* ",
  :PROMPT_N => "%03n:%i>> ",
  :PROMPT_S => "%03n:%i%l ",
  :RETURN   => "=> %s\n"
}

IRB.conf[:PROMPT_MODE]=:CUSTOM

IRB.conf[:AUTO_INDENT] = true
IRB.conf[:SAVE_HISTORY] = 200

