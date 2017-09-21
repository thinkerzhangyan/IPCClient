// IOnNewBookArrivedListener.aidl
package tk.thinkerzhangyan.ipcserver;

// Declare any non-default types here with import statements
import tk.thinkerzhangyan.ipcserver.Book;

interface IOnNewBookArrivedListener {
   void onNewBookArrived(in Book newBook);
}
