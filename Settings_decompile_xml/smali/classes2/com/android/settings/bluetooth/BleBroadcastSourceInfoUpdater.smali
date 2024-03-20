.class public abstract Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;
.super Ljava/lang/Object;
.source "BleBroadcastSourceInfoUpdater.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field protected final mBleSourceInfoPreferenceCallback:Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreferenceCallback;

.field protected final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field protected mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field protected mPrefContext:Landroid/content/Context;

.field protected final mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field final mSourceInfoEntryListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

.field protected final mVendorCachedDevice:Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;


# direct methods
.method public static synthetic $r8$lambda$hNEl5tkvZqx7RC6Sv-qCqrLWUGU(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->lambda$new$0(Lcom/android/settings/widget/GearPreference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreferenceCallback;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 81
    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreferenceCallback;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreferenceCallback;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mSourceInfoEntryListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    .line 87
    iput-object p3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mPrefContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 90
    invoke-static {p3, v0}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->getVendorCachedBluetoothDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mVendorCachedDevice:Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;

    .line 91
    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 92
    iput-object p2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mBleSourceInfoPreferenceCallback:Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreferenceCallback;

    .line 93
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mPreferenceMap:Ljava/util/Map;

    .line 94
    iget-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mPrefContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 95
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->launchSourceInfoDetails(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method protected addPreference(Ljava/lang/Integer;Landroid/bluetooth/BleBroadcastSourceInfo;)V
    .locals 8

    .line 186
    invoke-virtual {p2}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    .line 187
    invoke-virtual {p2}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    .line 188
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BleBroadcastSourceInfoUpdater"

    if-nez v0, :cond_1

    const-string/jumbo v0, "source info addition"

    .line 189
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mPrefContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v7, 0x1

    move-object v2, v0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;Ljava/lang/Integer;I)V

    .line 196
    iget-object p2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mSourceInfoEntryListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 197
    instance-of p2, p0, Landroidx/preference/Preference$OnPreferenceClickListener;

    if-eqz p2, :cond_0

    .line 198
    move-object p2, p0

    check-cast p2, Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "source info newly added: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mBleSourceInfoPreferenceCallback:Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreferenceCallback;

    invoke-interface {p0, v0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreferenceCallback;->onBroadcastSourceInfoAdded(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->getBleBroadcastSourceInfo()Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {v0, p2}, Landroid/bluetooth/BleBroadcastSourceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No change in SI"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "source info Updated: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->setBleBroadcastSourceInfo(Landroid/bluetooth/BleBroadcastSourceInfo;)V

    :goto_0
    return-void
.end method

.method public forceUpdate()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v1, "BleBroadcastSourceInfoUpdater"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mVendorCachedDevice:Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;

    .line 127
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->getNumberOfBleBroadcastReceiverStates()I

    move-result v0

    if-lez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mVendorCachedDevice:Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;

    .line 129
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/VendorCachedBluetoothDevice;->getAllBleBroadcastreceiverStates()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "srcInfos is null"

    .line 131
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "srcInfos size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mPreferenceMap size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v2, "New srcInfos size is same with previous"

    .line 136
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "force remove all soource infos entries before updating"

    .line 139
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->removeAllBleBroadcastSourceInfosFromPreference()V

    .line 142
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BleBroadcastSourceInfo;

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->update(Ljava/lang/Integer;Landroid/bluetooth/BleBroadcastSourceInfo;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "remove all the preferences as there are no rcvr states"

    .line 146
    invoke-static {v1, v0}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->removeAllBleBroadcastSourceInfosFromPreference()V

    :cond_3
    return-void
.end method

.method protected launchSourceInfoDetails(Landroidx/preference/Preference;)V
    .locals 4

    .line 249
    check-cast p1, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;

    .line 250
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->getBleBroadcastSourceInfo()Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreference;->getSourceInfoIndex()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 255
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 256
    iget-object v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 257
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_address"

    .line 256
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "broadcast_source_info"

    .line 258
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "broadcast_source_index"

    .line 260
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoDetailsFragment;

    .line 264
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 265
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->source_info_details_title:I

    .line 266
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2

    const-string v0, "BleBroadcastSourceInfoUpdater"

    const-string/jumbo v1, "onBluetoothStateChanged"

    .line 115
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->removeAllBleBroadcastSourceInfosFromPreference()V

    :cond_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 2

    const-string v0, "BleBroadcastSourceInfoUpdater"

    const-string/jumbo v1, "onDeviceAttributesChanged"

    .line 164
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BroadcastScanAssistanceUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->forceUpdate()V

    return-void
.end method

.method public registerCallback()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->forceUpdate()V

    return-void
.end method

.method public removeAllBleBroadcastSourceInfosFromPreference()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 153
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 157
    iget-object v2, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mBleSourceInfoPreferenceCallback:Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreferenceCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-interface {v2, v1}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoPreferenceCallback;->onBroadcastSourceInfoRemoved(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setPrefContext(Landroid/content/Context;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mPrefContext:Landroid/content/Context;

    return-void
.end method

.method public unregisterCallback()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    return-void
.end method

.method protected update(Ljava/lang/Integer;Landroid/bluetooth/BleBroadcastSourceInfo;)V
    .locals 0

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/BleBroadcastSourceInfoUpdater;->addPreference(Ljava/lang/Integer;Landroid/bluetooth/BleBroadcastSourceInfo;)V

    return-void
.end method
