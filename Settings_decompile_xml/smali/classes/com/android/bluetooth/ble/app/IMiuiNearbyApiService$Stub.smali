.class public abstract Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;
.super Landroid/os/Binder;
.source "IMiuiNearbyApiService.java"

# interfaces
.implements Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addBonedDevice:I = 0x9

.field static final TRANSACTION_clearNearbyConnectionConfig:I = 0x4

.field static final TRANSACTION_clearNearbyScanConfig:I = 0x3

.field static final TRANSACTION_connectHotspotForEasyTether:I = 0x15

.field static final TRANSACTION_createBondWithoutDialog:I = 0x7

.field static final TRANSACTION_getDeviceExitTimeStamp:I = 0xc

.field static final TRANSACTION_getEasyTetherConnectedHotspotEntry:I = 0x16

.field static final TRANSACTION_getEasyTetherConnectingHotspotEntry:I = 0x17

.field static final TRANSACTION_getEasyTetherHotspotEntries:I = 0x14

.field static final TRANSACTION_getMiuiIgnoreDeviceList:I = 0xd

.field static final TRANSACTION_getVersionCode:I = 0x11

.field static final TRANSACTION_getWifiMacIgnore:I = 0xe

.field static final TRANSACTION_getWifiMacIgnoreTime:I = 0xf

.field static final TRANSACTION_getWifiPassword:I = 0x6

.field static final TRANSACTION_register:I = 0x12

.field static final TRANSACTION_removeBonedDevice:I = 0xa

.field static final TRANSACTION_setDeviceExitTimeStamp:I = 0xb

.field static final TRANSACTION_setDialogState:I = 0x5

.field static final TRANSACTION_setDialogSwitchOnOff:I = 0x8

.field static final TRANSACTION_setNearbyConnectionListenerConfig:I = 0x2

.field static final TRANSACTION_setNearbyScanConfig:I = 0x1

.field static final TRANSACTION_setWifiMacIgnore:I = 0x10

.field static final TRANSACTION_unregister:I = 0x13


# direct methods
.method public static synthetic $r8$lambda$K5dQpS1NERtM4zXcYP_J5GbhoEU(Landroid/os/Parcel;Ljava/lang/String;Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.bluetooth.ble.app.IMiuiNearbyApiService"

    .line 116
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.bluetooth.ble.app.IMiuiNearbyApiService"

    .line 127
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    instance-of v1, v0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    if-eqz v1, :cond_1

    .line 129
    check-cast v0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService;

    return-object v0

    .line 131
    :cond_1
    new-instance v0, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 0
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "getEasyTetherConnectingHotspotEntry"

    return-object p0

    :pswitch_1
    const-string p0, "getEasyTetherConnectedHotspotEntry"

    return-object p0

    :pswitch_2
    const-string p0, "connectHotspotForEasyTether"

    return-object p0

    :pswitch_3
    const-string p0, "getEasyTetherHotspotEntries"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "unregister"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "register"

    return-object p0

    :pswitch_6
    const-string p0, "getVersionCode"

    return-object p0

    :pswitch_7
    const-string/jumbo p0, "setWifiMacIgnore"

    return-object p0

    :pswitch_8
    const-string p0, "getWifiMacIgnoreTime"

    return-object p0

    :pswitch_9
    const-string p0, "getWifiMacIgnore"

    return-object p0

    :pswitch_a
    const-string p0, "getMiuiIgnoreDeviceList"

    return-object p0

    :pswitch_b
    const-string p0, "getDeviceExitTimeStamp"

    return-object p0

    :pswitch_c
    const-string/jumbo p0, "setDeviceExitTimeStamp"

    return-object p0

    :pswitch_d
    const-string/jumbo p0, "removeBonedDevice"

    return-object p0

    :pswitch_e
    const-string p0, "addBonedDevice"

    return-object p0

    :pswitch_f
    const-string/jumbo p0, "setDialogSwitchOnOff"

    return-object p0

    :pswitch_10
    const-string p0, "createBondWithoutDialog"

    return-object p0

    :pswitch_11
    const-string p0, "getWifiPassword"

    return-object p0

    :pswitch_12
    const-string/jumbo p0, "setDialogState"

    return-object p0

    :pswitch_13
    const-string p0, "clearNearbyConnectionConfig"

    return-object p0

    :pswitch_14
    const-string p0, "clearNearbyScanConfig"

    return-object p0

    :pswitch_15
    const-string/jumbo p0, "setNearbyConnectionListenerConfig"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "setNearbyScanConfig"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;)V
    .locals 0

    .line 459
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 460
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public abstract synthetic addBonedDevice(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public abstract synthetic clearNearbyConnectionConfig()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic clearNearbyScanConfig()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic connectHotspotForEasyTether(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic createBondWithoutDialog(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic getDeviceExitTimeStamp(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic getEasyTetherConnectedHotspotEntry()Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic getEasyTetherConnectingHotspotEntry()Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic getEasyTetherHotspotEntries()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public getMaxTransactionId()I
    .locals 0

    .line 0
    const/16 p0, 0x16

    return p0
.end method

.method public abstract synthetic getMiuiIgnoreDeviceList(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    .line 243
    invoke-static {p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getVersionCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic getWifiMacIgnore(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic getWifiMacIgnoreTime(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic getWifiPassword(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.bluetooth.ble.app.IMiuiNearbyApiService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 249
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 492
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 485
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->getEasyTetherConnectingHotspotEntry()Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    move-result-object p0

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 478
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->getEasyTetherConnectedHotspotEntry()Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;

    move-result-object p0

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 468
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 470
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {p0, p1, p4}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->connectHotspotForEasyTether(Ljava/lang/String;I)V

    .line 473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 452
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->getEasyTetherHotspotEntries()Ljava/util/Map;

    move-result-object p0

    .line 453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-nez p0, :cond_1

    const/4 p0, -0x1

    .line 455
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 457
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    new-instance p1, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto/16 :goto_0

    .line 444
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;

    move-result-object p1

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->unregister(Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 435
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;

    move-result-object p1

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->register(Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;)V

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 427
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->getVersionCode()I

    move-result p0

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 418
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->setWifiMacIgnore(Ljava/lang/String;)I

    move-result p0

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 408
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->getWifiMacIgnoreTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->getWifiMacIgnore(Ljava/lang/String;)Z

    move-result p0

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 388
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->getMiuiIgnoreDeviceList(Ljava/lang/String;)Z

    move-result p0

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 378
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->getDeviceExitTimeStamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, p1, p4}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->setDeviceExitTimeStamp(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 356
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->removeBonedDevice(Ljava/lang/String;)I

    move-result p0

    .line 359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 346
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->addBonedDevice(Ljava/lang/String;)I

    move-result p0

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 336
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->setDialogSwitchOnOff(Z)Z

    move-result p0

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 324
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {p0, p1, p4}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->createBondWithoutDialog(Ljava/lang/String;I)Z

    move-result p0

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 314
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->getWifiPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->setDialogState(Z)I

    move-result p0

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 296
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->clearNearbyConnectionConfig()Z

    move-result p0

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 289
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->clearNearbyScanConfig()Z

    move-result p0

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 278
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, p1, p4}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->setNearbyConnectionListenerConfig(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 264
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/ble/app/IMiuiNearbyScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/bluetooth/ble/app/IMiuiNearbyScanCallback;

    move-result-object p1

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, p1, p4, v0}, Lcom/android/bluetooth/ble/app/IMiuiNearbyApiService$Stub;->setNearbyScanConfig(Lcom/android/bluetooth/ble/app/IMiuiNearbyScanCallback;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1

    .line 255
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract synthetic register(Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic removeBonedDevice(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic setDeviceExitTimeStamp(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic setDialogState(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic setDialogSwitchOnOff(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic setNearbyConnectionListenerConfig(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic setNearbyScanConfig(Lcom/android/bluetooth/ble/app/IMiuiNearbyScanCallback;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic setWifiMacIgnore(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract synthetic unregister(Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
