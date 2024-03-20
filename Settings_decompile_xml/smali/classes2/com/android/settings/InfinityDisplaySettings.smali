.class public Lcom/android/settings/InfinityDisplaySettings;
.super Lcom/android/settings/MiuiSettingsPreferenceFragment;
.source "InfinityDisplaySettings.java"


# instance fields
.field private mAppGuide:Landroidx/preference/Preference;

.field private mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

.field private mAppSwitchGuide:Landroidx/preference/Preference;

.field private mAspectRatio:Landroidx/preference/Preference;

.field private mBackGuide:Landroidx/preference/Preference;

.field private mCutoutMode:Landroidx/preference/Preference;

.field private mCutoutType:Landroidx/preference/CheckBoxPreference;

.field private mDemoExistes:Z

.field private mGuideCategory:Landroidx/preference/PreferenceCategory;

.field private mHasCheckedDemo:Z

.field private mHomeGuide:Landroidx/preference/Preference;

.field private mMistakeTouch:Landroidx/preference/CheckBoxPreference;

.field private mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

.field private mRecentGuide:Landroidx/preference/Preference;

.field private mScreenButtonHide:Landroidx/preference/CheckBoxPreference;

.field private mScreenButtonHideListener:Landroid/database/ContentObserver;

.field private mSettingCategory:Landroidx/preference/PreferenceCategory;

.field private mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmScreenButtonHide(Lcom/android/settings/InfinityDisplaySettings;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/InfinityDisplaySettings;->mScreenButtonHide:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Lcom/android/settings/MiuiSettingsPreferenceFragment;-><init>()V

    .line 326
    new-instance v0, Lcom/android/settings/InfinityDisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/InfinityDisplaySettings$2;-><init>(Lcom/android/settings/InfinityDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mScreenButtonHideListener:Landroid/database/ContentObserver;

    return-void
.end method

.method private checkDemoExist()Z
    .locals 5

    .line 396
    iget-boolean v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mHasCheckedDemo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mHasCheckedDemo:Z

    .line 399
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 400
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.fsgesture.HomeDemoAct"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "DEMO_TYPE"

    const-string v3, "DEMO_TO_HOME"

    .line 401
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    iput-boolean v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mDemoExistes:Z

    .line 409
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/InfinityDisplaySettings;->mDemoExistes:Z

    return p0
.end method

.method private isAppSwitchFeatureEnable()Z
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_gesture_appswitch_feature"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isDripType()Z
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "overlay_drip"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isForceBlack()Z
    .locals 1

    .line 163
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->supportForceBlackV2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black_v2"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isMistakeTouchEnable()Z
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_mistake_touch_toast"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isScreenButtonHidden()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setAppSwitchFeatureEnable(Z)V
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_gesture_appswitch_feature"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setDripType(Z)V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "overlay_drip"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setForceBlack(Z)V
    .locals 1

    .line 170
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->supportForceBlackV2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black_v2"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_black"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method

.method private setMistakeTouchEnable(Z)V
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_mistake_touch_toast"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setupForceImmersiveHintDialog(Lcom/android/settings/SimpleDialogFragment;)V
    .locals 2

    .line 253
    sget v0, Lcom/android/settings/R$string;->force_immersive_compatibility_dont_hide:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/SimpleDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 254
    sget v0, Lcom/android/settings/R$string;->force_immersive_compatibility_hide:I

    new-instance v1, Lcom/android/settings/InfinityDisplaySettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/InfinityDisplaySettings$1;-><init>(Lcom/android/settings/InfinityDisplaySettings;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/SimpleDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private showForceImmersiveHintDialog()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mScreenButtonHide:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 243
    new-instance v0, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;-><init>(I)V

    sget v1, Lcom/android/settings/R$string;->force_immersive_compatibility_hint_title:I

    .line 245
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->setTitle(Ljava/lang/String;)Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->force_immersive_compatibility_hint_message:I

    .line 246
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->setMessage(Ljava/lang/String;)Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->create()Lcom/android/settings/SimpleDialogFragment;

    move-result-object v0

    .line 248
    invoke-direct {p0, v0}, Lcom/android/settings/InfinityDisplaySettings;->setupForceImmersiveHintDialog(Lcom/android/settings/SimpleDialogFragment;)V

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "fragment_force_immersive_dialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private supportForceBlackV2()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 83
    const-class p0, Lcom/android/settings/InfinityDisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method isRightHand()Z
    .locals 2

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "window"

    .line 90
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 89
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    .line 92
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContextCompat;->getDisplayId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/IWindowManagerCompat;->hasNavigationBar(Landroid/view/IWindowManager;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 99
    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "fragment_force_immersive_dialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 101
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SimpleDialogFragment;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/InfinityDisplaySettings;->setupForceImmersiveHintDialog(Lcom/android/settings/SimpleDialogFragment;)V

    .line 104
    :cond_1
    sget p1, Lcom/android/settings/R$xml;->infinity_display_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 106
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "screen_button_hide"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mScreenButtonHide:Landroidx/preference/CheckBoxPreference;

    .line 107
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "switch_screen_button_order"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    .line 108
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "notch_force_black"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    .line 109
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "fsg_mistake_touch"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    .line 110
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "navigation_appswitch_anim"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    .line 111
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "cutout_type"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    .line 112
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "cutout_mode"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mCutoutMode:Landroidx/preference/Preference;

    .line 113
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "navigation_guide_home"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mHomeGuide:Landroidx/preference/Preference;

    .line 114
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "navigation_guide_recent"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mRecentGuide:Landroidx/preference/Preference;

    .line 115
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "navigation_guide_back"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mBackGuide:Landroidx/preference/Preference;

    .line 116
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "navigation_guide_app"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mAppGuide:Landroidx/preference/Preference;

    .line 117
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "screen_max_aspect_ratio"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mAspectRatio:Landroidx/preference/Preference;

    .line 118
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "navigation_guide_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    .line 119
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "navigation_setting_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    .line 120
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "navigation_guide_appswitch"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mAppSwitchGuide:Landroidx/preference/Preference;

    .line 122
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->checkDemoExist()Z

    .line 123
    iget-boolean p1, p0, Lcom/android/settings/InfinityDisplaySettings;->mDemoExistes:Z

    if-nez p1, :cond_2

    .line 124
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/InfinityDisplaySettings;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 271
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    sget v1, Lcom/android/settings/R$id;->navigation_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/view/NavigationBarGuideView;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/android/settings/view/NavigationBarGuideView;->onPause()V

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/InfinityDisplaySettings;->mScreenButtonHideListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 6

    .line 335
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mScreenButtonHide:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 336
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->showForceImmersiveHintDialog()V

    goto/16 :goto_0

    .line 339
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/InfinityDisplaySettings;->setScreenButtonHidden(Z)V

    goto/16 :goto_0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 342
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/InfinityDisplaySettings;->setRightHand(Z)V

    goto/16 :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x1

    if-ne p2, v0, :cond_4

    .line 344
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/InfinityDisplaySettings;->setForceBlack(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mCutoutMode:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    .line 346
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->isForceBlack()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_c

    .line 349
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->isForceBlack()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 352
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/InfinityDisplaySettings;->setDripType(Z)V

    goto/16 :goto_0

    .line 353
    :cond_5
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mHomeGuide:Landroidx/preference/Preference;

    const-string v3, "com.android.systemui.fsgesture.HomeDemoAct"

    const-string v4, "DEMO_TYPE"

    const-string v5, "com.android.systemui"

    if-ne p2, v0, :cond_6

    .line 354
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "home"

    invoke-static {v0, v1}, Lcom/android/settings/utils/AnalyticsUtils;->trackClickSingleTurorialEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 356
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "DEMO_TO_HOME"

    .line 357
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 359
    :cond_6
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mRecentGuide:Landroidx/preference/Preference;

    if-ne p2, v0, :cond_7

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "recents"

    invoke-static {v0, v1}, Lcom/android/settings/utils/AnalyticsUtils;->trackClickSingleTurorialEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 361
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 362
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "DEMO_TO_RECENTTASK"

    .line 363
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 365
    :cond_7
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mBackGuide:Landroidx/preference/Preference;

    if-ne p2, v0, :cond_8

    .line 366
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "back"

    invoke-static {v0, v1}, Lcom/android/settings/utils/AnalyticsUtils;->trackClickSingleTurorialEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 367
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 368
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui.fsgesture.FsGestureBackDemoActivity"

    invoke-direct {v1, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "FSG_BACK_GESTURE"

    .line 369
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEMO_STEP"

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    :cond_8
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mAppGuide:Landroidx/preference/Preference;

    if-ne p2, v0, :cond_9

    .line 373
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "in_app_function"

    invoke-static {v0, v1}, Lcom/android/settings/utils/AnalyticsUtils;->trackClickSingleTurorialEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 375
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui.fsgesture.DrawerDemoAct"

    invoke-direct {v1, v5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 377
    :cond_9
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_a

    .line 378
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/InfinityDisplaySettings;->setMistakeTouchEnable(Z)V

    goto :goto_0

    .line 379
    :cond_a
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_b

    .line 380
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/InfinityDisplaySettings;->setAppSwitchFeatureEnable(Z)V

    goto :goto_0

    .line 381
    :cond_b
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mAppSwitchGuide:Landroidx/preference/Preference;

    if-ne p2, v0, :cond_c

    .line 382
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->isAppSwitchFeatureEnable()Z

    move-result v0

    if-nez v0, :cond_c

    .line 383
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->navigation_guide_appswitch_click:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 388
    :cond_c
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 5

    .line 284
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mScreenButtonHide:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->isScreenButtonHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/InfinityDisplaySettings;->isRightHand()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 296
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->isForceBlack()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mCutoutMode:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    .line 298
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->isForceBlack()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 301
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->isForceBlack()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 305
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->isDripType()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 307
    :cond_5
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 308
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->isMistakeTouchEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 310
    :cond_6
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    .line 311
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->isAppSwitchFeatureEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 313
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 315
    sget v1, Lcom/android/settings/R$id;->navigation_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/view/NavigationBarGuideView;

    if-eqz v0, :cond_8

    .line 317
    invoke-virtual {v0}, Lcom/android/settings/view/NavigationBarGuideView;->onResume()V

    .line 320
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    .line 321
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/InfinityDisplaySettings;->mScreenButtonHideListener:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 320
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/InfinityDisplaySettings;->updatePrefence()V

    return-void
.end method

.method setRightHand(Z)V
    .locals 4

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    .line 221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/InfinityDisplaySettings;->setScreenKeyOrder(Ljava/util/List;)V

    return-void
.end method

.method setScreenButtonHidden(Z)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "policy_control"

    const-string v0, "immersive.preconfirms=*"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setScreenKeyOrder(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 230
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 231
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "screen_key_order"

    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method updatePrefence()V
    .locals 3

    .line 129
    invoke-direct {p0}, Lcom/android/settings/InfinityDisplaySettings;->isScreenButtonHidden()Z

    move-result v0

    .line 130
    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/settings/InfinityDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/InfinityDisplaySettings;->mAspectRatio:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    if-eqz v0, :cond_2

    .line 134
    iget-boolean v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mDemoExistes:Z

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/InfinityDisplaySettings;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/InfinityDisplaySettings;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/InfinityDisplaySettings;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 139
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/InfinityDisplaySettings;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/InfinityDisplaySettings;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 142
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/InfinityDisplaySettings;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 143
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/InfinityDisplaySettings;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 144
    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/InfinityDisplaySettings;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 146
    :goto_0
    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v0, :cond_3

    .line 147
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/InfinityDisplaySettings;->mNotchForceBlack:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 149
    :cond_3
    invoke-static {}, Lcom/android/settings/utils/Utils;->supportCutoutMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/InfinityDisplaySettings;->mCutoutMode:Landroidx/preference/Preference;

    if-eqz v0, :cond_4

    .line 150
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/InfinityDisplaySettings;->mCutoutMode:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 152
    :cond_4
    invoke-static {}, Lcom/android/settings/utils/Utils;->supportOverlayRoundedCorner()Z

    move-result v0

    if-nez v0, :cond_5

    .line 153
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/InfinityDisplaySettings;->mCutoutType:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    return-void
.end method
