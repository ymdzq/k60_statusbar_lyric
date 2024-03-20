.class public Lcom/android/settings/accessibility/VisualAccessibilitySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "VisualAccessibilitySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/VisualAccessibilitySettings$RestrictedPreferenceHelper;
    }
.end annotation


# static fields
.field private static final CATEGORIES:[Ljava/lang/String;

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

.field public static PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static SCREEN_READER_SERVICES_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;


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

.field private mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

.field private mDisplayMagnificationPreferenceScreen:Landroidx/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private mOcrPreference:Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;

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

.field private mScreenReaderPreference:Landroidx/preference/Preference;

.field private mScreenZoomPreference:Lcom/android/settings/display/ScreenZoomPreference;

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

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mToggleAutoSpeakerPreference:Landroidx/preference/SwitchPreference;

.field private mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

.field private mToggleInversionPreference:Landroidx/preference/Preference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$MwuQrBzZRixw1CUzOy4-bcOMwyA(Lcom/android/settings/accessibility/VisualAccessibilitySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->lambda$updateServicePreferences$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$eXJyTepz3b-VkAObvV20YidB2to(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->lambda$getInstalledAccessibilityList$2(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$k2jaMofRDHo-K5QKJsr03nIRX3U(Lcom/android/settings/accessibility/VisualAccessibilitySettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->lambda$addOcrPrefAndSort$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/accessibility/VisualAccessibilitySettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateRunnable(Lcom/android/settings/accessibility/VisualAccessibilitySettings;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateAllPreferences(Lcom/android/settings/accessibility/VisualAccessibilitySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->updateAllPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string v0, "experimental_category"

    const-string/jumbo v1, "user_installed_services_category"

    const-string/jumbo v2, "screen_reader_category"

    const-string v3, "display_category"

    .line 93
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.miui.securitycenter"

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.miui.personalassistant"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.xiaomi.misettings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.google.android.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.android.settings.accessibility.accessibilitymenu.AccessibilityMenuService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.android.switchaccess.SwitchAccessService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->SCREEN_READER_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->SCREEN_READER_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.bjbyhd.voiceback/com.bjbyhd.voiceback.BoyhoodVoiceBackService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->SCREEN_READER_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.dianming.phoneapp/com.dianming.phoneapp.MyAccessibilityService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->SCREEN_READER_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.nirenr.talkman/com.nirenr.talkman.TalkManAccessibilityService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->SCREEN_READER_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.android.tback/net.tatans.soundback.SoundBackService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.bjbyhd.voiceback"

    .line 166
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.android.tback"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.nirenr.talkman"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.dianming.phoneapp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;

    .line 172
    sget v1, Lcom/android/settings/R$array;->config_preinstalled_screen_reader_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;

    sget v1, Lcom/android/settings/R$array;->config_preinstalled_display_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;

    sget v1, Lcom/android/settings/R$array;->config_preinstalled_interaction_control_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->PRE_CONFIGED_SERVICES_LIST:Ljava/util/List;

    sget v1, Lcom/android/settings/R$array;->config_downloaded_services:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "transition_animation_scale"

    const-string v1, "animator_duration_scale"

    const-string/jumbo v2, "window_animation_scale"

    .line 186
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    .line 765
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->accessibility_settings_visual:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 249
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 195
    new-instance v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/VisualAccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 204
    new-instance v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/VisualAccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 232
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    .line 234
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 236
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    .line 252
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;

    .line 255
    invoke-virtual {v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "accessibility_button_targets"

    .line 259
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_shortcut_target_service"

    .line 260
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings$3;

    iget-object v2, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/accessibility/VisualAccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/VisualAccessibilitySettings;Landroid/os/Handler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    return-void
.end method

.method private addOcrPrefAndSort(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mOcrPreference:Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    .line 500
    new-instance v0, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mOcrPreference:Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;

    const-string v1, "key_miui_enhance_tb_ocr"

    .line 501
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mOcrPreference:Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;

    sget v1, Lcom/android/settings/R$string;->talkback_ocr_title:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 503
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mOcrPreference:Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;

    sget v1, Lcom/android/settings/R$string;->talkback_ocr_summary:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 504
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mOcrPreference:Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/accessibility/VisualAccessibilitySettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/VisualAccessibilitySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mOcrPreference:Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enhance_tb_ocr_ability"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string/jumbo v0, "screen_reader_category"

    .line 514
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_2

    return-void

    .line 517
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportAiEngine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 518
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.miui.accessibility/com.miui.accessibility.enhance.tb.MiuiEnhanceTBService"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isServiceInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 520
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mOcrPreference:Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    const-string v0, "com.google.android.marvin.talkback/com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    .line 523
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    const/16 v0, 0x62

    .line 525
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 527
    :cond_4
    iget-object p0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mOcrPreference:Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;

    const/16 p1, 0x61

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_0

    .line 529
    :cond_5
    iget-object p0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mOcrPreference:Lcom/android/settingslib/miuisettings/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private addScreenToSpeakToScreenReader()V
    .locals 2

    const-string/jumbo v0, "screen_reader_category"

    .line 705
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v1, "com.google.android.marvin.talkback/com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    .line 706
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 707
    iget-object p0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addTalkbackToScreenReader()V
    .locals 2

    const-string/jumbo v0, "screen_reader_category"

    .line 698
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 699
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 700
    iget-object p0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 667
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 668
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 671
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 673
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 674
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 675
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 678
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 679
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 680
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

    .line 627
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 628
    new-instance v1, Lcom/android/settings/accessibility/VisualAccessibilitySettings$RestrictedPreferenceHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings$RestrictedPreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 632
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 631
    invoke-virtual {v0, p0, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 636
    new-instance v3, Ljava/util/ArrayList;

    .line 637
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 647
    new-instance v0, Lcom/android/settings/accessibility/VisualAccessibilitySettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/accessibility/VisualAccessibilitySettings$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v3, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 651
    invoke-virtual {v1, v2, p1}, Lcom/android/settings/accessibility/VisualAccessibilitySettings$RestrictedPreferenceHelper;->createAccessibilityActivityPreferenceList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    .line 654
    invoke-virtual {v1, v3, p1}, Lcom/android/settings/accessibility/VisualAccessibilitySettings$RestrictedPreferenceHelper;->createAccessibilityServicePreferenceList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 657
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 658
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method static getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 0

    .line 425
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityServiceUtils;->getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 3

    if-eqz p2, :cond_0

    .line 379
    iget-boolean v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    if-eqz v0, :cond_0

    .line 380
    sget p1, Lcom/android/settings/R$string;->accessibility_summary_state_stopped:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 384
    :cond_0
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 386
    new-instance p2, Landroid/content/ComponentName;

    .line 387
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {p0, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 392
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_shortcut_enabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 393
    :cond_2
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_shortcut_disabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 396
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_state_enabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 397
    :cond_4
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_state_disabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 400
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 401
    sget v0, Lcom/android/settings/R$string;->preference_summary_default_combination:I

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 405
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object p2, p0

    :goto_2
    return-object p2
.end method

.method private handleToggleAutoSpeakerPreferenceClick(Z)V
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_auto_speaker"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method

.method private handleToggleDisableAnimations()V
    .locals 6

    .line 429
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 431
    :goto_0
    sget-object v1, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private initPreferenceChangeListener()V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleAutoSpeakerPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method private initializeAllPreferences()V
    .locals 4

    const/4 v0, 0x0

    .line 437
    :goto_0
    sget-object v1, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 438
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 439
    iget-object v3, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "toggle_auto_speaker_preference"

    .line 445
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleAutoSpeakerPreference:Landroidx/preference/SwitchPreference;

    .line 446
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/RegionUtils;->IS_JP_KDDI:Z

    if-eqz v0, :cond_2

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v1, "experimental_category"

    .line 448
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 449
    iget-object v1, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleAutoSpeakerPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    const-string v0, "accessibility_screen_reader_haptic"

    .line 452
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mScreenReaderPreference:Landroidx/preference/Preference;

    const-string v0, "accessibility_settings_screen_zoom"

    .line 456
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/ScreenZoomPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mScreenZoomPreference:Lcom/android/settings/display/ScreenZoomPreference;

    const-string/jumbo v0, "toggle_inversion_preference"

    .line 459
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleInversionPreference:Landroidx/preference/Preference;

    const-string/jumbo v0, "toggle_disable_animations"

    .line 461
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    const-string/jumbo v0, "magnification_preference_screen"

    .line 464
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroidx/preference/Preference;

    const-string v0, "daltonizer_preference"

    .line 468
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    .line 471
    invoke-direct {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->initPreferenceChangeListener()V

    return-void
.end method

.method private initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V
    .locals 3

    .line 688
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 689
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    .line 690
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 691
    aget-object v1, p2, v0

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 692
    iget-object v2, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isHideServices(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 330
    invoke-static {p0}, Lcom/android/settings/cloud/AccessibilityDisableList;->getCacheDisableSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "com.miui.voiceassist"

    .line 331
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportAccessibilityHaptic(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 333
    sget-object p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.google.android.marvin.talkback.TalkBackService"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_0
    sget-object p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->HIDE_SERVICES_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 336
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->HIDE_SERVICES_LIST:Ljava/util/List;

    .line 337
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$addOcrPrefAndSort$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 505
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "enhance_tb_ocr_ability"

    invoke-static {p0, p2, p1}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getInstalledAccessibilityList$2(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    .line 648
    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->containsTargetNameInList(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateServicePreferences$1()V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mScreenReaderPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->isScreenReaderCheckboxOpen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isTallBackActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->accessibility_summary_state_disabled:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 563
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->accessibility_summary_state_enabled:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 562
    :goto_1
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private releasePreferenceChangeListener()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleAutoSpeakerPreference:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 492
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_1

    .line 493
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->updateSystemPreferences()V

    .line 535
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->updateServicePreferences()V

    return-void
.end method

.method private updateCategoryOrderFromArray(Ljava/lang/String;I)V
    .locals 6

    .line 718
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 719
    iget-object p0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    .line 720
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    .line 721
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 724
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v3

    .line 725
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 726
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

    .line 276
    sget p0, Lcom/android/settings/R$string;->help_uri_accessibility:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "VisualAccessibilitySettings"

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

    .line 321
    const-class p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageIndex()I
    .locals 0

    .line 0
    const/16 p0, 0x3f1

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 360
    sget p0, Lcom/android/settings/R$xml;->accessibility_settings_visual:I

    return p0
.end method

.method public isScreenReaderCheckboxOpen()Z
    .locals 2

    .line 485
    iget-object p0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v0, "is_accessibility_screen_reader_open"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 292
    const-class p1, Lcom/android/settings/display/DarkUIPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 281
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ACCESSIBILITY_SCREEN_READER_SP"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 286
    invoke-direct {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->initializeAllPreferences()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 316
    invoke-direct {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->releasePreferenceChangeListener()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->handleToggleDisableAnimations()V

    return v1

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleAutoSpeakerPreference:Landroidx/preference/SwitchPreference;

    if-ne v0, p1, :cond_1

    instance-of p1, p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    .line 347
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->handleToggleAutoSpeakerPreferenceClick(Z)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 355
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 4

    .line 297
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 298
    invoke-direct {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->updateAllPreferences()V

    .line 300
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 301
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 307
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 308
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method protected updateServicePreferences()V
    .locals 10

    .line 542
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 543
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    .line 544
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 545
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    .line 546
    iget-object v4, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    .line 547
    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleAutoSpeakerPreference:Landroidx/preference/SwitchPreference;

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_auto_speaker"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 552
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mScreenZoomPreference:Lcom/android/settings/display/ScreenZoomPreference;

    if-eqz v0, :cond_2

    .line 558
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/display/ScreenZoomPreference;->updateZoomLevel(Landroid/content/Context;)V

    .line 561
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportAccessibilityHaptic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 562
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/accessibility/VisualAccessibilitySettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/VisualAccessibilitySettings;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 568
    :cond_3
    sget v0, Lcom/android/settings/R$array;->config_downloaded_services:I

    const-string/jumbo v2, "user_installed_services_category"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 570
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_screen_reader_services:I

    const-string/jumbo v3, "screen_reader_category"

    invoke-direct {p0, v3, v0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 572
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_display_services:I

    const-string v4, "display_category"

    invoke-direct {p0, v4, v0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 575
    invoke-direct {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->addTalkbackToScreenReader()V

    .line 576
    invoke-direct {p0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->addScreenToSpeakToScreenReader()V

    .line 582
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 581
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->getInstalledAccessibilityList(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    .line 584
    iget-object v5, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    .line 585
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 587
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    if-ge v1, v5, :cond_6

    .line 588
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/RestrictedPreference;

    .line 589
    invoke-virtual {v6}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "component_name"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 593
    sget-object v8, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 594
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    check-cast v8, Landroidx/preference/PreferenceCategory;

    .line 595
    iget-object v9, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_4
    iget-object v8, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 600
    iget-object v8, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/preference/PreferenceCategory;

    goto :goto_2

    :cond_5
    move-object v7, v2

    .line 602
    :goto_2
    invoke-virtual {v7, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 603
    iget-object v8, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 607
    :cond_6
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->addOcrPrefAndSort(Landroidx/preference/PreferenceScreen;)V

    .line 611
    sget v0, Lcom/android/settings/R$array;->config_order_screen_reader_services:I

    invoke-direct {p0, v3, v0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 613
    sget v0, Lcom/android/settings/R$array;->config_order_display_services:I

    invoke-direct {p0, v4, v0}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 617
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 618
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 620
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_3
    return-void
.end method

.method protected updateSystemPreferences()V
    .locals 4

    .line 736
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v1, "experimental_category"

    .line 738
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 739
    iget-object v1, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v2, "display_category"

    .line 740
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 741
    iget-object v2, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleInversionPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 742
    iget-object v2, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 743
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroidx/preference/Preference;

    .line 744
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getServiceSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 743
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroidx/preference/Preference;

    .line 746
    invoke-virtual {v2}, Landroidx/preference/Preference;->getOrder()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 745
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 747
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    .line 748
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility_display_daltonizer_enabled"

    .line 747
    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleInversionPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    .line 750
    invoke-virtual {v2}, Landroidx/preference/Preference;->getOrder()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 749
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 751
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleInversionPreference:Landroidx/preference/Preference;

    .line 752
    invoke-virtual {v2}, Landroidx/preference/Preference;->getOrder()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 751
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 753
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleInversionPreference:Landroidx/preference/Preference;

    .line 754
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility_display_inversion_enabled"

    .line 753
    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 755
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mToggleInversionPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 756
    iget-object p0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method
