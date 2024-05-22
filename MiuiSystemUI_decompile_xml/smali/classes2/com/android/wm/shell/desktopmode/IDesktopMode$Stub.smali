.class public abstract Lcom/android/wm/shell/desktopmode/IDesktopMode$Stub;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/desktopmode/IDesktopMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.wm.shell.desktopmode.IDesktopMode"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.android.wm.shell.desktopmode.IDesktopMode"

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
    if-eq p1, v2, :cond_3

    .line 18
    if-eq p1, v1, :cond_2

    .line 20
    const/4 v0, 0x2

    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 25
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 30
    move-result p1

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 34
    invoke-interface {p0, p1}, Lcom/android/wm/shell/desktopmode/IDesktopMode;->getVisibleTaskCount(I)I

    .line 37
    move-result p0

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 41
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 48
    move-result p1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 52
    invoke-interface {p0, p1}, Lcom/android/wm/shell/desktopmode/IDesktopMode;->showDesktopApps(I)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    :goto_0
    return v1

    .line 61
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v1
    .line 65
.end method
