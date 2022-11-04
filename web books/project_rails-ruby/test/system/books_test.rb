require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Ghichu 243", with: @book.ghichu_243
    fill_in "Hoten 243", with: @book.hoten_243
    fill_in "Lop 243", with: @book.lop_243
    fill_in "Mahs 243", with: @book.mahs_243
    fill_in "Masanh 243", with: @book.masanh_243
    fill_in "Ngaymuon 243", with: @book.ngaymuon_243
    fill_in "Ngaytra 243", with: @book.ngaytra_243
    fill_in "Sobm 243", with: @book.soBM_243
    fill_in "Tensach 243", with: @book.tensach_243
    fill_in "Tentacgia 243", with: @book.tentacgia_243
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Ghichu 243", with: @book.ghichu_243
    fill_in "Hoten 243", with: @book.hoten_243
    fill_in "Lop 243", with: @book.lop_243
    fill_in "Mahs 243", with: @book.mahs_243
    fill_in "Masanh 243", with: @book.masanh_243
    fill_in "Ngaymuon 243", with: @book.ngaymuon_243
    fill_in "Ngaytra 243", with: @book.ngaytra_243
    fill_in "Sobm 243", with: @book.soBM_243
    fill_in "Tensach 243", with: @book.tensach_243
    fill_in "Tentacgia 243", with: @book.tentacgia_243
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end
