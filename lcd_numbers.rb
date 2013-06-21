# -*- coding: utf-8 -*-

# 以LCD字样打印数字‘0’
# size: 字样大小， 默认为 1
def p0(size=1)
  s = " #{ '-' * size } \n"
  size.times do
    s << "|#{ ' ' * size}|\n"
  end
  size_1 = size - 1
  size_1.times do
    s << "|#{ ' ' * size }|\n"
  end
  s << "|#{ '_' * size }|\n"
end
#p0 3

# 1
def p1(size=1)
  s = " \n"
  size_2 = size * 2
  size_2.times do
    s << "|\n"
  end
  return s
end

# 2
def p2(size=1)
  s = " #{ '_' * size } \n"
  size_1 = size - 1
  size_1.times do
    s << " #{ ' ' * size }|\n"
  end
  s << " #{ '_' * size }|\n"
  size_1.times do
    s << "|#{ ' ' * size } \n"
  end
  s << "|#{ '_' * size } \n"
end


# 3
def p3(size=1)
  s= " #{ '_' * size } \n"
  size_1 = size - 1
  size_1.times do
    s << " #{ ' ' * size }|\n"
  end
  s << " #{ '_' * size }|\n"
  
  size_1.times do
    s << " #{ ' ' * size }|\n"
  end
  s << " #{ '_' * size }|\n"
end

# 4
def p4(size=1)
  s = " #{ ' ' * size } \n"
  size_1 = size - 1
  size_1.times do
    s << "|#{ ' ' * size }|\n"
  end
  s << "|#{ '_' * size }|\n"
  size.times do
    s << " #{ ' ' * size }|\n"
  end
  return s
end

# 5
def p5(size=1)
  s =  " #{ '_' * size }\n"
  size_1 = size - 1
  size_1.times do
    s << "|#{ ' ' * size } \n"
  end
  s << "|#{ '_' * size }\n"
  size_1.times do
    s << " #{ ' ' * size }|\n"
  end
  s << " #{ '_' * size }|\n"
end

# 6
def p6(size=1)
  s = " #{ '_' * size }\n"
  s << "|#{ ' ' * size } \n"
  s << "|#{ '_' * size } \n"
  size_1 = size - 1
  size_1.times do
    s << "|#{ ' ' * size }|\n"
  end
  s << "|#{ '_' * size }|\n"
end

# 7
def p7(size=1)
  s = " #{ '_' * size} \n"
  size_2 = size * 2
  size_2.times do
    s << "#{ ' ' * size }|\n"
  end
  return s
end

# 8
def p8(size=1)
  s = " #{ '_' * size } \n"
  size_1 = size - 1
  2.times do
    size_1.times do
      s << "|#{ ' ' * size }|\n"
    end
    s << "|#{ '_' * size }|\n"
  end
  return s
end

# 9
def p9(size=1)
  s = " #{ '_' * size } \n"
  size_1 = size - 1
  size_1.times do
    s << "|#{ ' ' * size }|\n"
  end
  s << "|#{ '_' * size }|\n"
  size_1.times do
    s << " #{ ' ' * size }|\n"
  end
  s << " #{ '_' * size }|\n"
end


def print_number(size=1, nums)
  lines_size = size*2 + 1    # 每一个lcd数字的函数一定为 size*2+1
  lines = Array.new(lines_size, '')
  nums.split('').each do |n|
    send("p#{n}", size).lines.each_with_index do |line, index|
      lines[index] += line.chomp << " "  # 把所要打印的数字每一行的字符提取出来
    end
  end

  lines.each do |line|
    print line << "\n"  # 按行打印
  end
end

print_number 2, "012346789"  # 按照尺寸为2打印 0 ~ 9








