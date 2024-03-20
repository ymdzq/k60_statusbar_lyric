.class public Lcom/android/settings/bluetooth/BADevicePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BADevicePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreferenceCallback;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final MAX_DEVICE_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BADevicePreferenceController"


# instance fields
.field private mBleSourceInfoUpdater:Lcom/android/settings/bluetooth/BluetoothBroadcastSourceInfoEntries;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "constructor: KEY"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BADevicePreferenceController"

    invoke-static {p1, p0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    const-string v0, "displayPreference"

    const-string v1, "BADevicePreferenceController"

    .line 83
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BADevicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "registering wth BleSrcInfo updaters"

    .line 89
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 91
    iget-object p0, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mBleSourceInfoUpdater:Lcom/android/settings/bluetooth/BluetoothBroadcastSourceInfoEntries;

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->setPrefContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 70
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
    const/4 p0, 0x2

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
    .locals 1

    .line 78
    new-instance p0, Ljava/lang/String;

    const-string v0, "added_sources"

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

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

.method public init(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    const-string v0, "BADevicePreferenceController"

    const-string v1, "Init"

    .line 112
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iput-object p2, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 114
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourceInfoEntries;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourceInfoEntries;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreferenceCallback;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mBleSourceInfoUpdater:Lcom/android/settings/bluetooth/BluetoothBroadcastSourceInfoEntries;

    const/4 p1, 0x0

    .line 117
    iput p1, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mPreferenceSize:I

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

.method public onBroadcastSourceInfoAdded(Landroidx/preference/Preference;)V
    .locals 3

    const-string/jumbo v0, "onBroadcastSourceInfoAdded"

    const-string v1, "BADevicePreferenceController"

    .line 122
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget v0, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mPreferenceSize:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move-result p1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPreference returns"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget p1, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mPreferenceSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mPreferenceSize:I

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BADevicePreferenceController;->updatePreferenceVisiblity()V

    return-void
.end method

.method public onBroadcastSourceInfoRemoved(Landroidx/preference/Preference;)V
    .locals 3

    const-string/jumbo v0, "onBroadcastSourceInfoRemoved"

    const-string v1, "BADevicePreferenceController"

    .line 134
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget v0, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mPreferenceSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mPreferenceSize:I

    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePreference returns "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BADevicePreferenceController;->updatePreferenceVisiblity()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mBleSourceInfoUpdater:Lcom/android/settings/bluetooth/BluetoothBroadcastSourceInfoEntries;

    if-eqz p0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->registerCallback()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mBleSourceInfoUpdater:Lcom/android/settings/bluetooth/BluetoothBroadcastSourceInfoEntries;

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->unregisterCallback()V

    :cond_0
    return-void
.end method

.method setPreferenceGroup(Landroidx/preference/PreferenceGroup;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method updatePreferenceVisiblity()V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePreferenceVisiblity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mPreferenceSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BADevicePreferenceController"

    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget p0, p0, Lcom/android/settings/bluetooth/BADevicePreferenceController;->mPreferenceSize:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
