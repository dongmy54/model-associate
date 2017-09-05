namespace :my_data do

  task assembly_and_part: :environment do
    p1 = Part.create(:name => "hu")
    p2 = Part.create(:name => "bar")
    puts "创建了两笔零件资料"

    a1 = Assembly.create(:name => "part-1")
    a2 = Assembly.create(:name => "part-2")
    puts "创建了两笔装配体资料"

    p1.assemblies << a1   # 注意这个关联建立的是双向关系
    p1.assemblies << a2   # 如这里： a2属p1的同时，a2包含了p1
    a1.parts << p2
    a2.parts << p2            
    puts "零件与装配体关系已建立"
  end

  task user_product_picture: :environment do
    user    = User.create(:name => "user-1")
    product = Product.create(:name => "product-1")
    puts "产生user与product资料"

    user.pictures.create(name: "picture-user")
    product.pictures.create(name: "picture-product")
    puts "user、product分别建立图片"
  end

end
