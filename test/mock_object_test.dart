import 'package:dart_ui_unit_test/book.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import 'mock_object_test.mocks.dart';

void main() {
  group(
    'Book Service',
    () {
      var bookRepo =
          MockBookRepository(); //If Use This, the mocking could be success
      var bookRepos =
          BookRepository(); //If Use This, the mocking could be error
      var bookSevice = BookService(bookRepo);

      test(
        'save new book must success',
        () {
          bookSevice.save('1', 'Tutor', 100);
          verify(bookRepo.save(Book('1', 'Tutor', 100))).called(1);
        },
      );

      test('test find book by id', () {
        expect(() {
          bookSevice.find('1');
        }, throwsException);
      });

      test('book by id success', () {
        when(bookRepo.findBookById('1')).thenReturn(Book('1', 'Tutor', 100));

        var book = bookSevice.find('1');
        expect(book, equals(Book('1', 'Tutor', 100)));

        verify(bookRepo.findBookById('1')).called(2);
      });

      test('find book Ajjjiii', () {
        when(bookRepo.findBookById(argThat(startsWith('aji'))))
            .thenReturn(Book('aji', 'Tutor', 100));

        var book = bookSevice.find('aji');
        expect(book, equals(Book('aji', 'Tutor', 100)));

        verify(bookRepo.findBookById(any)).called(1);
      });
    },
  );
}
