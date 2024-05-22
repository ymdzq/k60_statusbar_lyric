.class public final Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStagePositionChanged(II)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

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
    goto :goto_1

    .line 17
    :cond_0
    :try_start_0
    check-cast p0, Lcom/android/wm/shell/splitscreen/ISplitScreenListener;

    .line 18
    check-cast p0, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;

    .line 20
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 22
    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 24
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    const-string v2, "com.android.wm.shell.splitscreen.ISplitScreenListener"

    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 39
    const/4 p1, 0x0

    .line 41
    const/4 p2, 0x1

    .line 42
    invoke-interface {p0, p2, v1, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 53
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    :goto_0
    const-string p1, "Failed remote call"

    .line 57
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_1
    return-void
    .line 62
.end method

.method public final onTaskStageChanged(IIZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1;->this$0:Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 4
    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl$1$$ExternalSyntheticLambda0;-><init>(IIZ)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->call(Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;)V

    .line 11
    return-void
    .line 14
.end method
