.class public Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "MiuiMiscBtListFragment.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/MiuiMiscBtListFragment$CheckAsyncTask;
    }
.end annotation


# static fields
.field static mShowDevicesWithoutNames:Z


# instance fields
.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

.field private mMiBleDeviceManagerInited:Z


# direct methods
.method static bridge synthetic -$$Nest$fputmMiBleDeviceManagerInited(Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mMiBleDeviceManagerInited:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddPreference(Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->addPreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mMiBleDeviceManagerInited:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;ILandroid/content/Intent;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private addPreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    .line 157
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private addPreferencesForActivity()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 147
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->createDevicePreferences(Ljava/util/ArrayList;)V

    return-void
.end method

.method private removeBondedDevices(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    const/4 v0, 0x0

    .line 257
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 258
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    instance-of v2, v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v2, :cond_0

    .line 260
    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 262
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method createDevicePreferences(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 153
    new-instance v0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment$CheckAsyncTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment$CheckAsyncTask;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;)V

    filled-new-array {p1}, [Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    const-string p0, "MiuiMiscBtListFragment"

    const-string p1, "Bluetooth is not supported on this device"

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p1, "persist.bluetooth.showdeviceswithoutnames"

    const/4 v0, 0x0

    .line 56
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mShowDevicesWithoutNames:Z

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment$1;-><init>(Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;)V

    invoke-static {p1, v1}, Lmiui/bluetooth/ble/MiBleDeviceManager;->createManager(Landroid/content/Context;Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;)Lmiui/bluetooth/ble/MiBleDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 74
    sget p1, Lcom/android/settings/R$xml;->device_picker:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 75
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleDeviceManager;->close()V

    .line 81
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    .line 272
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->removeBondedDevices(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 107
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 108
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MiuiMiscBtListFragment"

    const-string/jumbo v1, "set scan mode connectable"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15

    .line 111
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 4

    .line 126
    instance-of v0, p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_1

    .line 127
    instance-of v0, p2, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 128
    move-object v0, p2

    check-cast v0, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    .line 130
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v2, v3}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiBTUtils;->gotoBleProfile(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    return v1

    .line 136
    :cond_0
    check-cast p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 137
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onClicked()V

    return v1

    .line 142
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 88
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MiuiMiscBtListFragment"

    const-string/jumbo v1, "set scan mode connectable and discoverable"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x17

    .line 91
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    :cond_0
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 97
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 99
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 100
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->addPreferencesForActivity()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 118
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method

.method protected updatePreferences()V
    .locals 7

    const/4 v0, 0x0

    .line 239
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 240
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 241
    instance-of v2, v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v2, :cond_0

    .line 242
    move-object v2, v1

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 243
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mMiBleDeviceManagerInited:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    if-eqz v3, :cond_0

    .line 245
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {v3, v4}, Lmiui/bluetooth/ble/MiBleDeviceManager;->getDeviceType(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    new-instance v3, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mMiBleDeviceManager:Lmiui/bluetooth/ble/MiBleDeviceManager;

    sget-boolean v6, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->mShowDevicesWithoutNames:Z

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/android/settings/bluetooth/MiuiBluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lmiui/bluetooth/ble/MiBleDeviceManager;Z)V

    .line 248
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 249
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
