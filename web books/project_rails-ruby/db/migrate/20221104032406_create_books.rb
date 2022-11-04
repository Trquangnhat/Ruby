class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :mahs_243
      t.string :hoten_243
      t.string :lop_243
      t.string :masanh_243
      t.string :tensach_243
      t.string :tentacgia_243
      t.string :soBM_243
      t.date :ngaymuon_243
      t.date :ngaytra_243
      t.text :ghichu_243

      t.timestamps
    end
  end
end
