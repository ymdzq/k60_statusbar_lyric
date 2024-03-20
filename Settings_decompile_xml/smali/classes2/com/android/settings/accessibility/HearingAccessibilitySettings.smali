.class public Lcom/android/settings/accessibility/HearingAccessibilitySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "HearingAccessibilitySettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CATEGORIES:[Ljava/lang/String;

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

.field private mEnvironmentSoundRecognition:Lcom/android/settings/MiuiValuePreference;

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

.field private final mUpdateVoiceAccess:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnvironmentSoundRecognition(Lcom/android/settings/accessibility/HearingAccessibilitySettings;)Lcom/android/settings/MiuiValuePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mEnvironmentSoundRecognition:Lcom/android/settings/MiuiValuePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/accessibility/HearingAccessibilitySettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateRunnable(Lcom/android/settings/accessibility/HearingAccessibilitySettings;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateAllPreferences(Lcom/android/settings/accessibility/HearingAccessibilitySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->updateAllPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "audio_and_captions_category"

    .line 90
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    .line 350
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->accessibility_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 165
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/android/settings/accessibility/HearingAccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/HearingAccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/HearingAccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 118
    new-instance v0, Lcom/android/settings/accessibility/HearingAccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/HearingAccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/HearingAccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mUpdateVoiceAccess:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v0, Lcom/android/settings/accessibility/HearingAccessibilitySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/HearingAccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/HearingAccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 157
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 161
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    .line 168
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;

    .line 171
    invoke-virtual {v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "accessibility_button_targets"

    .line 175
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_shortcut_target_service"

    .line 176
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Lcom/android/settings/accessibility/HearingAccessibilitySettings$4;

    iget-object v2, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/accessibility/HearingAccessibilitySettings$4;-><init>(Lcom/android/settings/accessibility/HearingAccessibilitySettings;Landroid/os/Handler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/HearingAccessibilitySettings;)Landroid/content/Context;
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private initializeAllPreferences()V
    .locals 4

    const/4 v0, 0x0

    .line 261
    :goto_0
    sget-object v1, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 262
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 263
    iget-object v3, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "environment_sound_recognition"

    .line 265
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiValuePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mEnvironmentSoundRecognition:Lcom/android/settings/MiuiValuePreference;

    const-string v0, "hearing_aids_tools_category"

    .line 266
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v1, "audio_and_captions_category"

    .line 267
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 268
    new-instance v2, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;-><init>(Landroid/content/Context;Z)V

    const-string p0, "flash_notifications_preference"

    .line 269
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 270
    sget p0, Lcom/android/settings/R$string;->flash_notifications_title:I

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 271
    sget p0, Lcom/android/settings/R$string;->flash_notifications_summary:I

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(I)V

    const-string p0, "com.android.settings.accessibility.FlashNotificationsPreferenceFragment"

    .line 272
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 273
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    .line 274
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOrder(I)V

    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->updateServicePreferences()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 355
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    new-instance v0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceController;

    const-string v1, "flash_notifications_preference"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/accessibility/FlashNotificationsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 192
    sget p0, Lcom/android/settings/R$string;->help_uri_accessibility:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "HearingAccessibilitySettings"

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

    .line 237
    const-class p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 251
    sget p0, Lcom/android/settings/R$xml;->accessibility_settings_hearing:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 203
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 204
    const-class p1, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/accessibility/AccessibilityHearingAidPreferenceController;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 198
    invoke-direct {p0}, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->initializeAllPreferences()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
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

    .line 246
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 4

    .line 210
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 211
    invoke-direct {p0}, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->updateAllPreferences()V

    .line 213
    iget-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 214
    iget-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mUpdateVoiceAccess:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "INTENT_ACTION_EXIT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 222
    iget-object v0, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mUpdateVoiceAccess:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method protected updateServicePreferences()V
    .locals 4

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 294
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 295
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 296
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 297
    iget-object v3, p0, Lcom/android/settings/accessibility/HearingAccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    .line 298
    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const-string v0, "hearing_aids_tools_category"

    .line 310
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method
