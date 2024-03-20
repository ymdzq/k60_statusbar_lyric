.class public Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiAddDeviceToBlockList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;,
        Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$AddDeviceToBlockListDialog;
    }
.end annotation


# instance fields
.field private isUpdateOnceNeeded:Z

.field private mAccessPointPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/wifi/SavedConnectedDevicePreference;",
            ">;"
        }
    .end annotation
.end field

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

.field private mDialog:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$AddDeviceToBlockListDialog;

.field private mDialogShow:Z

.field private mEditActionMode:Landroid/view/ActionMode;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

.field private mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

.field private mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

.field private mTm:Landroid/net/TetheringManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetisUpdateOnceNeeded(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->isUpdateOnceNeeded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccessPointPreferenceList(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mAccessPointPreferenceList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBlockList(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mBlockList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedDevices(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mConnectedDevices:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEditActionMode(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Landroid/view/ActionMode;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mEditActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMiuiWifiManager(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Landroid/net/wifi/MiuiWifiManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisUpdateOnceNeeded(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->isUpdateOnceNeeded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClients(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Ljava/util/Collection;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mClients:Ljava/util/Collection;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectedDevices(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mConnectedDevices:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDialogShow(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mDialogShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEditActionMode(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Landroid/view/ActionMode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mEditActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddDevicesPreference(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->addDevicesPreference()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteSavedConfigs(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->deleteSavedConfigs()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCheckedNum(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->getCheckedNum()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetTetherConnectedDevices(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->getTetherConnectedDevices()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misAllChecked(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->isAllChecked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msaveInfoToSharedPreferences(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Landroid/net/MacAddress;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->saveInfoToSharedPreferences(Landroid/net/MacAddress;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAllBtnsChecked(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->setAllBtnsChecked(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInActionMode(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->setInActionMode(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStaConnectStatus(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->updateStaConnectStatus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->isUpdateOnceNeeded:Z

    .line 124
    new-instance v0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$1;-><init>(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 135
    new-instance v0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$2;-><init>(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    return-void
.end method

.method private addDevicesPreference()V
    .locals 7

    .line 240
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "connected_devices"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mClients:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/TetheredClient;

    .line 250
    invoke-virtual {v3}, Landroid/net/TetheredClient;->getTetheringType()I

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {v3}, Landroid/net/TetheredClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    iget-object v5, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mBlockList:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 255
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_1

    .line 261
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->createPreference(Landroid/net/TetheredClient;)Lcom/android/settings/wifi/SavedConnectedDevicePreference;

    move-result-object v3

    .line 262
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v4, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 266
    :cond_5
    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mAccessPointPreferenceList:Ljava/util/List;

    .line 267
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 271
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    .line 267
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private cleanDeviceInfoInSharedPreferences()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mBlockListPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 280
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

    .line 281
    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mBlockList:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->removeInfoFromSharedPreferences(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createPreference(Landroid/net/TetheredClient;)Lcom/android/settings/wifi/SavedConnectedDevicePreference;
    .locals 4

    .line 212
    new-instance v0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/SavedConnectedDevicePreference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 215
    :goto_0
    invoke-virtual {p1}, Landroid/net/TetheredClient;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/net/TetheredClient;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetheredClient$AddressInfo;

    .line 217
    invoke-virtual {v1}, Landroid/net/TetheredClient$AddressInfo;->getHostname()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->isGarbledCode(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {p1}, Landroid/net/TetheredClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 220
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/net/TetheredClient;->getMacAddress()Landroid/net/MacAddress;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    return-object v0
.end method

.method private deleteSavedConfigs()V
    .locals 5

    .line 402
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mAccessPointPreferenceList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 403
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/SavedConnectedDevicePreference;

    .line 404
    invoke-virtual {v1}, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-virtual {v1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-static {v2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v2

    .line 407
    invoke-virtual {v1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mBlockList:Ljava/util/Set;

    invoke-virtual {v2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBlockList add : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiAddDeviceToBlockList"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->saveInfoToSharedPreferences(Landroid/net/MacAddress;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/MiuiUtils;->isSapBlacklistOffloadSupport(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mBlockList:Ljava/util/Set;

    .line 416
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v3, 0x14

    if-ge v1, v3, :cond_3

    .line 417
    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

    invoke-virtual {v2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/MiuiWifiManager;->addHotSpotMacBlackListOffload(Ljava/lang/String;)Z

    .line 420
    :cond_3
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mBlockList:Ljava/util/Set;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/MiuiUtils;->setHotSpotMacBlackSet(Landroid/content/Context;Ljava/util/Set;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private getBlockList()V
    .locals 3

    .line 294
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiUtils;->getHotSpotMacBlackSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mBlockList:Ljava/util/Set;

    .line 295
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "tetherBlockListPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mBlockListPrefs:Landroid/content/SharedPreferences;

    .line 296
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->cleanDeviceInfoInSharedPreferences()V

    return-void
.end method

.method private getCheckedNum()I
    .locals 2

    .line 651
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mAccessPointPreferenceList:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 652
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/SavedConnectedDevicePreference;

    .line 653
    invoke-virtual {v1}, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
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

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

    if-nez v0, :cond_1

    .line 230
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0}, Landroid/net/wifi/AmlMiuiWifiManager;->getConnectedWifiClient()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 236
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 233
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/MiuiWifiManager;->getConnectedWifiClient()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private initTethering()V
    .locals 1

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mHandler:Landroid/os/Handler;

    const-string v0, "connectivity"

    .line 177
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v0, "tethering"

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mTm:Landroid/net/TetheringManager;

    const-string/jumbo v0, "wifi"

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v0, "MiuiWifiService"

    .line 180
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/MiuiWifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mMiuiWifiManager:Landroid/net/wifi/MiuiWifiManager;

    const-string v0, "AmlMiuiWifiService"

    .line 181
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/AmlMiuiWifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mAmlMiuiWifiManager:Landroid/net/wifi/AmlMiuiWifiManager;

    .line 182
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mSoftApConfig:Landroid/net/wifi/SoftApConfiguration;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mClients:Ljava/util/Collection;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mConnectedDevices:Ljava/util/List;

    .line 187
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->getBlockList()V

    return-void
.end method

.method private isAllChecked()Z
    .locals 1

    .line 620
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mAccessPointPreferenceList:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 621
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;

    .line 622
    invoke-virtual {v0}, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isAllUnChecked()Z
    .locals 1

    .line 631
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mAccessPointPreferenceList:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 632
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;

    .line 633
    invoke-virtual {v0}, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isChineseEncoding(C)Z
    .locals 0

    .line 501
    invoke-static {p1}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 502
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

    .line 511
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 515
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    .line 516
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\p{P}"

    .line 517
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 520
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 521
    aget-char v4, p1, v2

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    aget-char v4, p1, v2

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->isChineseEncoding(C)Z

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

    .line 288
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mBlockListPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 289
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private restoreDisDialog()V
    .locals 5

    .line 328
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

    .line 330
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mDialogShow:Z

    if-eqz v2, :cond_1

    .line 332
    new-instance v2, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$AddDeviceToBlockListDialog;

    const-string/jumbo v3, "save_device_mac"

    .line 333
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v3

    const-string/jumbo v4, "save_device_name"

    .line 334
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$AddDeviceToBlockListDialog;-><init>(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Landroid/net/MacAddress;Ljava/lang/String;Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$AddDeviceToBlockListDialog-IA;)V

    iput-object v2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mDialog:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$AddDeviceToBlockListDialog;

    .line 335
    invoke-virtual {v2}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$AddDeviceToBlockListDialog;->show()V

    :cond_1
    return-void
.end method

.method private saveInfoToSharedPreferences(Landroid/net/MacAddress;Ljava/lang/String;)V
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mBlockListPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 301
    invoke-virtual {p1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setAllBtnsChecked(Z)V
    .locals 1

    .line 642
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mAccessPointPreferenceList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 643
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;

    .line 644
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->setBtnChecked(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setInActionMode(Z)V
    .locals 1

    .line 427
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mAccessPointPreferenceList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 428
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/SavedConnectedDevicePreference;

    .line 429
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->setActionMode(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateStaConnectStatus()V
    .locals 4

    .line 380
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$3;-><init>(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p0, "MiuiAddDeviceToBlockList"

    const-string v0, "MiuiTetherDeviceSettings is not releated to Activity, so ignore it"

    .line 397
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 376
    const-class p0, Lcom/android/settings/wifi/MiuiTetherDeviceSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->initTethering()V

    .line 159
    sget p1, Lcom/android/settings/R$xml;->saved_devices:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "connected_devices"

    .line 160
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mCategory:Landroidx/preference/PreferenceCategory;

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->addDevicesPreference()V

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;-><init>(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack-IA;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 172
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->restoreDisDialog()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 3

    .line 342
    instance-of v0, p2, Lcom/android/settings/wifi/SavedConnectedDevicePreference;

    if-eqz v0, :cond_4

    .line 343
    check-cast p2, Lcom/android/settings/wifi/SavedConnectedDevicePreference;

    .line 344
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mEditActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->confirm:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 345
    invoke-virtual {p2}, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 346
    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/SavedConnectedDevicePreference;->setBtnChecked(Z)V

    .line 347
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->isAllUnChecked()Z

    move-result p1

    const/4 p2, 0x0

    const v2, 0x102001a    # @android:id/button2

    if-eqz p1, :cond_1

    .line 348
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mEditActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 349
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 350
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mEditActionMode:Landroid/view/ActionMode;

    check-cast p0, Lmiuix/view/EditActionMode;

    sget p1, Lcom/android/settings/R$drawable;->miuix_action_icon_select_all_dark:I

    invoke-interface {p0, v2, p2, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 353
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mEditActionMode:Landroid/view/ActionMode;

    check-cast p0, Lmiuix/view/EditActionMode;

    sget p1, Lcom/android/settings/R$drawable;->miuix_action_icon_select_all_light:I

    invoke-interface {p0, v2, p2, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 356
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->isAllChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 357
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mEditActionMode:Landroid/view/ActionMode;

    check-cast p0, Lmiuix/view/EditActionMode;

    sget p1, Lcom/android/settings/R$drawable;->miuix_action_icon_deselect_all_light:I

    invoke-interface {p0, v2, p2, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 360
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 361
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mEditActionMode:Landroid/view/ActionMode;

    check-cast p0, Lmiuix/view/EditActionMode;

    sget p1, Lcom/android/settings/R$drawable;->miuix_action_icon_select_all_dark:I

    invoke-interface {p0, v2, p2, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 364
    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mEditActionMode:Landroid/view/ActionMode;

    check-cast p0, Lmiuix/view/EditActionMode;

    sget p1, Lcom/android/settings/R$drawable;->miuix_action_icon_select_all_light:I

    invoke-interface {p0, v2, p2, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    :goto_0
    return v1

    .line 370
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 321
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 323
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->getBlockList()V

    .line 324
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->updateStaConnectStatus()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 307
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mDialog:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$AddDeviceToBlockListDialog;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "show_dialog"

    .line 311
    iget-boolean v1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mDialogShow:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mDialog:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$AddDeviceToBlockListDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$AddDeviceToBlockListDialog;->getBlockDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "save_device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mDialog:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$AddDeviceToBlockListDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$AddDeviceToBlockListDialog;->getDeviceInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "save_device_mac"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "saved_bundle"

    .line 315
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 192
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mTm:Landroid/net/TetheringManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/TetheringManager;->registerTetheringEventCallback(Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$TetheringEventCallback;)V

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->tether_no_device_connected:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 206
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mSoftApCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mTm:Landroid/net/TetheringManager;

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->mTetheringCallback:Landroid/net/TetheringManager$TetheringEventCallback;

    invoke-virtual {v0, p0}, Landroid/net/TetheringManager;->unregisterTetheringEventCallback(Landroid/net/TetheringManager$TetheringEventCallback;)V

    return-void
.end method
