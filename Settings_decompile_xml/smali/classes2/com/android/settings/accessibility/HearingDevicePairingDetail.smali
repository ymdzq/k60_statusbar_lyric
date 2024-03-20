.class public Lcom/android/settings/accessibility/HearingDevicePairingDetail;
.super Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;
.source "HearingDevicePairingDetail.java"


# static fields
.field static final KEY_AVAILABLE_HEARING_DEVICES:Ljava/lang/String; = "available_hearing_devices"


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 45
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;-><init>()V

    .line 46
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v4, v3, v4

    new-array v2, v2, [B

    aput-byte v4, v2, v4

    .line 47
    invoke-virtual {v0, v1, v3, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDeviceListKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "available_hearing_devices"

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "HearingDevicePairingDetail"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x7e9

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 94
    sget p0, Lcom/android/settings/R$xml;->hearing_device_pairing_detail:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 55
    const-class p1, Lcom/android/settings/accessibility/ViewAllBluetoothDevicesPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/ViewAllBluetoothDevicesPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/accessibility/ViewAllBluetoothDevicesPreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 84
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const/16 p1, 0xa

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiProgressCategory;->setProgress(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->onStart()V

    .line 61
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "HearingDevicePairingDetail"

    const-string v0, "Bluetooth is not supported on this device"

    .line 62
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/MiuiProgressCategory;->setProgress(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->onStop()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "HearingDevicePairingDetail"

    const-string v0, "Bluetooth is not supported on this device"

    .line 72
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method
