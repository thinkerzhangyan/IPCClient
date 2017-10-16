package tk.thinkerzhangyan.ipcserver;

import android.os.IBinder;
import android.os.RemoteException;

/**
 * Created by macbook on 2017/10/16.
 */

public class BinderPoolImpl extends IBinderPool.Stub {

    public static final int BINDER_COMPUTE = 0;
    public static final int BINDER_SECURITY_CENTER = 1;



    public BinderPoolImpl() {
        super();
    }

    @Override
    public IBinder queryBinder(int binderCode) throws RemoteException {
        IBinder binder = null;
        switch (binderCode) {
            case BINDER_SECURITY_CENTER: {
                binder = new SecurityCenterImpl();
                break;
            }
            case BINDER_COMPUTE: {
                binder = new ComputeImpl();
                break;
            }
            default:
                break;
        }

        return binder;
    }
}