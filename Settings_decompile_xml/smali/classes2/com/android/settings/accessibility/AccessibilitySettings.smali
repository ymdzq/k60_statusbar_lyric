.class public Lcom/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccessibilitySettings.java"


# static fields
.field private static final CATEGORIES:[Ljava/lang/String;

.field static final CATEGORY_INTERACTION_CONTROL:Ljava/lang/String; = "interaction_control_category"

.field public static COMMON_SERVICES_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private mIsForeground:Z

.field private mNeedPreferencesUpdate:Z

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

.field final mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/preference/Preference;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field final mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$PgrK3M8sfS1sK1xJZowhsimqaPA(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilitySettings;->lambda$getInstalledAccessibilityList$1(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$r4fs-WxAS8owjEca6Twsr0dwDRs(Lcom/android/settings/accessibility/AccessibilitySettings;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ra1k1bpBTDhKGP0M8OfIGrbXJ2c(Lcom/android/settings/accessibility/AccessibilitySettings;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->lambda$updatePreferencesState$2(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateRunnable(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    const-string/jumbo v0, "screen_reader_category"

    const-string v1, "captions_category"

    const-string v2, "audio_category"

    const-string v3, "display_category"

    const-string/jumbo v4, "speech_category"

    const-string v5, "interaction_control_category"

    const-string/jumbo v6, "user_installed_services_category"

    .line 84
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.miui.securitycenter"

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.miui.personalassistant"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.xiaomi.misettings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.miui.powerkeeper"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.miui.newhome"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.miui.handwriting"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.android.systemui.accessibility.accessibilitymenu.AccessibilityMenuService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.bjbyhd.voiceback"

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.android.tback"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.nirenr.talkman"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.dianming.phoneapp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;

    .line 141
    sget v1, Lcom/android/settings/R$array;->config_preinstalled_screen_reader_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;

    sget v1, Lcom/android/settings/R$array;->config_preinstalled_display_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;

    sget v1, Lcom/android/settings/R$array;->config_preinstalled_interaction_control_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;

    sget v1, Lcom/android/settings/R$array;->config_downloaded_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->HIDE_SUMMARY_SERVICES_SET:Ljava/util/Set;

    const-string v1, "com.android.settings.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 147
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 604
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$3;

    sget v1, Lcom/android/settings/R$xml;->accessibility_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$3;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 213
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 202
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    .line 204
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 207
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNeedPreferencesUpdate:Z

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mIsForeground:Z

    .line 216
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;

    .line 219
    invoke-virtual {v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "accessibility_button_targets"

    .line 226
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_shortcut_target_service"

    .line 227
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    .line 229
    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->registerKeysToObserverCallback(Ljava/util/List;Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver$ContentObserverCallback;)V

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

    .line 528
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 529
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 532
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 534
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 535
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 536
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 539
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 540
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 541
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

    .line 488
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 489
    new-instance v1, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 493
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 492
    invoke-virtual {v0, p0, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 497
    new-instance v3, Ljava/util/ArrayList;

    .line 498
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 508
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v3, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 512
    invoke-virtual {v1, v2, p1}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->createAccessibilityActivityPreferenceList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    .line 515
    invoke-virtual {v1, v3, p1}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->createAccessibilityServicePreferenceList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 518
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 519
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 0

    .line 366
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityServiceUtils;->getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 3

    if-eqz p2, :cond_0

    .line 321
    iget-boolean v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    if-eqz v0, :cond_0

    .line 322
    sget p1, Lcom/android/settings/R$string;->accessibility_summary_state_stopped:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 326
    :cond_0
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 328
    new-instance p2, Landroid/content/ComponentName;

    .line 329
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {p0, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 334
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_shortcut_enabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 335
    :cond_2
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_shortcut_disabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 338
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_state_enabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 339
    :cond_4
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_state_disabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 342
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 343
    sget v0, Lcom/android/settings/R$string;->preference_summary_default_combination:I

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 347
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

    .line 381
    :goto_0
    sget-object v1, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 382
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 383
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V
    .locals 3

    .line 549
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 550
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    .line 551
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 552
    aget-object v1, p2, v0

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 553
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getInstalledAccessibilityList$1(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    .line 509
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilitySettings;->containsTargetNameInList(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 0

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->onContentChanged()V

    return-void
.end method

.method private synthetic lambda$updatePreferencesState$2(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 601
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    .line 600
    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private registerContentMonitors()V
    .locals 4

    .line 395
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 399
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private unregisterContentMonitors()V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 404
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private updateCategoryOrderFromArray(Ljava/lang/String;I)V
    .locals 6

    .line 565
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 566
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    .line 567
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    .line 568
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 571
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v3

    .line 572
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 573
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

.method private updatePreferenceCategoryVisibility(Ljava/lang/String;)V
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    .line 587
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private updatePreferencesState()V
    .locals 3

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 599
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 600
    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 240
    sget p0, Lcom/android/settings/R$string;->help_uri_accessibility:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "AccessibilitySettings"

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

    .line 289
    const-class p0, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 303
    sget p0, Lcom/android/settings/R$xml;->accessibility_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 245
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 246
    const-class p1, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    .line 247
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method onContentChanged()V
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNeedPreferencesUpdate:Z

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 252
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 253
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 255
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->registerContentMonitors()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->unregisterContentMonitors()V

    .line 284
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 260
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNeedPreferencesUpdate:Z

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNeedPreferencesUpdate:Z

    :cond_0
    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mIsForeground:Z

    .line 271
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mIsForeground:Z

    .line 277
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method updateAllPreferences()V
    .locals 0

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicePreferences()V

    .line 391
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updatePreferencesState()V

    return-void
.end method

.method protected updateServicePreferences()V
    .locals 13

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 412
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    .line 413
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 414
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    .line 415
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    .line 416
    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_0
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_screen_reader_services:I

    const-string/jumbo v2, "screen_reader_category"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 421
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_captions_services:I

    const-string v3, "captions_category"

    invoke-direct {p0, v3, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 423
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_audio_services:I

    const-string v4, "audio_category"

    invoke-direct {p0, v4, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 425
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_display_services:I

    const-string v5, "display_category"

    invoke-direct {p0, v5, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 427
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_speech_services:I

    const-string/jumbo v6, "speech_category"

    invoke-direct {p0, v6, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 429
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_interaction_control_services:I

    const-string v7, "interaction_control_category"

    invoke-direct {p0, v7, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    sget-object v8, Lcom/android/internal/accessibility/util/AccessibilityUtils;->ACCESSIBILITY_MENU_IN_SYSTEM:Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    .line 436
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/preference/PreferenceCategory;

    .line 434
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 441
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getInstalledAccessibilityList(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 444
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string/jumbo v9, "user_installed_services_category"

    .line 445
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/preference/PreferenceCategory;

    .line 447
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    :goto_1
    if-ge v1, v9, :cond_2

    .line 448
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/RestrictedPreference;

    .line 449
    invoke-virtual {v10}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "component_name"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 453
    iget-object v12, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 454
    iget-object v12, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/preference/PreferenceCategory;

    goto :goto_2

    :cond_1
    move-object v11, v8

    .line 456
    :goto_2
    invoke-virtual {v11, v10}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 457
    iget-object v12, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 461
    :cond_2
    sget v0, Lcom/android/settings/R$array;->config_order_screen_reader_services:I

    invoke-direct {p0, v2, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 463
    sget v0, Lcom/android/settings/R$array;->config_order_captions_services:I

    invoke-direct {p0, v3, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 465
    sget v0, Lcom/android/settings/R$array;->config_order_audio_services:I

    invoke-direct {p0, v4, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 467
    sget v0, Lcom/android/settings/R$array;->config_order_interaction_control_services:I

    invoke-direct {p0, v7, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 469
    sget v0, Lcom/android/settings/R$array;->config_order_display_services:I

    invoke-direct {p0, v5, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 471
    sget v0, Lcom/android/settings/R$array;->config_order_speech_services:I

    invoke-direct {p0, v6, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 475
    invoke-virtual {v8}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 476
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 478
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 482
    :goto_3
    invoke-direct {p0, v6}, Lcom/android/settings/accessibility/AccessibilitySettings;->updatePreferenceCategoryVisibility(Ljava/lang/String;)V

    return-void
.end method

.method protected updateSystemPreferences()V
    .locals 0

    .line 0
    return-void
.end method
