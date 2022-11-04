require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference("Book.count") do
      post books_url, params: { book: { ghichu_243: @book.ghichu_243, hoten_243: @book.hoten_243, lop_243: @book.lop_243, mahs_243: @book.mahs_243, masanh_243: @book.masanh_243, ngaymuon_243: @book.ngaymuon_243, ngaytra_243: @book.ngaytra_243, soBM_243: @book.soBM_243, tensach_243: @book.tensach_243, tentacgia_243: @book.tentacgia_243 } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { ghichu_243: @book.ghichu_243, hoten_243: @book.hoten_243, lop_243: @book.lop_243, mahs_243: @book.mahs_243, masanh_243: @book.masanh_243, ngaymuon_243: @book.ngaymuon_243, ngaytra_243: @book.ngaytra_243, soBM_243: @book.soBM_243, tensach_243: @book.tensach_243, tentacgia_243: @book.tentacgia_243 } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference("Book.count", -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
