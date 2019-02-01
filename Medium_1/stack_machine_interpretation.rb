def minilang(program_string)
  program = program_string.split
  register = 0
  stack = []
  program.each do |command|
    register = command.to_i if command.to_i.to_s == command
    case command
    when 'PUSH'
      stack << register
    when 'ADD'
      register += stack.pop
    when 'SUB'
      register -= stack.pop
    when 'MULT'
      register *= stack.pop
    when 'DIV'
      register = register/stack.pop
    when 'MOD'
      register = register % stack.pop
    when 'POP'
      register = stack.pop
    when 'PRINT'
      puts register
    end
  end
  puts "(nothing printed; no PRINT commands)" unless program.include?('PRINT')
end