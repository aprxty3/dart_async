import 'dart:ffi';

import 'package:dart_ui_unit_test/src/book.dart';

class BookRepository {
  void save(Book book) {
    print('save book');
    throw UnsupportedError('Error');
  }

  void update(Book book) {
    print('update book');

    throw UnsupportedError('Error');
  }

  void delete(Book book) {
    print('delete book');
    throw UnsupportedError('Error');
  }

  Book? findBookById(String bookId) {
    print('find book by id : $bookId');
    throw UnsupportedError('Error');
  }
}
