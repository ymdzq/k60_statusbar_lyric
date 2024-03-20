.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "com.android.wm.shell.pip.IPipAnimationListener"

    .line 6
    packed-switch p0, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast p1, Lcom/android/wm/shell/pip/IPipAnimationListener;

    .line 12
    check-cast p1, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;

    .line 14
    iget-object p0, p1, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 16
    invoke-static {p0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 18
    move-result-object p0

    .line 21
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 22
    iget-object p1, p1, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 25
    invoke-interface {p1, v0, p0, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 30
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 35
    throw p1

    .line 38
    :goto_0
    check-cast p1, Lcom/android/wm/shell/pip/IPipAnimationListener;

    .line 39
    check-cast p1, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;

    .line 41
    iget-object p0, p1, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 43
    invoke-static {p0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 45
    move-result-object p0

    .line 48
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 49
    iget-object p1, p1, Lcom/android/wm/shell/pip/IPipAnimationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 52
    const/4 v2, 0x3

    .line 54
    invoke-interface {p1, v2, p0, v1, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 58
    return-void

    .line 61
    :catchall_1
    move-exception p1

    .line 62
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 63
    throw p1

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 68
.end method
