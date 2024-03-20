.class public Lcom/android/settings/display/ScreenEffectFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenEffectFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lmiuix/preference/FolmeAnimationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ScreenEffectFragment$ScreenEffectHandler;,
        Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;
    }
.end annotation


# static fields
.field private static final IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

.field private static final SCREEN_COLOR_ARR:[Ljava/lang/String;

.field private static final SCREEN_COLOR_VALUE_ARR:[I

.field private static final SCREEN_MSG_KV_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static SCREEN_OPTIMIZE_ARR:[Ljava/lang/String;

.field private static SCREEN_OPTIMIZE_VALUE_ARR:[I

.field public static final SUPPORT_DISPLAY_EXPERT_MODE:Z

.field private static final SUPPORT_UNLIMITED_COLOR:Z

.field private static final SUPPORT_UNLIMITED_COLOR_MODE:Z

.field private static final mScreenEffectSupport:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentOptimizeMode:I

.field private mExpertPreference:Lcom/android/settings/display/ExpertRadioButtonPreference;

.field private mHandler:Lcom/android/settings/display/ScreenEffectFragment$ScreenEffectHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPaperModeObserver:Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;

.field private mPreviewView:Landroid/view/View;

.field private mScreenColorPreference:Lcom/android/settings/display/ScreenColorPreference;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/display/ScreenEffectFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcancelToast(Lcom/android/settings/display/ScreenEffectFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->cancelToast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoCompatibleAction(Lcom/android/settings/display/ScreenEffectFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->doCompatibleAction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScreenColor(Lcom/android/settings/display/ScreenEffectFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEffectFragment;->setScreenColor(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScreenEffectChannelEnable(Lcom/android/settings/display/ScreenEffectFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEffectFragment;->setScreenEffectChannelEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScreenOptimizeMode(Lcom/android/settings/display/ScreenEffectFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEffectFragment;->setScreenOptimizeMode(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowToast(Lcom/android/settings/display/ScreenEffectFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEffectFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateExpertStatus(Lcom/android/settings/display/ScreenEffectFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEffectFragment;->updateExpertStatus(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateScreenColorPreference(Lcom/android/settings/display/ScreenEffectFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEffectFragment;->updateScreenColorPreference(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetIS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/settings/display/ScreenEffectFragment;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 14

    const-string v0, "is_compatible_paper_and_screen_effect"

    const/4 v1, 0x0

    .line 66
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/display/ScreenEffectFragment;->IS_COMPATIBLE_PAPER_AND_SCREEN_EFFECT:Z

    const-string/jumbo v0, "support_display_expert_mode"

    .line 70
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/display/ScreenEffectFragment;->SUPPORT_DISPLAY_EXPERT_MODE:Z

    const-string/jumbo v0, "screen_optimize_adapt"

    const-string/jumbo v2, "screen_optimize_enhance"

    const-string/jumbo v3, "screen_optimize_standard"

    .line 83
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/display/ScreenEffectFragment;->SCREEN_OPTIMIZE_ARR:[Ljava/lang/String;

    const/4 v4, 0x1

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    .line 111
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    .line 112
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 89
    filled-new-array {v4, v6, v8}, [I

    move-result-object v10

    sput-object v10, Lcom/android/settings/display/ScreenEffectFragment;->SCREEN_OPTIMIZE_VALUE_ARR:[I

    const-string/jumbo v10, "screen_color_warm"

    const-string/jumbo v11, "screen_color_nature"

    const-string/jumbo v12, "screen_color_cool"

    .line 95
    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings/display/ScreenEffectFragment;->SCREEN_COLOR_ARR:[Ljava/lang/String;

    .line 101
    filled-new-array {v4, v6, v8}, [I

    move-result-object v6

    sput-object v6, Lcom/android/settings/display/ScreenEffectFragment;->SCREEN_COLOR_VALUE_ARR:[I

    .line 107
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/android/settings/display/ScreenEffectFragment;->SCREEN_MSG_KV_MAP:Ljava/util/Map;

    .line 110
    invoke-interface {v6, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-interface {v6, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-interface {v6, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "screen_optimize_expert"

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->SCREEN_EFFECT_SUPPORTED:I

    sput v0, Lcom/android/settings/display/ScreenEffectFragment;->mScreenEffectSupport:I

    const-string/jumbo v0, "ro.vendor.colorpick_adjust"

    .line 124
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.colorpick_adjust"

    .line 125
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    sput-boolean v0, Lcom/android/settings/display/ScreenEffectFragment;->SUPPORT_UNLIMITED_COLOR:Z

    const-string/jumbo v0, "ro.vendor.all_modes.colorpick_adjust"

    .line 129
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ro.all_modes.colorpick_adjust"

    .line 130
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    sput-boolean v1, Lcom/android/settings/display/ScreenEffectFragment;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 135
    new-instance v0, Lcom/android/settings/display/ScreenEffectFragment$ScreenEffectHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ScreenEffectFragment$ScreenEffectHandler;-><init>(Lcom/android/settings/display/ScreenEffectFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mHandler:Lcom/android/settings/display/ScreenEffectFragment$ScreenEffectHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/ScreenEffectFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/ScreenEffectFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/display/ScreenEffectFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/display/ScreenEffectFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/display/ScreenEffectFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private addExpertModeIfNeed()V
    .locals 4

    .line 339
    invoke-static {}, Lcom/android/settings/display/ScreenEffectFragment;->supportDisplayAdvanced()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "screen_optimize"

    .line 340
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 341
    new-instance v1, Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 342
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 343
    new-instance v0, Lcom/android/settings/display/ExpertRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/display/ExpertRadioButtonPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "screen_optimize_expert"

    .line 344
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->display_advanced_mode_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->display_advanced_mode_summary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 347
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 348
    sget v3, Lcom/android/settings/R$layout;->miuix_preference_radiobutton_two_state_background:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 349
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 350
    invoke-virtual {v1, v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    const/4 v1, 0x4

    .line 351
    iget v3, p0, Lcom/android/settings/display/ScreenEffectFragment;->mCurrentOptimizeMode:I

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings/display/ExpertRadioButtonPreference;->setChecked(Z)V

    .line 352
    iput-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mExpertPreference:Lcom/android/settings/display/ExpertRadioButtonPreference;

    :cond_1
    return-void
.end method

.method private cancelToast()V
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mToast:Landroid/widget/Toast;

    if-eqz p0, :cond_0

    .line 661
    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method private checkDataIslegal()V
    .locals 6

    .line 232
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    const-string/jumbo v2, "screen_optimize_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v5, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "screen_color_level"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_1

    .line 249
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private doCompatibleAction()V
    .locals 2

    const/4 v0, 0x0

    .line 676
    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenEffectFragment;->setScreenEffectChannelEnable(Z)V

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 679
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->getScreenMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 680
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_color_and_optimize_disabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenEffectFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 684
    :cond_1
    sget-boolean v0, Lcom/android/settings/display/ScreenEffectFragment;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    if-eqz v0, :cond_2

    .line 685
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_optimize_disabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenEffectFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 688
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->getScreenMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 689
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_optimize_disabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenEffectFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_color_and_optimize_disabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenEffectFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private generateCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;
    .locals 2

    .line 371
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 372
    new-instance v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 373
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 p0, 0x0

    .line 375
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 376
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v1
.end method

.method private generateScreenColorPreference()V
    .locals 8

    .line 257
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_level"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "screen_color"

    .line 261
    sget v2, Lcom/android/settings/R$string;->screen_color_temperature:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/display/ScreenEffectFragment;->generateCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    .line 263
    sget-boolean v2, Lcom/android/settings/display/ScreenEffectFragment;->SUPPORT_UNLIMITED_COLOR:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$array;->screen_color_title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move v4, v3

    .line 266
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 267
    new-instance v5, Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lmiuix/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 269
    new-instance v6, Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 270
    sget-object v7, Lcom/android/settings/display/ScreenEffectFragment;->SCREEN_COLOR_ARR:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 271
    aget-object v7, v2, v4

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 273
    sget v7, Lcom/android/settings/R$layout;->miuix_preference_radiobutton_two_state_background:I

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 274
    invoke-virtual {v6, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 275
    invoke-virtual {v5, v6}, Lmiuix/preference/RadioButtonPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 276
    sget-object v5, Lcom/android/settings/display/ScreenEffectFragment;->SCREEN_COLOR_VALUE_ARR:[I

    aget v5, v5, v4

    if-ne v5, v0, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v3

    .line 277
    :goto_1
    invoke-virtual {v6, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    :cond_1
    new-instance v0, Lcom/android/settings/display/ScreenColorPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/display/ScreenColorPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo p0, "screen_color_pre"

    .line 281
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 283
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method private generateScreenOptimizePreference()V
    .locals 9

    const-string/jumbo v0, "screen_optimize"

    .line 288
    sget v1, Lcom/android/settings/R$string;->screen_optimize:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/ScreenEffectFragment;->generateCategory(Ljava/lang/String;I)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    .line 290
    sget-boolean v1, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_TRUE_COLOR:Z

    if-eqz v1, :cond_0

    .line 291
    sget v2, Lcom/android/settings/R$array;->true_color_screen_optimize_title:I

    goto :goto_0

    .line 292
    :cond_0
    sget v2, Lcom/android/settings/R$array;->screen_optimize_title:I

    :goto_0
    if-eqz v1, :cond_1

    .line 294
    sget v1, Lcom/android/settings/R$array;->true_color_screen_optimize_summary:I

    goto :goto_1

    .line 295
    :cond_1
    sget v1, Lcom/android/settings/R$array;->screen_optimize_summary:I

    .line 296
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-direct {p0, v2, v1}, Lcom/android/settings/display/ScreenEffectFragment;->updateOrderIfNeed([Ljava/lang/String;[Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->getScreenMode()I

    move-result v3

    iput v3, p0, Lcom/android/settings/display/ScreenEffectFragment;->mCurrentOptimizeMode:I

    const/4 v3, 0x0

    move v4, v3

    .line 303
    :goto_2
    array-length v5, v2

    if-ge v4, v5, :cond_4

    .line 304
    sget v5, Lcom/android/settings/display/ScreenEffectFragment;->mScreenEffectSupport:I

    const/4 v6, 0x1

    shl-int v7, v6, v4

    and-int/2addr v5, v7

    if-nez v5, :cond_2

    goto :goto_4

    .line 307
    :cond_2
    new-instance v5, Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lmiuix/preference/RadioButtonPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 308
    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 309
    new-instance v7, Lcom/android/settings/widget/CustomRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/widget/CustomRadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 310
    sget-object v8, Lcom/android/settings/display/ScreenEffectFragment;->SCREEN_OPTIMIZE_ARR:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 311
    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 312
    aget-object v8, v1, v4

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 314
    sget v8, Lcom/android/settings/R$layout;->miuix_preference_radiobutton_two_state_background:I

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 315
    invoke-virtual {v7, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 316
    invoke-virtual {v5, v7}, Lmiuix/preference/RadioButtonPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 317
    sget-object v5, Lcom/android/settings/display/ScreenEffectFragment;->SCREEN_OPTIMIZE_VALUE_ARR:[I

    aget v5, v5, v4

    iget v8, p0, Lcom/android/settings/display/ScreenEffectFragment;->mCurrentOptimizeMode:I

    if-ne v5, v8, :cond_3

    goto :goto_3

    :cond_3
    move v6, v3

    .line 318
    :goto_3
    invoke-virtual {v7, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private generateTrueToneModePrefIfNeed()V
    .locals 4

    const-string/jumbo v0, "support_truetone"

    const/4 v1, 0x0

    .line 708
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "true_tone_key"

    .line 711
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 713
    new-instance v1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "screen_truetone_pref"

    .line 714
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->truetone_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 716
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->truetone_summary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 717
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->getTrueToneStatues()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 718
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 719
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private getScreenColorPrefer()I
    .locals 2

    .line 539
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_color_level"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getScreenMode()I
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/ScreenEffectFragment;->getScreenMode(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getScreenMode(Landroid/content/Context;)I
    .locals 3

    .line 547
    sget v0, Lcom/android/settings/display/ScreenEffectFragment;->mScreenEffectSupport:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const-string v0, "default_display_color_mode"

    const/4 v2, -0x1

    .line 554
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    if-nez p0, :cond_2

    return v1

    .line 560
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_optimize_mode"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getTrueToneStatues()Z
    .locals 2

    .line 724
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_true_tone"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private handleIfNeedDisableAIDisplayMode(I)V
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_enhance_engine_gallery_ai_mode_status"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "true"

    .line 530
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "ScreenEffect"

    const-string v1, "disable AI display mode!"

    .line 533
    invoke-static {p1, v1}, Lmiuix/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "false"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setScreenColor(I)V
    .locals 1

    .line 496
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->getScreenColorPrefer()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 497
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_color_level"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private setScreenEffectChannelEnable(Z)V
    .locals 1

    .line 696
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const-string/jumbo v0, "screen_optimize"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 698
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setScreenOptimizeMode(I)V
    .locals 4

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenOptimizeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenEffectFragment"

    invoke-static {v1, v0}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->getScreenMode()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 515
    :cond_0
    iput p1, p0, Lcom/android/settings/display/ScreenEffectFragment;->mCurrentOptimizeMode:I

    .line 516
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_optimize_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 519
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v3, 0x1a

    invoke-virtual {v0, v3, v1, v2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    .line 521
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEffectFragment;->handleIfNeedDisableAIDisplayMode(I)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 652
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->cancelToast()V

    .line 656
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment;->mToast:Landroid/widget/Toast;

    .line 657
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static supportDisplayAdvanced()Z
    .locals 1

    .line 356
    sget-boolean v0, Lcom/android/settings/display/ScreenEffectFragment;->SUPPORT_DISPLAY_EXPERT_MODE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateExpertStatus(Z)V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mExpertPreference:Lcom/android/settings/display/ExpertRadioButtonPreference;

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0, p1}, Lcom/android/settings/display/ExpertRadioButtonPreference;->setPreferenceScreenStatus(Z)V

    if-eqz p1, :cond_1

    .line 365
    iget-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment;->mExpertPreference:Lcom/android/settings/display/ExpertRadioButtonPreference;

    const/4 v0, 0x4

    iget p0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mCurrentOptimizeMode:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settings/display/ExpertRadioButtonPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private updateOrderIfNeed([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 323
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_NEED_CHANGE_SCREENEFFECT_ORDER:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "screen_optimize_adapt"

    const-string/jumbo v1, "screen_optimize_enhance"

    const-string/jumbo v2, "screen_optimize_standard"

    .line 326
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/ScreenEffectFragment;->SCREEN_OPTIMIZE_ARR:[Ljava/lang/String;

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 327
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/ScreenEffectFragment;->SCREEN_OPTIMIZE_VALUE_ARR:[I

    .line 329
    aget-object v0, p1, v1

    aput-object v0, p1, v2

    .line 330
    aget-object v0, p2, v1

    aput-object v0, p2, v2

    .line 331
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->screen_effect_adapt_color_title:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    const/4 v0, 0x0

    .line 332
    aget-object v2, p2, v0

    aput-object v2, p2, v1

    .line 333
    iget-object v1, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->screen_effect_origin_color_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 334
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->screen_effect_origin_color_summary:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v0

    return-void
.end method

.method private updateRadioButtonPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 381
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_1

    .line 385
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 388
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 389
    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/RadioButtonPreference;

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 391
    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateScreenColorPreference(I)V
    .locals 4

    .line 399
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "screen_color"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    sget v1, Lcom/android/settings/display/ScreenEffectFragment;->mScreenEffectSupport:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 408
    sget-boolean v1, Lcom/android/settings/display/ScreenEffectFragment;->SUPPORT_UNLIMITED_COLOR:Z

    const/4 v3, 0x0

    if-nez v1, :cond_2

    if-ne p1, v2, :cond_1

    .line 410
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 412
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 413
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lmiuix/preference/RadioButtonPreference;

    .line 414
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 416
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->getScreenColorPrefer()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 417
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lmiuix/preference/RadioButtonPreference;

    .line 418
    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 422
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->getScreenColorPrefer()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 423
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lmiuix/preference/RadioButtonPreference;

    .line 424
    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 426
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 427
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lmiuix/preference/RadioButtonPreference;

    .line 428
    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 431
    :cond_2
    sget-boolean p0, Lcom/android/settings/display/ScreenEffectFragment;->SUPPORT_UNLIMITED_COLOR_MODE:Z

    if-eqz p0, :cond_4

    .line 433
    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_3

    .line 434
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    const/4 p0, 0x4

    if-ne p1, p0, :cond_6

    .line 439
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_5

    .line 443
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 445
    :cond_5
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 667
    const-class p0, Lcom/android/settings/display/ScreenEffectFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isTouchAnimationEnable()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ScreenEffectHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment;->mHandlerThread:Landroid/os/HandlerThread;

    .line 150
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    .line 153
    sget p1, Lcom/android/settings/R$xml;->screen_effect_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 154
    sget-boolean p1, Lcom/android/settings/display/ScreenEffectFragment;->SUPPORT_UNLIMITED_COLOR:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->checkDataIslegal()V

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->generateScreenOptimizePreference()V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->generateTrueToneModePrefIfNeed()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->generateScreenColorPreference()V

    .line 160
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 161
    sget v1, Lcom/android/settings/R$layout;->blank_preference:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 163
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 165
    iget v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mCurrentOptimizeMode:I

    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenEffectFragment;->updateScreenColorPreference(I)V

    if-eqz p1, :cond_1

    const-string/jumbo p1, "screen_color_pre"

    .line 167
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/ScreenColorPreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment;->mScreenColorPreference:Lcom/android/settings/display/ScreenColorPreference;

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->addExpertModeIfNeed()V

    const-string/jumbo p1, "support_screen_paper_mode"

    .line 172
    invoke-static {p1, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    new-instance p1, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;-><init>(Lcom/android/settings/display/ScreenEffectFragment;)V

    iput-object p1, p0, Lcom/android/settings/display/ScreenEffectFragment;->mPaperModeObserver:Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;

    .line 174
    invoke-virtual {p1}, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->register()V

    .line 175
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mPaperModeObserver:Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->onChange(Z)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mPaperModeObserver:Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/android/settings/display/ScreenEffectFragment$PaperModeObserver;->unregister()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    .line 227
    iget-object v1, p0, Lcom/android/settings/display/ScreenEffectFragment;->mHandler:Lcom/android/settings/display/ScreenEffectFragment$ScreenEffectHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 228
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 2

    .line 207
    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onExtraPaddingChanged(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->paper_mode_preview_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 210
    iget-object p0, p0, Lcom/android/settings/display/ScreenEffectFragment;->mPreviewView:Landroid/view/View;

    add-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, v0, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 216
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 217
    invoke-direct {p0}, Lcom/android/settings/display/ScreenEffectFragment;->cancelToast()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 457
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v1, v5

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v1, "screen_optimize_adapt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "screen_optimize_expert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "screen_truetone_pref"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "screen_optimize_standard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "screen_color_nature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "screen_optimize_enhance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "screen_color_warm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "screen_color_cool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 477
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v6, "screen_true_tone"

    invoke-static {v1, v6, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    const-string p2, ""

    move-object v1, p2

    move p2, v5

    move v6, p2

    goto :goto_3

    .line 472
    :pswitch_1
    sget-object p2, Lcom/android/settings/display/ScreenEffectFragment;->SCREEN_MSG_KV_MAP:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 474
    iget-object v1, p0, Lcom/android/settings/display/ScreenEffectFragment;->mHandler:Lcom/android/settings/display/ScreenEffectFragment$ScreenEffectHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v1, "screen_optimize"

    move v6, v3

    goto :goto_3

    .line 464
    :pswitch_2
    sget-object p2, Lcom/android/settings/display/ScreenEffectFragment;->SCREEN_MSG_KV_MAP:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string/jumbo v1, "screen_color"

    move v6, v4

    :goto_3
    if-eq v6, v5, :cond_9

    .line 484
    iget-object v5, p0, Lcom/android/settings/display/ScreenEffectFragment;->mHandler:Lcom/android/settings/display/ScreenEffectFragment$ScreenEffectHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v5, v6, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    if-ne v6, v3, :cond_8

    const-wide/16 v6, 0x32

    goto :goto_4

    :cond_8
    const-wide/16 v6, 0x0

    :goto_4
    invoke-virtual {v5, p2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 487
    :cond_9
    instance-of p1, p1, Lmiuix/preference/RadioButtonPreference;

    if-eqz p1, :cond_a

    .line 488
    invoke-direct {p0, v1, v0}, Lcom/android/settings/display/ScreenEffectFragment;->updateRadioButtonPreference(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_a
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x725647a8 -> :sswitch_7
        -0x724d646c -> :sswitch_6
        -0x632c6941 -> :sswitch_5
        -0x23e0820a -> :sswitch_4
        -0x21ea3334 -> :sswitch_3
        -0xcf6a791 -> :sswitch_2
        0x1623d3f9 -> :sswitch_1
        0x29bf7b73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 190
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 196
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->preview_preference:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/ScreenEffectFragment;->mPreviewView:Landroid/view/View;

    .line 198
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 199
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
