.class Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/sosc/ISoScSplitScreen;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2
    return-object p0
    .line 4
.end method

.method public exitSplitScreen(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p1, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x6

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

.method public exitSplitScreenOnHide(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p1, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x7

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

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 2
    return-object p0
    .line 4
.end method

.method public getSoScSplitInfo()Landroid/os/Bundle;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 10
    move-result-object v1

    .line 13
    :try_start_0
    const-string v2, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 19
    const/16 v2, 0x18

    .line 21
    const/4 v3, 0x0

    .line 23
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 24
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 27
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 35
    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 41
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    throw p0
    .line 52
.end method

.method public onGestureEnd(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p1, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/16 v2, 0x1a

    .line 22
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    throw p0
    .line 35
.end method

.method public onGestureStart(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p1, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/16 v2, 0x19

    .line 22
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    throw p0
    .line 35
.end method

.method public onGoingToRecentsLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 10
    move-result-object v1

    .line 13
    :try_start_0
    const-string v2, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 23
    const/16 p1, 0xe

    .line 25
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    sget-object p0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, [Landroid/view/RemoteAnimationTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    return-object p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    throw p0
    .line 55
.end method

.method public onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 10
    move-result-object v1

    .line 13
    :try_start_0
    const-string v2, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 23
    const/16 p1, 0xf

    .line 25
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 30
    sget-object p0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, [Landroid/view/RemoteAnimationTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    return-object p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    throw p0
    .line 55
.end method

.method public registerSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p1, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x2

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

.method public removeFromSideStage(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p1, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x5

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

.method public removeTaskFromSplit(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p1, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/16 v2, 0x15

    .line 22
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    throw p0
    .line 35
.end method

.method public setSplitRatio(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p1, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/16 v2, 0x17

    .line 22
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    throw p0
    .line 35
.end method

.method public snapSplitToNextRatio(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p1, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/16 v2, 0x16

    .line 22
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    throw p0
    .line 35
.end method

.method public startIntent(Landroid/app/PendingIntent;ILandroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 22
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 28
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 31
    const/4 p1, 0x0

    .line 33
    const/4 p2, 0x1

    .line 34
    const/16 p3, 0xa

    .line 35
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    throw p0
    .line 48
.end method

.method public startIntentAndTask(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 22
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 28
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 34
    invoke-virtual {v0, p8, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 40
    const/4 p1, 0x0

    .line 42
    const/4 p2, 0x1

    .line 43
    const/16 p3, 0x11

    .line 44
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    throw p0
    .line 57
.end method

.method public startIntentAndTaskWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 22
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 28
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 34
    invoke-virtual {v0, p8, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 40
    const/4 p1, 0x0

    .line 42
    const/4 p2, 0x1

    .line 43
    const/16 p3, 0xd

    .line 44
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 54
    throw p0
    .line 57
.end method

.method public startIntents(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 22
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 25
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 28
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {v0, p7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 34
    invoke-virtual {v0, p8, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeFloat(F)V

    .line 43
    invoke-virtual {v0, p11, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 46
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 49
    const/4 p1, 0x0

    .line 51
    const/4 p2, 0x1

    .line 52
    const/16 p3, 0x14

    .line 53
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 58
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    throw p0
    .line 66
.end method

.method public startIntentsWithLegacyTransition(Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;Landroid/app/PendingIntent;ILandroid/content/pm/ShortcutInfo;Landroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 22
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 25
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 28
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-virtual {v0, p7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 34
    invoke-virtual {v0, p8, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeFloat(F)V

    .line 43
    invoke-virtual {v0, p11, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 46
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 49
    const/4 p1, 0x0

    .line 51
    const/4 p2, 0x1

    .line 52
    const/16 p3, 0x13

    .line 53
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 58
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    throw p0
    .line 66
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    const/4 p1, 0x0

    .line 24
    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 25
    invoke-virtual {v0, p5, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 28
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 31
    const/4 p1, 0x0

    .line 33
    const/4 p2, 0x1

    .line 34
    const/16 p3, 0x9

    .line 35
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 40
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 45
    throw p0
    .line 48
.end method

.method public startShortcutAndTask(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 19
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 25
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 31
    invoke-virtual {v0, p7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 37
    const/4 p1, 0x0

    .line 39
    const/4 p2, 0x1

    .line 40
    const/16 p3, 0x12

    .line 41
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p0
    .line 54
.end method

.method public startShortcutAndTaskWithLegacyTransition(Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 19
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 25
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 31
    invoke-virtual {v0, p7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 37
    const/4 p1, 0x0

    .line 39
    const/4 p2, 0x1

    .line 40
    const/16 p3, 0x10

    .line 41
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p0
    .line 54
.end method

.method public startSplitWithIntentsForMiui(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/window/RemoteTransition;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 19
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 22
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 25
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 28
    const/4 p1, 0x0

    .line 30
    const/4 p2, 0x1

    .line 31
    const/16 p3, 0x1c

    .line 32
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 42
    throw p0
    .line 45
.end method

.method public startTask(IILandroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    const/4 p1, 0x0

    .line 21
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 22
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 25
    const/4 p1, 0x0

    .line 27
    const/4 p2, 0x1

    .line 28
    const/16 p3, 0x8

    .line 29
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 34
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    throw p0
    .line 42
.end method

.method public startTasks(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    const/4 p1, 0x0

    .line 18
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 19
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 25
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 31
    invoke-virtual {v0, p7, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 37
    const/4 p1, 0x0

    .line 39
    const/4 p2, 0x1

    .line 40
    const/16 p3, 0xb

    .line 41
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p0
    .line 54
.end method

.method public startTasksWithLegacyTransition(ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    const/4 p1, 0x0

    .line 18
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 19
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v0, p4, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 25
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 31
    invoke-virtual {v0, p7, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 34
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 37
    const/4 p1, 0x0

    .line 39
    const/4 p2, 0x1

    .line 40
    const/16 p3, 0xc

    .line 41
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    throw p0
    .line 54
.end method

.method public unregisterSoScSplitScreenListener(Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

.method public updateDividerFixedState(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreen"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreen$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 18
    const/4 p1, 0x0

    .line 20
    const/4 v1, 0x1

    .line 21
    const/16 v2, 0x1b

    .line 22
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    throw p0
    .line 35
.end method
