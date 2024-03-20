.class public abstract Lcom/android/bluetooth/ble/app/IWifiInfoService$Stub;
.super Landroid/os/Binder;
.source "IWifiInfoService.java"

# interfaces
.implements Lcom/android/bluetooth/ble/app/IWifiInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/IWifiInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/app/IWifiInfoService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deleteSaveWifiConfig:I = 0x6

.field static final TRANSACTION_disableCurrentWifi:I = 0x2

.field static final TRANSACTION_getCurrentSSID:I = 0x5

.field static final TRANSACTION_getWifiInfo:I = 0x1

.field static final TRANSACTION_setSoftApConfiguration:I = 0x4

.field static final TRANSACTION_startScan:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.bluetooth.ble.app.IWifiInfoService"

    .line 41
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IWifiInfoService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.bluetooth.ble.app.IWifiInfoService"

    .line 52
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    instance-of v1, v0, Lcom/android/bluetooth/ble/app/IWifiInfoService;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Lcom/android/bluetooth/ble/app/IWifiInfoService;

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lcom/android/bluetooth/ble/app/IWifiInfoService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/IWifiInfoService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "deleteSaveWifiConfig"

    return-object p0

    :pswitch_1
    const-string p0, "getCurrentSSID"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "setSoftApConfiguration"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "startScan"

    return-object p0

    :pswitch_4
    const-string p0, "disableCurrentWifi"

    return-object p0

    :pswitch_5
    const-string p0, "getWifiInfo"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public abstract synthetic deleteSaveWifiConfig(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic disableCurrentWifi()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic getCurrentSSID()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public getMaxTransactionId()I
    .locals 0

    .line 0
    const/4 p0, 0x5

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 100
    invoke-static {p1}, Lcom/android/bluetooth/ble/app/IWifiInfoService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getWifiInfo(Lcom/android/bluetooth/ble/app/IWifiInfoCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.bluetooth.ble.app.IWifiInfoService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 174
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IWifiInfoService$Stub;->deleteSaveWifiConfig(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 166
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/IWifiInfoService$Stub;->getCurrentSSID()Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 160
    invoke-virtual/range {v2 .. v9}, Lcom/android/bluetooth/ble/app/IWifiInfoService$Stub;->setSoftApConfiguration(Ljava/lang/String;IIJLjava/lang/String;Z)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 137
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, p1, p4}, Lcom/android/bluetooth/ble/app/IWifiInfoService$Stub;->startScan(Ljava/lang/String;I)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 130
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/IWifiInfoService$Stub;->disableCurrentWifi()V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 121
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/ble/app/IWifiInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IWifiInfoCallback;

    move-result-object p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IWifiInfoService$Stub;->getWifiInfo(Lcom/android/bluetooth/ble/app/IWifiInfoCallback;)I

    move-result p0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 112
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract synthetic setSoftApConfiguration(Ljava/lang/String;IIJLjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic startScan(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
