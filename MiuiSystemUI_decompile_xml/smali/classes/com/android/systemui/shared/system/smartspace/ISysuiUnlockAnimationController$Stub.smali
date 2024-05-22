.class public abstract Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController$Stub;
.super Landroid/os/Binder;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController"

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
    const-string v0, "com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController"

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
    if-eq p1, v2, :cond_5

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
    sget-object p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->CREATOR:Lcom/android/systemui/shared/system/smartspace/SmartspaceState$CREATOR;

    .line 30
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 35
    check-cast p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 38
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 42
    move-result-object p1

    .line 45
    if-nez p1, :cond_3

    .line 46
    const/4 p1, 0x0

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const-string p3, "com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController"

    .line 50
    invoke-interface {p1, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 52
    move-result-object p3

    .line 55
    if-eqz p3, :cond_4

    .line 56
    instance-of p4, p3, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    .line 58
    if-eqz p4, :cond_4

    .line 60
    move-object p1, p3

    .line 62
    check-cast p1, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    .line 63
    goto :goto_0

    .line 65
    :cond_4
    new-instance p3, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    .line 66
    invoke-direct {p3, p1}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 68
    move-object p1, p3

    .line 71
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 72
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->launcherUnlockController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController;

    .line 77
    :goto_1
    return v1

    .line 79
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v1
    .line 83
.end method
