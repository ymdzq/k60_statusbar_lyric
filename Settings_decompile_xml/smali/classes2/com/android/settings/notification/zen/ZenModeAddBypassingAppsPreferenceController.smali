.class public Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ZenModeAddBypassingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mAddPreference:Landroidx/preference/Preference;

.field private mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

.field mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mHostFragment:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field mPrefContext:Landroid/content/Context;

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public static synthetic $r8$lambda$Gb_sWixEu-5Vf5ACeKVQCWDaDaA(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->lambda$updateIcon$0(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qU7HChwariMSWuJuGUHu1-k9vrU(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->lambda$updateIcon$1(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v3u9GApsHS4dy4c0S_uMB_NH0x0(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->lambda$updateAppList$2(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAddPreference(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mAddPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppSessionCallbacks(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHostFragment(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mHostFragment:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAppSession(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$Session;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Application;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p2}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 215
    new-instance p1, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$2;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$2;-><init>(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    .line 80
    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 81
    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 82
    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mHostFragment:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    return-void
.end method

.method static getKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateAppList$2(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 2

    .line 175
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 176
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "package"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v1, "uid"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/app/AppChannelsBypassingDndSettings;

    .line 179
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mHostFragment:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p2, p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    new-instance p2, Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 182
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x635

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateIcon$0(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$updateIcon$1(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/applications/AppUtils;->getIcon(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 137
    new-instance p1, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda2;-><init>(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateIcon(Landroidx/preference/Preference;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 2

    .line 129
    monitor-enter p2

    .line 130
    :try_start_0
    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->getIconFromCache(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-boolean v1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 141
    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 87
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "zen_mode_bypassing_apps_add"

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mAddPreference:Landroidx/preference/Preference;

    .line 89
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$1;-><init>(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 101
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "zen_mode_non_bypassing_apps_list"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public updateAppList()V
    .locals 2

    .line 118
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-nez p0, :cond_0

    return-void

    .line 122
    :cond_0
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 123
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    return-void
.end method

.method updateAppList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 152
    sget v1, Lcom/android/settings/R$string;->zen_mode_bypassing_apps_add_header:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 157
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 158
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 159
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 160
    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v3, v5}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result v4

    .line 161
    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 162
    invoke-virtual {v5, v3, v6}, Lcom/android/settings/notification/NotificationBackend;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    if-lez v4, :cond_3

    const/4 v0, 0x1

    .line 167
    :cond_3
    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_4

    if-nez v3, :cond_2

    if-lez v4, :cond_2

    .line 172
    new-instance v3, Lcom/android/settingslib/widget/apppreference/AppPreference;

    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 174
    new-instance v2, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 188
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    invoke-direct {p0, v3, v1}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->updateIcon(Landroidx/preference/Preference;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 190
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    if-nez v4, :cond_2

    .line 194
    :cond_5
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 198
    :cond_6
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "add_none"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez v0, :cond_8

    if-nez p1, :cond_7

    .line 201
    new-instance p1, Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 203
    sget v0, Lcom/android/settings/R$string;->zen_mode_bypassing_apps_none:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 205
    :cond_7
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    .line 207
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    :goto_1
    return-void
.end method
