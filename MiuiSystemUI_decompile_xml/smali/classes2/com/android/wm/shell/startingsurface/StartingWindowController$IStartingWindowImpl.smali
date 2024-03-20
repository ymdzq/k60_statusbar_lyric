.class public final Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;
.super Landroid/os/Binder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;
.implements Landroid/os/IInterface;


# instance fields
.field public mController:Lcom/android/wm/shell/startingsurface/StartingWindowController;

.field public final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

.field public final mStartingWindowListener:Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.wm.shell.startingsurface.IStartingWindow"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda1;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;)V

    .line 12
    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mStartingWindowListener:Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda1;

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mController:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 17
    new-instance v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 19
    new-instance v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda2;

    .line 21
    invoke-direct {v1, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;)V

    .line 23
    new-instance v2, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda3;

    .line 26
    invoke-direct {v2}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda3;-><init>()V

    .line 28
    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 31
    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 34
    return-void
    .line 36
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mController:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    .line 7
    return-void
    .line 10
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->onTransact$com$android$wm$shell$startingsurface$IStartingWindow$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTransact$com$android$wm$shell$startingsurface$IStartingWindow$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.android.wm.shell.startingsurface.IStartingWindow"

    .line 2
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    const v2, 0xffffff

    .line 7
    if-gt p1, v2, :cond_0

    .line 10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    if-eq p1, v2, :cond_4

    .line 18
    const/16 v0, 0x2c

    .line 20
    if-eq p1, v0, :cond_1

    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 29
    move-result-object p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    const/4 p1, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string p3, "com.android.wm.shell.startingsurface.IStartingWindowListener"

    .line 37
    invoke-interface {p1, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 39
    move-result-object p3

    .line 42
    if-eqz p3, :cond_3

    .line 43
    instance-of p4, p3, Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

    .line 45
    if-eqz p4, :cond_3

    .line 47
    move-object p1, p3

    .line 49
    check-cast p1, Lcom/android/wm/shell/startingsurface/IStartingWindowListener;

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    new-instance p3, Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub$Proxy;

    .line 53
    invoke-direct {p3, p1}, Lcom/android/wm/shell/startingsurface/IStartingWindowListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 55
    move-object p1, p3

    .line 58
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 59
    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;->mController:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 62
    new-instance p3, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda0;

    .line 64
    invoke-direct {p3, p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController$IStartingWindowImpl;Lcom/android/wm/shell/startingsurface/IStartingWindowListener;)V

    .line 66
    const/4 p0, 0x0

    .line 69
    const-string/jumbo p1, "setStartingWindowListener"

    .line 70
    invoke-static {p2, p1, p3, p0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    .line 73
    return v1

    .line 76
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return v1
    .line 80
.end method
