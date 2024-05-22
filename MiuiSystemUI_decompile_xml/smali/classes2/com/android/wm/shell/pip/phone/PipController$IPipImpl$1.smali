.class public final Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onExpandPip()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 4
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1$$ExternalSyntheticLambda0;

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->call(Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;)V

    .line 12
    return-void
    .line 15
.end method

.method public final onPipAnimationStarted()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 4
    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1$$ExternalSyntheticLambda0;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->call(Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;)V

    .line 12
    return-void
    .line 15
.end method

.method public final onPipResourceDimensionsChanged(II)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 4
    iget-object p0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    .line 6
    const-string v0, "SingleInstanceRemoteListener"

    .line 8
    if-nez p0, :cond_0

    .line 10
    const-string p0, "Failed remote call on null listener"

    .line 12
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    check-cast p0, Lcom/android/wm/shell/pip/IPipAnimationListener;

    .line 18
    check-cast p0, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;

    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 24
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    const-string v2, "com.android.wm.shell.pip.IPipAnimationListener"

    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 39
    const/4 p1, 0x2

    .line 41
    const/4 p2, 0x0

    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-interface {p0, p1, v1, p2, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 47
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 52
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    const-string p1, "Failed remote call"

    .line 57
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_0
    return-void
    .line 62
.end method
