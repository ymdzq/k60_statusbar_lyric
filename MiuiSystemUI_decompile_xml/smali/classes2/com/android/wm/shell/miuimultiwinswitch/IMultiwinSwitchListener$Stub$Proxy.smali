.class Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2
    return-object p0
    .line 4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.android.wm.shell.miuimultiwinswitch.IMultiwinSwitchListener"

    .line 2
    return-object p0
    .line 4
.end method

.method public onMultiwinSwitchStart(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.miuimultiwinswitch.IMultiwinSwitchListener"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p1, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 25
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 30
    throw p0
    .line 33
.end method

.method public onSingleOpenDragEnd(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.miuimultiwinswitch.IMultiwinSwitchListener"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p1, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x3

    .line 22
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 26
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 31
    throw p0
    .line 34
.end method

.method public onSingleOpenDragStart()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.miuimultiwinswitch.IMultiwinSwitchListener"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 15
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x2

    .line 19
    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 23
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 28
    throw p0
    .line 31
.end method
