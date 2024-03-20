.class public Lcom/android/settings/accessibility/GeneralAccessibilitySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "GeneralAccessibilitySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;
    }
.end annotation


# static fields
.field private static final CATEGORIES:[Ljava/lang/String;

.field public static HIDE_SERVICES_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static HIDE_SUMMARY_SERVICES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final mCategoryToPrefCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/preference/Preference;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$8eSA0Yj7m4ra0VpH6APd0quJPHI(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->lambda$getInstalledAccessibilityList$0(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/accessibility/GeneralAccessibilitySettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateRunnable(Lcom/android/settings/accessibility/GeneralAccessibilitySettings;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateAllPreferences(Lcom/android/settings/accessibility/GeneralAccessibilitySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->updateAllPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "interaction_control_category"

    const-string/jumbo v1, "user_installed_services_category"

    const-string/jumbo v2, "screen_reader_category"

    .line 83
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.miui.securitycenter"

    .line 106
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.miui.personalassistant"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.xiaomi.misettings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.google.android.marvin.talkback.TalkBackService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.android.switchaccess.SwitchAccessService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.miui.accessibility.voiceaccess.VoiceAccessAccessibilityService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;

    .line 118
    sget v1, Lcom/android/settings/R$array;->config_preinstalled_screen_reader_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;

    sget v1, Lcom/android/settings/R$array;->config_preinstalled_display_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;

    sget v1, Lcom/android/settings/R$array;->config_preinstalled_interaction_control_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;

    sget v1, Lcom/android/settings/R$array;->config_downloaded_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->HIDE_SUMMARY_SERVICES_SET:Ljava/util/Set;

    const-string v1, "com.android.settings.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 125
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->accessibility_settings_general:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 181
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/GeneralAccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/GeneralAccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    .line 176
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 178
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    .line 184
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;

    .line 187
    invoke-virtual {v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "accessibility_button_targets"

    .line 191
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_shortcut_target_service"

    .line 192
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$3;

    iget-object v2, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/GeneralAccessibilitySettings;Landroid/os/Handler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    return-void
.end method

.method private static containsTargetNameInList(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityShortcutInfo;",
            ">;",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ")Z"
        }
    .end annotation

    .line 446
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 447
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 450
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 452
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 453
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 454
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 457
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 458
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 459
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static getInstalledAccessibilityList(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/RestrictedPreference;",
            ">;"
        }
    .end annotation

    .line 406
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 407
    new-instance v1, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 411
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 410
    invoke-virtual {v0, p0, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 415
    new-instance v3, Ljava/util/ArrayList;

    .line 416
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 426
    new-instance v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v3, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 430
    invoke-virtual {v1, v2, p1}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->createAccessibilityActivityPreferenceList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    .line 433
    invoke-virtual {v1, v3, p1}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings$RestrictedPreferenceHelper;->createAccessibilityServicePreferenceList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 437
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method static getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 0

    .line 335
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityServiceUtils;->getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 3

    if-eqz p2, :cond_0

    .line 289
    iget-boolean v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    if-eqz v0, :cond_0

    .line 290
    sget p1, Lcom/android/settings/R$string;->accessibility_summary_state_stopped:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 294
    :cond_0
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 296
    new-instance p2, Landroid/content/ComponentName;

    .line 297
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {p0, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 302
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_shortcut_enabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 303
    :cond_2
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_shortcut_disabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 306
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_state_enabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 307
    :cond_4
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_state_disabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 310
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 311
    sget v0, Lcom/android/settings/R$string;->preference_summary_default_combination:I

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object p2, p0

    :goto_2
    return-object p2
.end method

.method private initializeAllPreferences()V
    .locals 4

    const/4 v0, 0x0

    .line 339
    :goto_0
    sget-object v1, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 340
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 341
    iget-object v3, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V
    .locals 3

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 468
    iget-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    .line 469
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 470
    aget-object v1, p2, v0

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 471
    iget-object v2, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isHideServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 251
    invoke-static {p0}, Lcom/android/settings/cloud/AccessibilityDisableList;->getCacheDisableSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "com.miui.voiceassist"

    .line 252
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    .line 255
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private static synthetic lambda$getInstalledAccessibilityList$0(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    .line 427
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->containsTargetNameInList(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method

.method private updateAllPreferences()V
    .locals 0

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->updateSystemPreferences()V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->updateServicePreferences()V

    return-void
.end method

.method private updateCategoryOrderFromArray(Ljava/lang/String;I)V
    .locals 6

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 484
    iget-object p0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    .line 485
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    .line 486
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 489
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v3

    .line 490
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 208
    sget p0, Lcom/android/settings/R$string;->help_uri_accessibility:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "GeneralAccessibilitySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 247
    const-class p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 270
    sget p0, Lcom/android/settings/R$xml;->accessibility_settings_general:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 219
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 213
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 214
    invoke-direct {p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->initializeAllPreferences()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 265
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 4

    .line 224
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 225
    invoke-direct {p0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->updateAllPreferences()V

    .line 227
    iget-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 234
    iget-object v0, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 235
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method protected updateServicePreferences()V
    .locals 8

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 355
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    .line 356
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 357
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    .line 358
    iget-object v4, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    .line 359
    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_0
    sget v0, Lcom/android/settings/R$array;->config_downloaded_services:I

    const-string/jumbo v2, "user_installed_services_category"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    const-string/jumbo v0, "screen_reader_category"

    .line 364
    sget v3, Lcom/android/settings/R$array;->config_preinstalled_screen_reader_services:I

    invoke-direct {p0, v0, v3}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 366
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_interaction_control_services:I

    const-string v3, "interaction_control_category"

    invoke-direct {p0, v3, v0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 372
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->getInstalledAccessibilityList(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 375
    iget-object v4, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    .line 376
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 378
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_2

    .line 379
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/RestrictedPreference;

    .line 380
    invoke-virtual {v5}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "component_name"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 384
    iget-object v7, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 385
    iget-object v7, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/preference/PreferenceCategory;

    goto :goto_2

    :cond_1
    move-object v6, v2

    .line 387
    :goto_2
    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 388
    iget-object v7, p0, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 392
    :cond_2
    sget v0, Lcom/android/settings/R$array;->config_order_interaction_control_services:I

    invoke-direct {p0, v3, v0}, Lcom/android/settings/accessibility/GeneralAccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 396
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 397
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 399
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_3
    return-void
.end method

.method protected updateSystemPreferences()V
    .locals 0

    .line 0
    return-void
.end method
