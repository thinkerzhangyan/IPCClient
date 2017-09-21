package tk.thinkerzhangyan.ipcserver;
import tk.thinkerzhangyan.ipcserver.Book;
import tk.thinkerzhangyan.ipcserver.IOnNewBookArrivedListener;
interface IBookManager {
    List<Book> getBookList();
    void addBook(in Book book);
    void registerListener(IOnNewBookArrivedListener listener);
    void unregisterListenr(IOnNewBookArrivedListener listener);
}