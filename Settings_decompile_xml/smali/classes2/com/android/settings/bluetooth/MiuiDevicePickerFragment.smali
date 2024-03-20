.class public Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;
.super Lcom/android/settings/bluetooth/DevicePickerFragment;
.source "MiuiDevicePickerFragment.java"


# instance fields
.field private mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 86
    sget p0, Lcom/android/settings/R$layout;->preference_bt_icon_no_widget:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public initPreferencesFromPreferenceScreen()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->initPreferencesFromPreferenceScreen()V

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 27
    new-instance v0, Lcom/android/settings/MiuiSearchDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/MiuiSearchDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;

    .line 28
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 33
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez p2, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p2

    const/16 v0, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v2

    .line 36
    :goto_0
    sget v0, Lcom/android/settings/R$string;->bluetooth_search_for_devices:I

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSearchDrawable;->getSearchIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 39
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 40
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    if-nez p2, :cond_2

    .line 42
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->updateProgressUi(Z)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 56
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 59
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->disableScanning()V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->removeAllUnbondedDevices()V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->enableScanning()V

    :cond_2
    :goto_0
    return v1
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->onScanningStateChanged(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->invalidateOptionsMenu()V

    return-void
.end method

.method removeAllUnbondedDevices()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 91
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 97
    sget-object v3, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v1, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected updateProgressUi(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 48
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;

    invoke-virtual {p0}, Lcom/android/settings/MiuiAnimationController;->playAnimation()V

    goto :goto_0

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiDevicePickerFragment;->mSearchIcon:Lcom/android/settings/MiuiSearchDrawable;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSearchDrawable;->stopAnimation()V

    :goto_0
    return-void
.end method
