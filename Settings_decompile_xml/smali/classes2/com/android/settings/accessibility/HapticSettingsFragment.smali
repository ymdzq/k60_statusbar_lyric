.class public Lcom/android/settings/accessibility/HapticSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "HapticSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static COMMON_SERVICES_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessibilityScreenReader:Landroidx/preference/CheckBoxPreference;

.field private mChangePreferenceKey:Ljava/lang/String;

.field mDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mHandler:Landroid/os/Handler;

.field private mHapticExperienceDetailsPreference:Landroidx/preference/Preference;

.field private mHapticExperiencePreference:Landroidx/preference/Preference;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mScreenReaderHapticPreference:Lcom/android/settings/widget/CustomCheckBoxPreference;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$JWj0_c92JMrfyXrjqCL_K9WhWak(Lcom/android/settings/accessibility/HapticSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->lambda$updateSystemPreferences$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$tJXnx5pq05Z-e32a4RcjSzVCDew(Lcom/android/settings/accessibility/HapticSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->lambda$updateSystemPreferences$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$tpHBsfdOFqM7IBoFVTGp9yk6K5k(Lcom/android/settings/accessibility/HapticSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->lambda$updateSystemPreferences$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAccessibilityScreenReader(Lcom/android/settings/accessibility/HapticSettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mAccessibilityScreenReader:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChangePreferenceKey(Lcom/android/settings/accessibility/HapticSettingsFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mChangePreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/accessibility/HapticSettingsFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSharedPrefs(Lcom/android/settings/accessibility/HapticSettingsFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateRunnable(Lcom/android/settings/accessibility/HapticSettingsFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChangePreferenceKey(Lcom/android/settings/accessibility/HapticSettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mChangePreferenceKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAllPreferences(Lcom/android/settings/accessibility/HapticSettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->updateAllPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/HapticSettingsFragment;->COMMON_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.bjbyhd.voiceback/com.bjbyhd.voiceback.BoyhoodVoiceBackService"

    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/android/settings/accessibility/HapticSettingsFragment;->COMMON_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.android.tback/net.tatans.soundback.SoundBackService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/android/settings/accessibility/HapticSettingsFragment;->COMMON_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.nirenr.talkman/com.nirenr.talkman.TalkManAccessibilityService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/android/settings/accessibility/HapticSettingsFragment;->COMMON_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.dianming.phoneapp/com.dianming.phoneapp.MyAccessibilityService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/android/settings/accessibility/HapticSettingsFragment;->COMMON_SERVICES_LIST:Ljava/util/List;

    const-string v1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/android/settings/accessibility/HapticSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/HapticSettingsFragment$2;-><init>(Lcom/android/settings/accessibility/HapticSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 87
    new-instance v0, Lcom/android/settings/accessibility/HapticSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/HapticSettingsFragment$3;-><init>(Lcom/android/settings/accessibility/HapticSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 395
    new-instance v0, Lcom/android/settings/accessibility/HapticSettingsFragment$6;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/HapticSettingsFragment$6;-><init>(Lcom/android/settings/accessibility/HapticSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 59
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;

    .line 62
    invoke-virtual {v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "accessibility_button_targets"

    .line 66
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_shortcut_target_service"

    .line 67
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lcom/android/settings/accessibility/HapticSettingsFragment$1;

    iget-object v2, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/accessibility/HapticSettingsFragment$1;-><init>(Lcom/android/settings/accessibility/HapticSettingsFragment;Landroid/os/Handler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    return-void
.end method

.method static getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 2

    if-eqz p2, :cond_0

    .line 297
    iget-boolean v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    if-eqz v0, :cond_0

    .line 298
    sget p1, Lcom/android/settings/R$string;->accessibility_summary_state_stopped:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 303
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_state_enabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 304
    :cond_1
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_state_disabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 306
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 307
    sget v0, Lcom/android/settings/R$string;->preference_summary_default_combination:I

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p0

    :goto_1
    return-object p2
.end method

.method private initScreenReader()V
    .locals 3

    .line 159
    sget-object v0, Lcom/android/settings/accessibility/HapticSettingsFragment;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->updateServicePreferences()V

    return-void
.end method

.method private synthetic lambda$updateSystemPreferences$0()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mScreenReaderHapticPreference:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isTallBackActive(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$updateSystemPreferences$1()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHapticExperienceDetailsPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isTallBackActive(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$updateSystemPreferences$2()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHapticExperiencePreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isTallBackActive(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private putBasicExtras(Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    .line 318
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "preference_key"

    .line 319
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "title"

    .line 320
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "summary"

    .line 321
    invoke-virtual {p0, p1, p4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p1, "component_name"

    .line 322
    invoke-virtual {p0, p1, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "animated_image_res"

    .line 323
    invoke-virtual {p0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "html_description"

    .line 324
    invoke-virtual {p0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putServiceExtras(Landroidx/preference/Preference;Landroid/content/pm/ResolveInfo;Ljava/lang/Boolean;)V
    .locals 0

    .line 335
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "resolve_info"

    .line 337
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "checked"

    .line 338
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private putSettingsExtras(Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 348
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 350
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->accessibility_menu_item_settings:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "settings_title"

    .line 351
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "settings_component_name"

    .line 353
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->updateSystemPreferences()V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->updateServicePreferences()V

    return-void
.end method

.method private updateSystemPreferences()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mAccessibilityScreenReader:Landroidx/preference/CheckBoxPreference;

    const-wide/16 v1, 0x1f4

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/accessibility/HapticSettingsFragment$4;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/HapticSettingsFragment$4;-><init>(Lcom/android/settings/accessibility/HapticSettingsFragment;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mScreenReaderHapticPreference:Lcom/android/settings/widget/CustomCheckBoxPreference;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->isScreenReaderCheckboxOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mScreenReaderHapticPreference:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings/accessibility/HapticSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/settings/accessibility/HapticSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/HapticSettingsFragment;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHapticExperienceDetailsPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_4

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->isScreenReaderCheckboxOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHapticExperienceDetailsPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/accessibility/HapticSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/HapticSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/HapticSettingsFragment;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHapticExperiencePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/accessibility/HapticSettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/HapticSettingsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/accessibility/HapticSettingsFragment;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/accessibility/HapticSettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/HapticSettingsFragment$5;-><init>(Lcom/android/settings/accessibility/HapticSettingsFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "HapticSettingsFragment"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 370
    sget p0, Lcom/android/settings/R$xml;->haptic_settings:I

    return p0
.end method

.method public isScreenReaderCheckboxOpen()Z
    .locals 2

    .line 237
    iget-object p0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ACCESSIBILITY_SCREEN_READER_SP"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mPm:Landroid/content/pm/PackageManager;

    const-string p1, "accessibility_screen_reader"

    .line 151
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mAccessibilityScreenReader:Landroidx/preference/CheckBoxPreference;

    const-string p1, "accessibility_screen_reader_haptic"

    .line 152
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/CustomCheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mScreenReaderHapticPreference:Lcom/android/settings/widget/CustomCheckBoxPreference;

    .line 153
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "haptic_experience_details"

    .line 154
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHapticExperienceDetailsPreference:Landroidx/preference/Preference;

    const-string p1, "haptic_experience"

    .line 155
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHapticExperiencePreference:Landroidx/preference/Preference;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 380
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 381
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accessibility_screen_reader_haptic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.miui.accessibility/com.miui.accessibility.haptic.HapticAccessibilityService"

    .line 382
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 383
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v2, v1, p2}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mChangePreferenceKey:Ljava/lang/String;

    .line 387
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mScreenReaderHapticPreference:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/CustomCheckBoxPreference;->requestFocusDelay()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 360
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 361
    sget-object v0, Lcom/android/settings/accessibility/HapticSettingsFragment;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 362
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;

    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 364
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 363
    invoke-static {v3, v1}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->isAccessibilityServiceOn(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->setPreferenceState(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 170
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->initScreenReader()V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->updateAllPreferences()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/accessibility/HapticSettingsFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 183
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 421
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected updateServicePreferences()V
    .locals 20

    move-object/from16 v8, p0

    .line 242
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 244
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 250
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 251
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 252
    new-instance v13, Landroid/content/ComponentName;

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    .line 255
    sget-object v0, Lcom/android/settings/accessibility/HapticSettingsFragment;->COMMON_SERVICES_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;

    .line 258
    iget-object v0, v8, Lcom/android/settings/accessibility/HapticSettingsFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 259
    invoke-interface {v9, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 260
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 261
    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 262
    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11, v6}, Lcom/android/settings/accessibility/HapticSettingsFragment;->getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 266
    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v7, v6}, Lcom/android/settings/accessibility/haptic/HapticRadioButtonPreference;->setPreferenceState(Z)V

    const/4 v0, 0x0

    .line 268
    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 270
    invoke-static {v11}, Lcom/android/settings/accessibility/AccessibilityServiceUtils;->getAccessibilityServiceFragmentTypeName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getAnimatedImageRes()I

    move-result v16

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v11, v6}, Lcom/android/settings/accessibility/AccessibilityServiceUtils;->getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v4

    .line 273
    iget-object v1, v8, Lcom/android/settings/accessibility/HapticSettingsFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v17

    .line 274
    invoke-virtual {v11}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v18, v9

    move-object v9, v2

    move-object v2, v14

    move-object/from16 v19, v10

    move-object v10, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v11

    move-object v11, v7

    move-object v7, v13

    .line 278
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/accessibility/HapticSettingsFragment;->putBasicExtras(Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V

    .line 280
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v8, v11, v12, v0}, Lcom/android/settings/accessibility/HapticSettingsFragment;->putServiceExtras(Landroidx/preference/Preference;Landroid/content/pm/ResolveInfo;Ljava/lang/Boolean;)V

    .line 281
    invoke-direct {v8, v11, v10, v9}, Lcom/android/settings/accessibility/HapticSettingsFragment;->putSettingsExtras(Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v17, v11

    :goto_1
    move-object/from16 v11, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    goto/16 :goto_0

    :cond_3
    return-void
.end method
