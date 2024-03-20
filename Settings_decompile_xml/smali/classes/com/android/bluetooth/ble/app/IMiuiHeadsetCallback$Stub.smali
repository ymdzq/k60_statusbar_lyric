.class public abstract Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback$Stub;
.super Landroid/os/Binder;
.source "IMiuiHeadsetCallback.java"

# interfaces
.implements Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_refreshStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.bluetooth.ble.app.IMiuiHeadsetCallback"

    .line 24
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.bluetooth.ble.app.IMiuiHeadsetCallback"

    .line 35
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    instance-of v1, v0, Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback;

    return-object v0

    .line 39
    :cond_1
    new-instance v0, Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo p0, "refreshStatus"

    return-object p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-static {p1}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.bluetooth.ble.app.IMiuiHeadsetCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 84
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 88
    invoke-virtual {p0, p1, p3}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback$Stub;->refreshStatus(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 75
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method

.method public abstract synthetic refreshStatus(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
