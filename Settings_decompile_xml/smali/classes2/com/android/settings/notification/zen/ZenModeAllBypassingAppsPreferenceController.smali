.class public Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ZenModeAllBypassingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

.field mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mHostFragment:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field mPrefContext:Landroid/content/Context;

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method public static synthetic $r8$lambda$3Cp2xxX2TkQWUy5wcDBVn0uBk60(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->lambda$updateIcon$0(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MuX4QqgGiUgDBq7jpQvZwGJReLA(Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->lambda$updateAppList$2(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iDR0rWan5vu8WxQDRqMA5P_5fH8(Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->lambda$updateIcon$1(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 210
    new-instance p1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$1;-><init>(Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    .line 80
    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 81
    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 82
    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mHostFragment:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 85
    invoke-virtual {p3}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    :cond_0
    return-void
.end method

.method static getKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "all|"

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

    .line 161
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 162
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "package"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v1, "uid"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/app/AppChannelsBypassingDndSettings;

    .line 165
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 167
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mHostFragment:Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;

    const/4 p2, 0x0

    .line 168
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x635

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateIcon$0(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$updateIcon$1(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/applications/AppUtils;->getIcon(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 130
    new-instance p1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda2;-><init>(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateIcon(Landroidx/preference/Preference;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 2

    .line 122
    monitor-enter p2

    .line 123
    :try_start_0
    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->getIconFromCache(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-boolean v1, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 134
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
    .locals 1

    const-string/jumbo v0, "zen_mode_bypassing_apps_list"

    .line 91
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 92
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->updateAppList()V

    .line 94
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "zen_mode_bypassing_apps_list"

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

    .line 111
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-nez p0, :cond_0

    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 116
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

    .line 139
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 144
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 145
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 146
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 147
    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v3, v5}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result v4

    .line 148
    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 149
    invoke-virtual {v5, v3, v6}, Lcom/android/settings/notification/NotificationBackend;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v0, 0x1

    .line 154
    :cond_2
    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_4

    if-lez v3, :cond_1

    .line 158
    new-instance v5, Lcom/android/settingslib/widget/apppreference/AppPreference;

    iget-object v6, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 160
    new-instance v2, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    invoke-direct {p0, v5, v1}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->updateIcon(Landroidx/preference/Preference;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    if-le v4, v3, :cond_3

    .line 177
    sget v1, Lcom/android/settings/R$string;->zen_mode_bypassing_apps_summary_some:I

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 179
    :cond_3
    sget v1, Lcom/android/settings/R$string;->zen_mode_bypassing_apps_summary_all:I

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 181
    :goto_1
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_4
    if-nez v3, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 190
    :cond_5
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "all_none"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez v0, :cond_7

    if-nez p1, :cond_6

    .line 193
    new-instance p1, Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 195
    sget v0, Lcom/android/settings/R$string;->zen_mode_bypassing_apps_none:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 197
    :cond_6
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    .line 199
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_8
    :goto_2
    return-void
.end method
