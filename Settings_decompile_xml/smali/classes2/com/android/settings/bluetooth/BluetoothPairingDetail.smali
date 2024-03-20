.class public Lcom/android/settings/bluetooth/BluetoothPairingDetail;
.super Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;
.source "BluetoothPairingDetail.java"


# static fields
.field static final KEY_AVAIL_DEVICES:Ljava/lang/String; = "available_devices"

.field static final KEY_FOOTER_PREF:Ljava/lang/String; = "footer_preference"


# instance fields
.field mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceListKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "available_devices"

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 133
    sget p0, Lcom/android/settings/R$string;->help_url_bluetooth:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "BluetoothPairingDetail"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x3fa

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 143
    sget p0, Lcom/android/settings/R$xml;->bluetooth_pairing_detail:I

    return p0
.end method

.method public initPreferencesFromPreferenceScreen()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->initPreferencesFromPreferenceScreen()V

    const-string v0, "footer_preference"

    .line 94
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 p0, 0x0

    .line 95
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 59
    const-class p1, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 127
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanEnabled:Z

    or-int/2addr p1, v0

    .line 128
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiProgressCategory;->setProgress(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->onStart()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "BluetoothPairingDetail"

    const-string v0, "Bluetooth is not supported on this device"

    .line 72
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/MiuiProgressCategory;->setProgress(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->onStop()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "BluetoothPairingDetail"

    const-string v0, "Bluetooth is not supported on this device"

    .line 83
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->stop()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    new-instance p1, Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    return-void
.end method

.method public updateContent(I)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->updateContent(I)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 113
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePairingDetailBase;->mInitialScanStarted:Z

    if-eqz p1, :cond_0

    .line 115
    sget-object p1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    .line 118
    :cond_0
    sget-object p1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 119
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->updateFooterPreference(Landroidx/preference/Preference;)V

    .line 120
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->start()V

    :cond_1
    return-void
.end method
