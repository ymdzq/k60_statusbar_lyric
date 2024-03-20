.class public Lcom/android/settings/wifi/MiuiTetherDeviceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiTetherDeviceSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;,
        Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;
    }
.end annotation


# instance fields
.field private isUpdateOnceNeeded:Z

.field private mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

.field private mBlockList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockListPreference:Landroidx/preference/Preference;

.field private mBlockListPrefs:Landroid/content/SharedPreferences;

.field private mCategory:Landroidx/preference/PreferenceCategory;

.field private mClients:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/net/TetheredClient;",
            ">;"
        }
    .end annotation
.end field

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;

.field private mDialogShow:Z

.field private mHandler:Landroid/os/Handler;

.field private mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private final mLock:Ljava/lang/Object;

.field private mMaxNumberOfClients:I

.field private mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

.field private mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

.field private mTm:Landroid/net/TetheringManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetisUpdateOnceNeeded(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->isUpdateOnceNeeded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBlockList(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mBlockList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCm(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mCm:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedDevices(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mConnectedDevices:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMiuiWifiManager(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Landroid/net/wifi/MiuiWifiManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManager(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisUpdateOnceNeeded(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->isUpdateOnceNeeded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClients(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Ljava/util/Collection;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mClients:Ljava/util/Collection;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectedDevices(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mConnectedDevices:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDialogShow(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mDialogShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddDevicesPreference(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->addDevicesPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTetherConnectedDevices(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getTetherConnectedDevices()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msaveInfoToSharedPreferences(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Landroid/net/MacAddress;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->saveInfoToSharedPreferences(Landroid/net/MacAddress;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStaConnectStatus(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->updateStaConnectStatus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->isUpdateOnceNeeded:Z

    .line 92
    new-instance v0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$1;-><init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 103
    new-instance v0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$2;-><init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    return-void
.end method

.method private addDevicesPreference()V
    .locals 6

    .line 220
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "connected_devices"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mClients:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/TetheredClient;

    .line 229
    invoke-virtual {v2}, Landroid/net/TetheredClient;->getTetheringType()I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v2}, Landroid/net/TetheredClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mBlockList:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 234
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_1

    .line 240
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->createPreference(Landroid/net/TetheredClient;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 243
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 247
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 243
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private buildMaxConnectedDevicesNumber(I)Landroid/net/wifi/SoftApConfiguration;
    .locals 2

    .line 286
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-direct {v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMaxNumberOfClients(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    return-object p1
.end method

.method private cleanDeviceInfoInSharedPreferences()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mBlockListPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mBlockList:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->removeInfoFromSharedPreferences(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createPreference(Landroid/net/TetheredClient;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;
    .locals 5

    .line 190
    new-instance v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 193
    :goto_0
    invoke-virtual {p1}, Landroid/net/TetheredClient;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/net/TetheredClient;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetheredClient$AddressInfo;

    .line 195
    invoke-virtual {v1}, Landroid/net/TetheredClient$AddressInfo;->getHostname()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->isGarbledCode(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p1}, Landroid/net/TetheredClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 198
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/net/TetheredClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    return-object v0
.end method

.method private getBlockList()V
    .locals 3

    .line 270
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiUtils;->getHotSpotMacBlackSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mBlockList:Ljava/util/Set;

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "tetherBlockListPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mBlockListPrefs:Landroid/content/SharedPreferences;

    .line 272
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->cleanDeviceInfoInSharedPreferences()V

    return-void
.end method

.method private getMaxNumberOfClients()I
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mMaxNumberOfClients:I

    return v0
.end method

.method private getTetherConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

    if-nez v0, :cond_1

    .line 210
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/net/wifi/AmlMiuiWifiManager;->getConnectedWifiClient()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 216
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 213
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/MiuiWifiManager;->getConnectedWifiClient()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private initTethering()V
    .locals 1

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mHandler:Landroid/os/Handler;

    const-string v0, "connectivity"

    .line 155
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v0, "tethering"

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mTm:Landroid/net/TetheringManager;

    const-string/jumbo v0, "wifi"

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "MiuiWifiService"

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/MiuiWifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

    const-string v0, "AmlMiuiWifiService"

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/AmlMiuiWifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mClients:Ljava/util/Collection;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mConnectedDevices:Ljava/util/List;

    .line 165
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getBlockList()V

    return-void
.end method

.method private isChineseEncoding(C)Z
    .locals 0

    .line 495
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 496
    sget-object p1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, p1, :cond_1

    sget-object p1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, p1, :cond_1

    sget-object p1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, p1, :cond_1

    sget-object p1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, p1, :cond_1

    sget-object p1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, p1, :cond_1

    sget-object p1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isGarbledCode(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "\\s*|t*|r*|n*"

    .line 505
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 509
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    .line 510
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\p{P}"

    .line 511
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "[\\+\\-]"

    .line 512
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 515
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 516
    aget-char v4, p1, v2

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    aget-char v4, p1, v2

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->isChineseEncoding(C)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    return v1
.end method

.method private removeInfoFromSharedPreferences(Ljava/lang/String;)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mBlockListPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 265
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private restoreDisDialog()V
    .locals 5

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "saved_bundle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v2, "show_dialog"

    .line 337
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mDialogShow:Z

    if-eqz v2, :cond_1

    .line 339
    new-instance v2, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;

    const-string/jumbo v3, "save_device_mac"

    .line 340
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v3

    const-string/jumbo v4, "save_device_name"

    .line 341
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;-><init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Landroid/net/MacAddress;Ljava/lang/String;Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog-IA;)V

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mDialog:Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;

    .line 342
    invoke-virtual {v2}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;->show()V

    :cond_1
    return-void
.end method

.method private saveInfoToSharedPreferences(Landroid/net/MacAddress;Ljava/lang/String;)V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mBlockListPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 277
    invoke-virtual {p1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private updateStaConnectStatus()V
    .locals 4

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$3;-><init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p0, "MiuiTetherDeviceSettings"

    const-string v0, "MiuiTetherDeviceSettings is not releated to Activity, so ignore it"

    .line 385
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 364
    const-class p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->initTethering()V

    .line 127
    sget p1, Lcom/android/settings/R$xml;->miui_tether_devices:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "connected_devices"

    .line 128
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "block_list"

    .line 129
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mBlockListPreference:Landroidx/preference/Preference;

    const-string p1, "max_number"

    .line 130
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$plurals;->string_int:I

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->string_unlimited:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 139
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getMaxNumberOfClients()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x7d7

    goto :goto_0

    .line 144
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mMaxNumberOfClients:I

    .line 143
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->addDevicesPreference()V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->restoreDisDialog()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 293
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 294
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->buildMaxConnectedDevicesNumber(I)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    .line 296
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    const/16 p2, 0xd

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 301
    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$System;->setRestartWifiApAfterConfigChange(Landroid/content/Context;Z)V

    .line 302
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 303
    new-instance p2, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$restartWifiAp;-><init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Landroid/content/Context;)V

    new-array p0, v1, [Ljava/lang/Void;

    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 7

    .line 349
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mBlockListPreference:Landroidx/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 350
    const-class v0, Lcom/android/settings/wifi/MiuiTetherBlockList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v6, Lcom/android/settings/R$string;->block_list_title:I

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_2

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eq p2, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mDialogShow:Z

    if-nez v0, :cond_3

    .line 352
    new-instance v0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;

    .line 353
    invoke-virtual {p2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 354
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v1

    .line 355
    invoke-virtual {p2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;-><init>(Lcom/android/settings/wifi/MiuiTetherDeviceSettings;Landroid/net/MacAddress;Ljava/lang/String;Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog-IA;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mDialog:Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;

    .line 356
    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;->show()V

    .line 359
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 328
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 330
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->getBlockList()V

    .line 331
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->updateStaConnectStatus()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 314
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mDialog:Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "show_dialog"

    .line 318
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mDialogShow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mDialog:Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;->getBlockDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "save_device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mDialog:Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiTetherDeviceSettings$AddDeviceToBlockListDialog;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "save_device_mac"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "saved_bundle"

    .line 322
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 170
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mTm:Landroid/net/TetheringManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->tether_no_device_connected:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 184
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mTm:Landroid/net/TetheringManager;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {v0, p0}, Landroid/net/TetheringManager;->unregisterTetheringEventCallback(Landroid/net/TetheringManager$TetheringEventCallback;)V

    return-void
.end method
