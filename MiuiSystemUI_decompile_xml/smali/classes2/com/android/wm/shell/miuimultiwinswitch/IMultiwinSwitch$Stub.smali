.class public abstract Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitch$Stub;
.super Landroid/os/Binder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitch;


# static fields
.field static final TRANSACTION_registerMultiwinSwitchListener:I = 0x2

.field static final TRANSACTION_unregisterMultiwinSwitchListener:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.wm.shell.miuimultiwinswitch.IMultiwinSwitch"

    .line 5
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    return-void
    .line 10
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitch;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.android.wm.shell.miuimultiwinswitch.IMultiwinSwitch"

    .line 6
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    instance-of v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitch;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitch;

    .line 18
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitch$Stub$Proxy;

    .line 21
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitch$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    return-object v0
    .line 26
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .line 1
    const-string v0, "com.android.wm.shell.miuimultiwinswitch.IMultiwinSwitch"

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
    const/4 v0, 0x2

    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    const/4 v0, 0x3

    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 26
    move-result p0

    .line 29
    return p0

    .line 30
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 31
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener;

    .line 35
    move-result-object p1

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 39
    invoke-interface {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitch;->unregisterMultiwinSwitchListener(Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener;)V

    .line 42
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 46
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener;

    .line 50
    move-result-object p1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 54
    invoke-interface {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitch;->registerMultiwinSwitchListener(Lcom/android/wm/shell/miuimultiwinswitch/IMultiwinSwitchListener;)V

    .line 57
    :goto_0
    return v1

    .line 60
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return v1
    .line 64
.end method
