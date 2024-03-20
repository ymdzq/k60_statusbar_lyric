.class public Lcom/android/settings/bluetooth/BluetoothAudioShareController;
.super Ljava/lang/Object;
.source "BluetoothAudioShareController.java"


# instance fields
.field protected mActivityContext:Landroid/content/Context;

.field protected mAddress:Ljava/lang/String;

.field private mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field protected mCachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field protected mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p2}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 32
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mActivityContext:Landroid/content/Context;

    const-string p2, "android.bluetooth.device.extra.DEVICE"

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 34
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mAddress:Ljava/lang/String;

    .line 36
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_1

    .line 38
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDeviceName:Ljava/lang/String;

    .line 43
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 44
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mCachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not find BluetoothDevice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not obtain LocalBluetoothManager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public deviceEquals(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public isBonded()Z
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCancel()V
    .locals 2

    const-string v0, "BtAudioShareController"

    const-string v1, "Pairing dialog canceled"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothAudioShareController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController$1;-><init>(Lcom/android/settings/bluetooth/BluetoothAudioShareController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onPair()V
    .locals 2

    const-string v0, "BtAudioShareController"

    const-string v1, "Pairing dialog accepted"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    return-void
.end method
