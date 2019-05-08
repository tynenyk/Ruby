print "Введите температуру и шкалу (C or F): "
str = gets
exit if str.nil? or str.empty?
str.chomp!
temp, scale = str.split (" ")

abort "#{temp} недопустимое число." if temp !~ /-?\d+/

temp = temp.to_f
case scale
	when "C", "c"
		f = 1.8*temp + 32
	when "F", "f"
		c = (5.0/9.0)*(temp-32)
else
	abort "Необходимо задать C или F."
end

if f.nil?
	print "#{c} градусов C\n"
else
	print "#{f} граудсов F\n"
end
		
# Проверка:
# Введите температуру и шкалу (C or F): 98.6 F
# 37.0 градусов C 
# Введите температуру и шкалу (C or F): 100 C
# 212.0 градусов F
# Введите температуру и шкалу (C or F): 92 G
# Необходимо  задать C или F.
# Введите температуру и шкалу (C or F): junk F
# junk недопустимое число.
		