.class public abstract Lcom/android/bluetooth/ble/app/IMiuiBleOTAService$Stub;
.super Landroid/os/Binder;
.source "IMiuiBleOTAService.java"

# interfaces
.implements Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/app/IMiuiBleOTAService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_checkDFUMode:I = 0x4

.field static final TRANSACTION_checkDeviceFirmware:I = 0x2

.field static final TRANSACTION_checkSupport:I = 0x1

.field static final TRANSACTION_checkUsbDeviceUpdate:I = 0x5

.field static final TRANSACTION_startOta:I = 0x3

.field static final TRANSACTION_startUsbDeviceOTA:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.bluetooth.ble.app.IMiuiBleOTAService"

    .line 45
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.bluetooth.ble.app.IMiuiBleOTAService"

    .line 56
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    instance-of v1, v0, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService;

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "startUsbDeviceOTA"

    return-object p0

    :pswitch_1
    const-string p0, "checkUsbDeviceUpdate"

    return-object p0

    :pswitch_2
    const-string p0, "checkDFUMode"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "startOta"

    return-object p0

    :pswitch_4
    const-string p0, "checkDeviceFirmware"

    return-object p0

    :pswitch_5
    const-string p0, "checkSupport"

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

.method public abstract synthetic checkDFUMode(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic checkDeviceFirmware(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic checkSupport(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic checkUsbDeviceUpdate()Z
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

    .line 104
    invoke-static {p1}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.android.bluetooth.ble.app.IMiuiBleOTAService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 171
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService$Stub;->startUsbDeviceOTA()Z

    move-result p0

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 164
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService$Stub;->checkUsbDeviceUpdate()Z

    move-result p0

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 155
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService$Stub;->checkDFUMode(Ljava/lang/String;)Z

    move-result p0

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 145
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService$Stub;->startOta(Ljava/lang/String;)Z

    move-result p0

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 135
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService$Stub;->checkDeviceFirmware(Ljava/lang/String;)Z

    move-result p0

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 125
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiBleOTAService$Stub;->checkSupport(Ljava/lang/String;)Z

    move-result p0

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return v1

    .line 116
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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

.method public abstract synthetic startOta(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic startUsbDeviceOTA()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
