.class public Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SavedTwsDeviceGroupController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;


# static fields
.field private static final KEY:Ljava/lang/String; = "saved_tws_device_list"


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

.field mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "saved_tws_device_list"

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    move-result-object v0

    .line 92
    invoke-interface {v0, p1, p0}, Lcom/android/settings/overlay/DockUpdaterFeatureProvider;->getSavedDockUpdater(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)Lcom/android/settings/connecteddevice/dock/DockUpdater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "saved_tws_device_list"

    .line 110
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    .line 114
    iget-object p0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {p0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->forceUpdate()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 120
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
    const-string/jumbo p0, "saved_tws_device_list"

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

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    .line 147
    new-instance v0, Lcom/android/settings/bluetooth/SavedBluetoothTwsDeviceUpdater;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result p1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/settings/bluetooth/SavedBluetoothTwsDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;I)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    return-void
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

    .line 132
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 141
    iget-object p1, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    .line 98
    iget-object p0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {p0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->registerCallback()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    .line 104
    iget-object p0, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {p0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->unregisterCallback()V

    return-void
.end method

.method public setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    return-void
.end method

.method public setSavedDockUpdater(Lcom/android/settings/connecteddevice/dock/DockUpdater;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->mSavedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
