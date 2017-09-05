class CreateAssemblyAndPartAssociateTable < ActiveRecord::Migration[5.0]
  def change
    create_table :assemblies_parts, id: false do |t|
      t.belongs_to :part, index: true
      t.belongs_to :assembly, index: true
      # PS1：必须设置id: false，因为没有模型了
      # PS2: assemblies_parts是默认的联结表取名

    end
  end
end
