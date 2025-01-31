.class public Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GroupBluetoothDevicesConnectedController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;


# static fields
.field private static final KEY:Ljava/lang/String; = "group_options_connected_devices"

.field private static final TAG:Ljava/lang/String; = "GroupBluetoothDevicesConnectedController"


# instance fields
.field private mGroupDeviceUpdater:Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;

.field private mGroupId:I

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1

    const-string v0, "group_options_connected_devices"

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    iput p4, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mGroupId:I

    .line 65
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 66
    new-instance p1, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 67
    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result p2

    iget p4, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mGroupId:I

    invoke-direct {p1, p3, p0, p2, p4}, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;II)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mGroupDeviceUpdater:Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "group_options_connected_devices"

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mGroupDeviceUpdater:Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    .line 87
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mGroupDeviceUpdater:Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 93
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "group_options_connected_devices"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 113
    iget-object p1, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 114
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mGroupDeviceUpdater:Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedController;->mGroupDeviceUpdater:Lcom/android/settings/bluetooth/GroupBluetoothDevicesConnectedUpdater;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
