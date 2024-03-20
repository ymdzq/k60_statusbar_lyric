.class public Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiWifiNetworkListFragment.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$OnChooseNetworkListener;
    }
.end annotation


# instance fields
.field private mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mAddPreference:Landroidx/preference/Preference;

.field private mFakeNetworkPreference:Landroidx/preference/Preference;

.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTest:Z

.field private mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$OnChooseNetworkListener;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettingsActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public static synthetic $r8$lambda$6HqRLbu9rFZeRziPT58aVJFg0xY(Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->lambda$updateAccessPointPreferences$2(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7FjMksc9L68HDqnjyneRvMM99YM(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->lambda$onAccessPointChanged$0(Lcom/android/settingslib/wifi/AccessPoint;)V

    return-void
.end method

.method public static synthetic $r8$lambda$COu4er49Kvg4Mty7ejBDr278yKY(Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;Lcom/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/wifi/AccessPoint;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->lambda$updateAccessPointPreferences$3(Lcom/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NhBhyIxXDNZMBBDXzj7wWmOMya8(Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->lambda$updateAccessPointPreferences$1(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPointPreference;
    .locals 7

    .line 345
    new-instance v6, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    sget v4, Lcom/android/settings/R$drawable;->ic_wifi_signal_0:I

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    return-object v6
.end method

.method private getScannedAccessPointIfAvailable(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 3

    .line 334
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object p0

    .line 335
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 336
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 337
    invoke-virtual {v1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    return-object p1
.end method

.method private handleAddNetworkSubmitEvent(Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "wifi_config_key"

    .line 254
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private isValidForDppConfiguration(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 0

    .line 261
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

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

.method private static synthetic lambda$onAccessPointChanged$0(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    .line 200
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 202
    check-cast p0, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateAccessPointPreferences$1(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->isValidForDppConfiguration(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateAccessPointPreferences$2(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 0

    .line 292
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->getScannedAccessPointIfAvailable(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateAccessPointPreferences$3(Lcom/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/wifi/AccessPoint;)I
    .locals 1

    .line 295
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 297
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 301
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private launchMiuiAddNetworkFragment()V
    .locals 2

    .line 268
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->wifi_add_network:I

    .line 269
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/MiuiAddNetworkFragment;

    .line 270
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/4 v1, 0x1

    .line 272
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private removeAccessPointPreferences()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 278
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private updateAccessPointPreferences()V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/WifiSavedConfigUtils;->getAllConfigs(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;)V

    .line 291
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;)V

    .line 292
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;)V

    .line 293
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 305
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 308
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 311
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->createAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPointPreference;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    .line 313
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 314
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 315
    invoke-virtual {v2, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    .line 317
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    .line 318
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v1, v4

    goto :goto_0

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 323
    iget-boolean v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mIsTest:Z

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x63b

    return p0
.end method

.method public onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 2

    const-string v0, "MiuiWifiNetworkListFragment"

    const-string v1, "onAccessPointChanged (singular) callback initiated"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 199
    new-instance v0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->updateAccessPointPreferences()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 104
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 105
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mWifiSettingsActivityRef:Ljava/lang/ref/WeakReference;

    .line 106
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    .line 107
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    const/4 v2, 0x1

    .line 106
    invoke-static {p1, v0, v1, v2, v2}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 108
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "test"

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mIsTest:Z

    .line 114
    :cond_0
    new-instance p1, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$1;-><init>(Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 138
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->handleAddNetworkSubmitEvent(Landroid/content/Intent;)V

    .line 140
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 89
    instance-of v0, p1, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$OnChooseNetworkListener;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$OnChooseNetworkListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$OnChooseNetworkListener;

    return-void

    .line 90
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid context type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onConnectedChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 146
    sget p1, Lcom/android/settings/R$xml;->miui_wifi_dpp_network_list:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "access_points"

    .line 147
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 149
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    .line 150
    sget p2, Lcom/android/settings/R$drawable;->ic_wifi_signal_0:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(I)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    const-string p2, "fake_key"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    const-string p2, "fake network"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    .line 155
    sget p2, Lcom/android/settings/R$drawable;->ic_add_24dp:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(I)V

    .line 156
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    sget p2, Lcom/android/settings/R$string;->wifi_add_network:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 158
    new-instance p1, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$OnChooseNetworkListener;

    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    .line 210
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->onLevelChanged()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 9

    .line 215
    instance-of v0, p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 216
    check-cast p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    .line 217
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p1, v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v7, 0x0

    .line 227
    invoke-static/range {v2 .. v7}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->getValidConfigOrNull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    move-result-object p1

    .line 231
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$OnChooseNetworkListener;

    if-eqz p0, :cond_4

    .line 232
    invoke-interface {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$OnChooseNetworkListener;->onChooseNetwork(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    goto :goto_0

    .line 225
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid access point"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mAddPreference:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 235
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->launchMiuiAddNetworkFragment()V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mFakeNetworkPreference:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_5

    .line 237
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mOnChooseNetworkListener:Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$OnChooseNetworkListener;

    if-eqz p0, :cond_4

    .line 238
    new-instance p1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    const-string v3, "WPA"

    const-string v4, "fake network"

    const-string v5, "password"

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    invoke-interface {p0, p1}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment$OnChooseNetworkListener;->onChooseNetwork(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)V

    :cond_4
    :goto_0
    return v1

    .line 248
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onWifiStateChanged(I)V
    .locals 1

    .line 164
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->updateAccessPointPreferences()V

    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiNetworkListFragment;->removeAccessPointPreferences()V

    :goto_0
    return-void
.end method
