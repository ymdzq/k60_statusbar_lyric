.class public Lcom/android/settings/FullScreenDisplaySettings;
.super Lcom/android/settings/MiuiSettingsPreferenceFragment;
.source "FullScreenDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;
    }
.end annotation


# instance fields
.field private mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mAppGuide:Landroidx/preference/Preference;

.field private mAppQuickSwitchGuide:Landroidx/preference/Preference;

.field private mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

.field private mAppSwitchGuide:Landroidx/preference/Preference;

.field private mAutoDisableScreenButtons:Landroidx/preference/Preference;

.field private mBackGuide:Landroidx/preference/Preference;

.field private mClickOnDialog:Z

.field private mContext:Landroid/content/Context;

.field private mDemoExistes:Z

.field private mGuideCategory:Landroidx/preference/PreferenceCategory;

.field private mHasCheckedDemo:Z

.field private mHideGestureLine:Landroidx/preference/CheckBoxPreference;

.field private mHomeGuide:Landroidx/preference/Preference;

.field private mIsRecentsWithinLauncher:Z

.field private mKeyShortcutSettings:Landroidx/preference/Preference;

.field private mMistakeTouch:Landroidx/preference/CheckBoxPreference;

.field private mNeedShowDialog:Z

.field private mPackageMonitor:Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;

.field private mRecentGuide:Landroidx/preference/Preference;

.field private mScreenButtonHide:Landroidx/preference/CheckBoxPreference;

.field private mScreenButtonHideListener:Landroid/database/ContentObserver;

.field private mSettingCategory:Landroidx/preference/PreferenceCategory;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

.field private mUseMiuiHomeAsDefaultHome:Z

.field private final mUserPreferenceChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlertDialog(Lcom/android/settings/FullScreenDisplaySettings;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClickOnDialog(Lcom/android/settings/FullScreenDisplaySettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mClickOnDialog:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/FullScreenDisplaySettings;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHideGestureLine(Lcom/android/settings/FullScreenDisplaySettings;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRecentsWithinLauncher(Lcom/android/settings/FullScreenDisplaySettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mIsRecentsWithinLauncher:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedShowDialog(Lcom/android/settings/FullScreenDisplaySettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mNeedShowDialog:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenButtonHide(Lcom/android/settings/FullScreenDisplaySettings;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mScreenButtonHide:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSharedPreferences(Lcom/android/settings/FullScreenDisplaySettings;)Landroid/content/SharedPreferences;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUseMiuiHomeAsDefaultHome(Lcom/android/settings/FullScreenDisplaySettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mUseMiuiHomeAsDefaultHome:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAlertDialog(Lcom/android/settings/FullScreenDisplaySettings;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClickOnDialog(Lcom/android/settings/FullScreenDisplaySettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mClickOnDialog:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRecentsWithinLauncher(Lcom/android/settings/FullScreenDisplaySettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mIsRecentsWithinLauncher:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedShowDialog(Lcom/android/settings/FullScreenDisplaySettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mNeedShowDialog:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUseMiuiHomeAsDefaultHome(Lcom/android/settings/FullScreenDisplaySettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mUseMiuiHomeAsDefaultHome:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDemoExist(Lcom/android/settings/FullScreenDisplaySettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->checkDemoExist()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateDialog(Lcom/android/settings/FullScreenDisplaySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->createDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAppSwitchFeatureEnable(Lcom/android/settings/FullScreenDisplaySettings;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isAppSwitchFeatureEnable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misMatchDefaultHome(Lcom/android/settings/FullScreenDisplaySettings;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/FullScreenDisplaySettings;->isMatchDefaultHome(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetAppSwitchFeatureEnable(Lcom/android/settings/FullScreenDisplaySettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/FullScreenDisplaySettings;->setAppSwitchFeatureEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHideGestureLine(Lcom/android/settings/FullScreenDisplaySettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/FullScreenDisplaySettings;->setHideGestureLine(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMistakeTouchEnable(Lcom/android/settings/FullScreenDisplaySettings;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/FullScreenDisplaySettings;->setMistakeTouchEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowForceImmersiveHintDialog(Lcom/android/settings/FullScreenDisplaySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->showForceImmersiveHintDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateGestureLineOfNavBarGuideView(Lcom/android/settings/FullScreenDisplaySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->updateGestureLineOfNavBarGuideView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHideGesturePreference(Lcom/android/settings/FullScreenDisplaySettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->updateHideGesturePreference()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Lcom/android/settings/MiuiSettingsPreferenceFragment;-><init>()V

    .line 439
    new-instance v0, Lcom/android/settings/FullScreenDisplaySettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/FullScreenDisplaySettings$12;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mUserPreferenceChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 628
    new-instance v0, Lcom/android/settings/FullScreenDisplaySettings$14;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/FullScreenDisplaySettings$14;-><init>(Lcom/android/settings/FullScreenDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mScreenButtonHideListener:Landroid/database/ContentObserver;

    return-void
.end method

.method private addHideGesturePreference()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 422
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 423
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 424
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->updateAppQuickSwitchGuide()V

    .line 425
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppSwitchGuide:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private checkDemoExist()Z
    .locals 5

    .line 684
    iget-boolean v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mHasCheckedDemo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 685
    iput-boolean v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mHasCheckedDemo:Z

    .line 687
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 688
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.fsgesture.HomeDemoAct"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "DEMO_TYPE"

    const-string v3, "DEMO_TO_HOME"

    .line 689
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 693
    iput-boolean v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mDemoExistes:Z

    .line 697
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mDemoExistes:Z

    return p0
.end method

.method private createDialog()V
    .locals 4

    const/4 v0, 0x0

    .line 636
    iput-boolean v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mClickOnDialog:Z

    .line 637
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/FullScreenDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->navigation_guide_gesture_line_dialog_title:I

    .line 638
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->navigation_guide_gesture_line_dialog_summary:I

    .line 639
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/FullScreenDisplaySettings;->mContext:Landroid/content/Context;

    .line 640
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->navigation_guide_dialog_dont_show_again:I

    .line 641
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->navigation_guide_dialog_ok:I

    new-instance v2, Lcom/android/settings/FullScreenDisplaySettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings/FullScreenDisplaySettings$16;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    .line 642
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->navigation_guide_dialog_skip:I

    new-instance v2, Lcom/android/settings/FullScreenDisplaySettings$15;

    invoke-direct {v2, p0}, Lcom/android/settings/FullScreenDisplaySettings$15;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    .line 656
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 662
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x1

    .line 664
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 666
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/android/settings/FullScreenDisplaySettings$17;

    invoke-direct {v1, p0}, Lcom/android/settings/FullScreenDisplaySettings$17;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private initAppGuide()V
    .locals 2

    .line 209
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "navigation_guide_app"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 211
    new-instance v1, Lcom/android/settings/FullScreenDisplaySettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/FullScreenDisplaySettings$4;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initAppQuickSwitchGuide()V
    .locals 2

    .line 241
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "navigation_guide_app_quick_switch"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 243
    new-instance v1, Lcom/android/settings/FullScreenDisplaySettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/FullScreenDisplaySettings$6;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initAppSwitchFeature()V
    .locals 2

    .line 305
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "navigation_appswitch_anim"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 307
    new-instance v1, Lcom/android/settings/FullScreenDisplaySettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/FullScreenDisplaySettings$10;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private initAppSwitchGuide()V
    .locals 2

    .line 225
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "navigation_guide_appswitch"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppSwitchGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 227
    new-instance v1, Lcom/android/settings/FullScreenDisplaySettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/FullScreenDisplaySettings$5;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initAutoDisableScreenButtons()V
    .locals 2

    .line 346
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "audo_disable_screen_buttons_settings"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAutoDisableScreenButtons:Landroidx/preference/Preference;

    .line 347
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isSupportGestureSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAutoDisableScreenButtons:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private initBackGuide()V
    .locals 2

    .line 191
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "navigation_guide_back"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mBackGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 193
    new-instance v1, Lcom/android/settings/FullScreenDisplaySettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/FullScreenDisplaySettings$3;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initHideGestureLine()V
    .locals 2

    .line 319
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "navigation_hide_gesture_line"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 321
    new-instance v1, Lcom/android/settings/FullScreenDisplaySettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings/FullScreenDisplaySettings$11;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private initHomeGuide()V
    .locals 2

    .line 157
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "navigation_guide_home"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mHomeGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 159
    new-instance v1, Lcom/android/settings/FullScreenDisplaySettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/FullScreenDisplaySettings$1;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initKeyShortcutSettings()V
    .locals 2

    .line 339
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key_shortcut_settings"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mKeyShortcutSettings:Landroidx/preference/Preference;

    .line 340
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isSupportGestureSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mKeyShortcutSettings:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private initMistakeTouch()V
    .locals 2

    .line 291
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "fsg_mistake_touch"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 293
    new-instance v1, Lcom/android/settings/FullScreenDisplaySettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/FullScreenDisplaySettings$9;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private initRecentGuide()V
    .locals 2

    .line 174
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "navigation_guide_recent"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mRecentGuide:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 176
    new-instance v1, Lcom/android/settings/FullScreenDisplaySettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/FullScreenDisplaySettings$2;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initScreenButtonHide()V
    .locals 2

    .line 259
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "screen_button_hide"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mScreenButtonHide:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 261
    new-instance v1, Lcom/android/settings/FullScreenDisplaySettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/FullScreenDisplaySettings$7;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private initSwitchScreenButtonOrder()V
    .locals 2

    .line 277
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "switch_screen_button_order"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 279
    new-instance v1, Lcom/android/settings/FullScreenDisplaySettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/FullScreenDisplaySettings$8;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private isAppSwitchFeatureEnable()Z
    .locals 2

    .line 508
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

.method private isHideGestureLine()Z
    .locals 2

    .line 512
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hide_gesture_line"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isMatchDefaultHome(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.miui.home"

    .line 482
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.mi.android.globallauncher"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isMistakeTouchEnable()Z
    .locals 2

    .line 491
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

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_fsg_nav_bar"

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSupportGestureSettings()Z
    .locals 2

    .line 701
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_key_shortcuts_entry_in_full_screen_settings"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isUseFsVersionThree()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mIsRecentsWithinLauncher:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mUseMiuiHomeAsDefaultHome:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private removeHideGesturePreference()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 430
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 431
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 432
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppSwitchGuide:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private setAppSwitchFeatureEnable(Z)V
    .locals 1

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_gesture_appswitch_feature"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setHideGestureLine(Z)V
    .locals 2

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_gesture_line"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 521
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->updateAppQuickSwitchGuide()V

    .line 522
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->updateGestureLineOfNavBarGuideView()V

    return-void
.end method

.method private setMistakeTouchEnable(Z)V
    .locals 1

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "show_mistake_touch_toast"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setupForceImmersiveHintDialog(Lcom/android/settings/SimpleDialogFragment;)V
    .locals 2

    .line 564
    sget v0, Lcom/android/settings/R$string;->force_immersive_compatibility_dont_hide:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/SimpleDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 565
    sget v0, Lcom/android/settings/R$string;->force_immersive_compatibility_hide:I

    new-instance v1, Lcom/android/settings/FullScreenDisplaySettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/FullScreenDisplaySettings$13;-><init>(Lcom/android/settings/FullScreenDisplaySettings;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/SimpleDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private showForceImmersiveHintDialog()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mScreenButtonHide:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 554
    new-instance v0, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;-><init>(I)V

    sget v1, Lcom/android/settings/R$string;->force_immersive_compatibility_hint_title:I

    .line 556
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->setTitle(Ljava/lang/String;)Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->force_immersive_compatibility_hint_message:I

    .line 557
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->setMessage(Ljava/lang/String;)Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;->create()Lcom/android/settings/SimpleDialogFragment;

    move-result-object v0

    .line 559
    invoke-direct {p0, v0}, Lcom/android/settings/FullScreenDisplaySettings;->setupForceImmersiveHintDialog(Lcom/android/settings/SimpleDialogFragment;)V

    .line 560
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "fragment_force_immersive_dialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateAppQuickSwitchGuide()V
    .locals 2

    .line 411
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isHideGestureLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->navigation_guide_app_quick_switch_hide_line_summary:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 413
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$drawable;->navigation_bar_guide_new_appswitch_hide_gesture_line:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->navigation_guide_app_quick_switch_summary:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 416
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppQuickSwitchGuide:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$drawable;->navigation_bar_guide_new_appswitch:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    :goto_0
    return-void
.end method

.method private updateGestureLineOfNavBarGuideView()V
    .locals 2

    .line 397
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 399
    sget v1, Lcom/android/settings/R$id;->navigation_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/view/NavigationBarGuideView;

    if-eqz v0, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isUseFsVersionThree()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isHideGestureLine()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/view/NavigationBarGuideView;->setIsShowGestureLine(Z)V

    :cond_1
    return-void
.end method

.method private updateHideGesturePreference()V
    .locals 1

    .line 389
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isUseFsVersionThree()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->addHideGesturePreference()V

    goto :goto_0

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->removeHideGesturePreference()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 97
    const-class p0, Lcom/android/settings/FullScreenDisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageIndex()I
    .locals 0

    .line 0
    const/16 p0, 0x3e9

    return p0
.end method

.method isRightHand()Z
    .locals 2

    .line 486
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->getScreenKeyOrder(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 487
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
    .locals 4

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "window"

    .line 105
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 104
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContextCompat;->getDisplayId(Landroid/content/Context;)I

    move-result v0

    .line 108
    invoke-static {p1, v0}, Landroid/view/IWindowManagerCompat;->hasNavigationBar(Landroid/view/IWindowManager;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "fragment_force_immersive_dialog"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 118
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SimpleDialogFragment;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/settings/FullScreenDisplaySettings;->setupForceImmersiveHintDialog(Lcom/android/settings/SimpleDialogFragment;)V

    .line 121
    :cond_1
    sget p1, Lcom/android/settings/R$xml;->fullscreen_display_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 123
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->initScreenButtonHide()V

    .line 124
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->initSwitchScreenButtonOrder()V

    .line 125
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->initMistakeTouch()V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->initAppSwitchFeature()V

    .line 127
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->initHideGestureLine()V

    .line 128
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->initHomeGuide()V

    .line 129
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->initRecentGuide()V

    .line 130
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->initBackGuide()V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->initAppGuide()V

    .line 132
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->initAppSwitchGuide()V

    .line 133
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->initAppQuickSwitchGuide()V

    .line 134
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "navigation_guide_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    .line 135
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "navigation_setting_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    .line 136
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->initKeyShortcutSettings()V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->initAutoDisableScreenButtons()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->checkDemoExist()Z

    .line 140
    iget-boolean p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mDemoExistes:Z

    if-nez p1, :cond_2

    .line 141
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "need_show_gesture_line_guide"

    const/4 v1, 0x1

    .line 144
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mNeedShowDialog:Z

    .line 145
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/utils/Utils;->isRecentsWithinLauncher(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mIsRecentsWithinLauncher:Z

    .line 146
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/utils/Utils;->useMiuiHomeAsDefaultHome(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mUseMiuiHomeAsDefaultHome:Z

    .line 149
    new-instance p1, Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;-><init>(Lcom/android/settings/FullScreenDisplaySettings;Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor-IA;)V

    iput-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mPackageMonitor:Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;

    .line 150
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mUserPreferenceChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 354
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 356
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mPackageMonitor:Lcom/android/settings/FullScreenDisplaySettings$LauncherPackageMonitor;

    if-eqz p0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 582
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 583
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 585
    sget v1, Lcom/android/settings/R$id;->navigation_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/view/NavigationBarGuideView;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Lcom/android/settings/view/NavigationBarGuideView;->onPause()V

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mScreenButtonHideListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 595
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 596
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mScreenButtonHide:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 601
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isScreenButtonHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isRightHand()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 606
    :cond_2
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 607
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isMistakeTouchEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 609
    :cond_3
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 610
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isAppSwitchFeatureEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 612
    :cond_4
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 613
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isHideGestureLine()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 615
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 617
    sget v1, Lcom/android/settings/R$id;->navigation_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/view/NavigationBarGuideView;

    if-eqz v0, :cond_6

    .line 619
    invoke-virtual {v0}, Lcom/android/settings/view/NavigationBarGuideView;->onResume()V

    .line 622
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    .line 623
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/FullScreenDisplaySettings;->mScreenButtonHideListener:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 622
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 624
    invoke-virtual {p0}, Lcom/android/settings/FullScreenDisplaySettings;->updatePrefence()V

    return-void
.end method

.method setRightHand(Z)V
    .locals 4

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 534
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 533
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    .line 532
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz p1, :cond_0

    .line 528
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/FullScreenDisplaySettings;->setScreenKeyOrder(Ljava/util/List;)V

    return-void
.end method

.method setScreenButtonHidden(Z)V
    .locals 2

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 500
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

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 541
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 542
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "screen_key_order"

    .line 548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method updatePrefence()V
    .locals 2

    .line 365
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isScreenButtonHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-boolean v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mDemoExistes:Z

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 371
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->updateHideGesturePreference()V

    .line 372
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 373
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mKeyShortcutSettings:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 374
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAutoDisableScreenButtons:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 376
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/FullScreenDisplaySettings;->isSupportGestureSettings()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mKeyShortcutSettings:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 378
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAutoDisableScreenButtons:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 380
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mGuideCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 381
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSwitchScreenButtonOrder:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 382
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mAppSwitchFeature:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 383
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/FullScreenDisplaySettings;->mHideGestureLine:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 384
    iget-object v0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/FullScreenDisplaySettings;->mMistakeTouch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method
