.class Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/sosc/ISoScSplitScreenListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2
    return-object p0
    .line 4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    .line 2
    return-object p0
    .line 4
.end method

.method public onPreSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZZII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

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
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 28
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 31
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 40
    const/4 p1, 0x0

    .line 42
    const/4 p2, 0x1

    .line 43
    const/4 p3, 0x4

    .line 44
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 48
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 53
    throw p0
    .line 56
.end method

.method public onSoScStateChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;ZII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

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
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 28
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 31
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 34
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 43
    const/4 p1, 0x0

    .line 45
    const/4 p2, 0x1

    .line 46
    const/4 p3, 0x3

    .line 47
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 51
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 56
    throw p0
    .line 59
.end method

.method public onStagePositionChanged(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    const/4 p1, 0x0

    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 28
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 33
    throw p0
    .line 36
.end method

.method public onTaskStageChanged(IIZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 24
    const/4 p1, 0x0

    .line 26
    const/4 p2, 0x1

    .line 27
    const/4 p3, 0x2

    .line 28
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    throw p0
    .line 40
.end method

.method public setSplitScreenResizing(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    move-result-object v0

    .line 9
    :try_start_0
    const-string v1, "com.android.wm.shell.sosc.ISoScSplitScreenListener"

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/ISoScSplitScreenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
