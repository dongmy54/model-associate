class Vehicle < ApplicationRecord
  # 这是基模型
  # 单表继承指的是几个模型共用一张表
  # 因此无法在子模型上去建立其它不同的字段
end
