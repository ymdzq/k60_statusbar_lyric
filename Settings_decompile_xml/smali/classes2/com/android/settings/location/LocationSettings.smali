.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mController:Lcom/android/settings/location/RecentLocationAccessPreferenceController;

.field private mLocationEnabler:Lcom/android/settings/location/LocationEnabler;


# direct methods
.method public static synthetic $r8$lambda$g4KVkxqE8C9kFZKF4bO1d06SKYA(Landroidx/preference/Preference;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/location/LocationSettings;->lambda$addPreferencesSorted$0(Landroidx/preference/Preference;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmController(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/location/RecentLocationAccessPreferenceController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/location/LocationSettings;->mController:Lcom/android/settings/location/RecentLocationAccessPreferenceController;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 183
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->location_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/location/LocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static addPreferencesSorted(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/android/settings/location/LocationSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$$ExternalSyntheticLambda0;-><init>()V

    .line 169
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 168
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 171
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/location/LocationSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    new-instance v0, Lcom/android/settings/location/MiuiLocationSwitchController;

    const-string v1, "location_toggle"

    invoke-direct {v0, p0, v1, p2}, Lcom/android/settings/location/MiuiLocationSwitchController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Lcom/android/settings/location/MiuiModemLocationSwitchController;

    const-string v1, "location_modem_manage"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/location/MiuiModemLocationSwitchController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Lcom/android/settings/location/XiaomiHpLocationController;

    const-string/jumbo v1, "xiaomi_hp_location_toggle"

    invoke-direct {v0, p0, v1, p2}, Lcom/android/settings/location/XiaomiHpLocationController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private static synthetic lambda$addPreferencesSorted$0(Landroidx/preference/Preference;)Ljava/lang/String;
    .locals 0

    .line 169
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/location/LocationSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 177
    sget p0, Lcom/android/settings/R$string;->help_url_location_access:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "LocationSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x3f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 133
    sget p0, Lcom/android/settings/R$xml;->location_settings:I

    return p0
.end method

.method public isAdapterFoldDevice()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 94
    new-instance p1, Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {p1, v0, p0, v1}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/android/settings/location/LocationSettings;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 95
    new-instance p1, Lcom/android/settings/location/LocationSettings$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/location/LocationSettings;->mContentObserver:Landroid/database/ContentObserver;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "locationShowSystemOps"

    .line 102
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/settings/location/LocationSettings;->mContentObserver:Landroid/database/ContentObserver;

    .line 101
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 111
    const-class p1, Lcom/android/settings/location/AppLocationPermissionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/location/AppLocationPermissionPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/location/LocationBasePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 112
    const-class p1, Lcom/android/settings/location/RecentLocationAccessPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/location/RecentLocationAccessPreferenceController;

    iput-object p1, p0, Lcom/android/settings/location/LocationSettings;->mController:Lcom/android/settings/location/RecentLocationAccessPreferenceController;

    .line 113
    invoke-virtual {p1, p0}, Lcom/android/settings/location/LocationBasePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 114
    const-class p1, Lcom/android/settings/location/RecentLocationAccessSeeAllButtonPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/location/RecentLocationAccessSeeAllButtonPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/location/LocationBasePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 115
    const-class p1, Lcom/android/settings/location/LocationForWorkPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/location/LocationForWorkPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/location/LocationBasePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 116
    const-class p1, Lcom/android/settings/location/LocationSettingsFooterPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/location/LocationSettingsFooterPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/location/LocationBasePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 117
    const-class p1, Lcom/android/settings/location/AgpsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/location/AgpsPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/location/LocationBasePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Settings.WORK_PROFILE_LOCATION_SWITCH_TITLE"

    .line 140
    sget v0, Lcom/android/settings/R$string;->managed_profile_location_switch_title:I

    const-string/jumbo v1, "managed_profile_location_switch"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/location/LocationSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onLocationModeChanged(IZ)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/settings/location/LocationSettings;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 148
    sget v0, Lcom/android/settings/R$string;->location_settings_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->updateActionBarTitleView(I)V

    return-void
.end method
