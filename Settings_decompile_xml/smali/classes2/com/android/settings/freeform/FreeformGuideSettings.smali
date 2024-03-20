.class public Lcom/android/settings/freeform/FreeformGuideSettings;
.super Lcom/android/settings/MiuiSettingsPreferenceFragment;
.source "FreeformGuideSettings.java"


# static fields
.field private static mCvw:Z = false

.field private static mPin:Z = false


# instance fields
.field public final ATLEAST_MIUI_13:Z

.field public final IS_MIUI_13:Z

.field public final MIUI_V13_VERSION_CODE:I

.field public final MIUI_VERSION_CODE:I

.field private final PUSH_WORLD_CIRCULATE_NAME:Landroid/content/ComponentName;

.field public final WORLD_CIRCULATE_PACKAGE_NAME:Ljava/lang/String;

.field private final WORLD_CIRCULATE_URI:Landroid/net/Uri;

.field private mBubblesNotification:Lmiuix/preference/TextPreference;

.field private mContext:Landroid/content/Context;

.field private mDockAssistant:Landroidx/preference/Preference;

.field private mDropDown:Landroidx/preference/Preference;

.field private mFreeDrag:Landroidx/preference/Preference;

.field private mFreeFormDockAssistant:Landroidx/preference/PreferenceCategory;

.field private mFreeformGuideToSidehide:Landroidx/preference/Preference;

.field private mFreeformRecommend:Landroidx/preference/CheckBoxPreference;

.field private mFreeformRecommendMainSwitchState:I

.field private mFullToFreeform:Landroidx/preference/Preference;

.field private mHang:Landroidx/preference/Preference;

.field private mMove:Landroidx/preference/Preference;

.field private mMultiWindow:Landroidx/preference/Preference;

.field private mMultipeWindow:Landroidx/preference/Preference;

.field private mNotification:Landroidx/preference/Preference;

.field private mSplitOperationTutorialText:Landroidx/preference/PreferenceCategory;

.field private mSplitScreen:Landroidx/preference/Preference;

.field private mSplitScreenCombination:Landroidx/preference/Preference;

.field public sIsSupportPushAppEnterWorldCirculate:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/freeform/FreeformGuideSettings;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmainSwitchPreferenceOnChanged(Lcom/android/settings/freeform/FreeformGuideSettings;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/freeform/FreeformGuideSettings;->mainSwitchPreferenceOnChanged(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 55
    invoke-direct {p0}, Lcom/android/settings/MiuiSettingsPreferenceFragment;-><init>()V

    const-string v0, "content://com.milink.service.circulate"

    .line 86
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->WORLD_CIRCULATE_URI:Landroid/net/Uri;

    const-string v0, "com.milink.service"

    .line 87
    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->WORLD_CIRCULATE_PACKAGE_NAME:Ljava/lang/String;

    .line 88
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.circulate.world.AppCirculateActivity"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->PUSH_WORLD_CIRCULATE_NAME:Landroid/content/ComponentName;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->sIsSupportPushAppEnterWorldCirculate:Z

    const/16 v1, 0xd

    .line 90
    iput v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->MIUI_V13_VERSION_CODE:I

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->getMiuiVersionCode()I

    move-result v2

    iput v2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->MIUI_VERSION_CODE:I

    const/4 v3, 0x1

    if-ne v2, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    .line 92
    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->IS_MIUI_13:Z

    if-lt v2, v1, :cond_1

    move v0, v3

    .line 93
    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->ATLEAST_MIUI_13:Z

    return-void
.end method

.method private canTaskPushEnterWorldCirculate()Z
    .locals 5

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->WORLD_CIRCULATE_URI:Landroid/net/Uri;

    const-string v2, "check_permission"

    const-string/jumbo v3, "recentlist_app"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "result"

    .line 665
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    const-string v1, "FreeformGuideSettings"

    const-string v2, "canTaskPushEnterWorldCirculate"

    .line 667
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->PUSH_WORLD_CIRCULATE_NAME:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/settings/freeform/FreeformGuideSettings;->getWorldCirculateMeta(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "appcirculate_support_recentlist"

    .line 671
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getCvw()Z
    .locals 1

    .line 244
    sget-boolean v0, Lcom/android/settings/freeform/FreeformGuideSettings;->mCvw:Z

    return v0
.end method

.method private static getGestureLineHeight(Landroid/content/Context;)I
    .locals 1

    .line 642
    invoke-static {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->isShowNavigationHandle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 645
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10501f6    # @android:dimen/notification_big_picture_max_height

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getPin()Z
    .locals 1

    .line 248
    sget-boolean v0, Lcom/android/settings/freeform/FreeformGuideSettings;->mPin:Z

    return v0
.end method

.method private getWorldCirculateMeta(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    .line 651
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0xc0080

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComponentName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FreeformGuideSettingsgetWorldCirculateMeta"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    .line 657
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    return-object p0

    :cond_0
    return-object v0
.end method

.method private initBubblesNotification()Z
    .locals 1

    const-string/jumbo v0, "miui_bubbles_notification"

    .line 273
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mBubblesNotification:Lmiuix/preference/TextPreference;

    .line 274
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportBubblesNotification(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mBubblesNotification:Lmiuix/preference/TextPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return v0

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->refreshBubbleNotificationStatus()V

    const/4 p0, 0x1

    return p0
.end method

.method private initDockAssistant()Z
    .locals 1

    const-string v0, "dock_assistant"

    .line 262
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mDockAssistant:Landroidx/preference/Preference;

    .line 263
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSupportDock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mDockAssistant:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private initDropDown()V
    .locals 2

    const-string v0, "key_freeform_guide_drop_down_to_fullscreen"

    .line 438
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mDropDown:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 440
    new-instance v1, Lcom/android/settings/freeform/FreeformGuideSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformGuideSettings$6;-><init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initFreeDrag()V
    .locals 2

    const-string v0, "key_freeform_guide_free_drag"

    .line 534
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeDrag:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 536
    new-instance v1, Lcom/android/settings/freeform/FreeformGuideSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformGuideSettings$10;-><init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initFreeformDockCategory()V
    .locals 3

    const-string v0, "freeform_dock_category"

    .line 252
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeFormDockAssistant:Landroidx/preference/PreferenceCategory;

    .line 253
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initDockAssistant()Z

    move-result v0

    .line 254
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initBubblesNotification()Z

    move-result v1

    .line 255
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initFreeformRecommend()Z

    move-result v2

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 257
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeFormDockAssistant:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private initFreeformRecommend()Z
    .locals 2

    .line 290
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initFreeformRecommendData()V

    .line 291
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initFreeformRecommendView()V

    .line 292
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportRecommend()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformRecommend:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformRecommend:Landroidx/preference/CheckBoxPreference;

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private initFreeformRecommendData()V
    .locals 3

    const-string v0, "MiuiMultiWindowRecommendSwitch"

    .line 302
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformRecommendMainSwitchState:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 305
    iput v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformRecommendMainSwitchState:I

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 310
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private initFreeformRecommendView()V
    .locals 3

    const-string v0, "freeform_recommend_main_switch_preference"

    .line 315
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformRecommend:Landroidx/preference/CheckBoxPreference;

    .line 316
    iget v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformRecommendMainSwitchState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformRecommend:Landroidx/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/settings/freeform/FreeformGuideSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformGuideSettings$1;-><init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private initFreeformSideHide()V
    .locals 2

    const-string v0, "key_freeform_guide_to_sidehide"

    .line 414
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformGuideToSidehide:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 416
    new-instance v1, Lcom/android/settings/freeform/FreeformGuideSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformGuideSettings$5;-><init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initFullToFreeform()V
    .locals 2

    .line 484
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key_freeform_guide_slide_to_small_freeform"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFullToFreeform:Landroidx/preference/Preference;

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->getSupportPushAppEnterWorldCirculate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFullToFreeform:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->freeform_guide_slide_to_small_freeform_summary_squarehot:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFullToFreeform:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 489
    new-instance v1, Lcom/android/settings/freeform/FreeformGuideSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformGuideSettings$8;-><init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    return-void
.end method

.method private initGestureSplitScreen()V
    .locals 2

    const-string v0, "key_freeform_Gesture_Split_Screen"

    .line 557
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreen:Landroidx/preference/Preference;

    .line 558
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSmallScreenForFoldDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreen:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->three_fingers_slide_horizontally_into_splitscreen_fold:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreen:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->gesture_to_split_screen:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreen:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 564
    new-instance v1, Lcom/android/settings/freeform/FreeformGuideSettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformGuideSettings$11;-><init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    return-void
.end method

.method private initHang()V
    .locals 2

    .line 461
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "key_freeform_guide_move_to_small_freeform_window"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mHang:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 463
    new-instance v1, Lcom/android/settings/freeform/FreeformGuideSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformGuideSettings$7;-><init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initMove()V
    .locals 2

    const-string v0, "key_freeform_guide_move"

    .line 391
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMove:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 393
    new-instance v1, Lcom/android/settings/freeform/FreeformGuideSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformGuideSettings$4;-><init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initMultiWindow()V
    .locals 2

    const-string v0, "key_multi_window_cvw"

    .line 341
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMultiWindow:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 343
    new-instance v1, Lcom/android/settings/freeform/FreeformGuideSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformGuideSettings$2;-><init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initMultipleWindow()V
    .locals 2

    const-string v0, "key_freeform_guide_multiple_window"

    .line 511
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMultipeWindow:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 513
    new-instance v1, Lcom/android/settings/freeform/FreeformGuideSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformGuideSettings$9;-><init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initNotification()V
    .locals 2

    const-string v0, "key_freeform_guide_notification_drop_down"

    .line 368
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mNotification:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 370
    new-instance v1, Lcom/android/settings/freeform/FreeformGuideSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformGuideSettings$3;-><init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private initSplitOperationTutorialText()V
    .locals 2

    const-string v0, "gesture_split_guide_category"

    .line 621
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitOperationTutorialText:Landroidx/preference/PreferenceCategory;

    .line 622
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSmallScreenForFoldDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitOperationTutorialText:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 625
    :cond_0
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 626
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitOperationTutorialText:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private static isHideGestureLine(Landroid/content/Context;)Z
    .locals 2

    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

.method public static isShowNavigationHandle(Landroid/content/Context;)Z
    .locals 2

    .line 632
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "force_fsg_nav_bar"

    invoke-static {v0, v1}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-static {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->isHideGestureLine(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSmallScreenForFoldDevice(Landroid/content/Context;)Z
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isScreenLayoutLarge(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isSupportFreeDrag()Z
    .locals 2

    .line 720
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "liuqin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "pipa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "babylon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportMultiple()Z
    .locals 2

    .line 716
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "liuqin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "pipa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportRecommend()Z
    .locals 2

    const-string v0, "babylon"

    .line 724
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private mainSwitchPreferenceOnChanged(Ljava/lang/Object;)V
    .locals 5

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 328
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "MiuiMultiWindowRecommendSwitch"

    .line 327
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v3, :cond_1

    move v2, v3

    :cond_1
    iput v2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformRecommendMainSwitchState:I

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 331
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private refreshBubbleNotificationStatus()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mBubblesNotification:Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isBubbleNotificationOpen(Landroid/content/Context;)Z

    move-result v0

    .line 285
    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mBubblesNotification:Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->miui_bubbles_notification_status_opened:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static setCvw(Z)V
    .locals 0

    .line 236
    sput-boolean p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mCvw:Z

    return-void
.end method

.method private static setPin(Z)V
    .locals 0

    .line 240
    sput-boolean p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mPin:Z

    return-void
.end method


# virtual methods
.method public checkAndUpdateWorldCirculateView(Ljava/lang/String;)V
    .locals 2

    .line 677
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->getUserSystemId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string p0, "FreeformGuideSettingscheckAndUpdateWorldCirculateView"

    const-string/jumbo p1, "no in main space"

    .line 678
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 681
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->ATLEAST_MIUI_13:Z

    if-eqz v0, :cond_1

    const-string v0, "com.milink.service"

    .line 682
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 683
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->canTaskPushEnterWorldCirculate()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->sIsSupportPushAppEnterWorldCirculate:Z

    .line 684
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sIsSupportPushAppEnterWorldCirculate = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->sIsSupportPushAppEnterWorldCirculate:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreeformGuideSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public getMiuiVersionCode()I
    .locals 2

    const-string/jumbo v0, "ro.miui.ui.version.code"

    const-string v1, ""

    .line 695
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/freeform/FreeformGuideSettings;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 696
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 707
    invoke-static {p1, p2}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportPushAppEnterWorldCirculate()Z
    .locals 2

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sIsSupportPushAppEnterWorldCirculate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->sIsSupportPushAppEnterWorldCirculate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformGuideSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-boolean p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->sIsSupportPushAppEnterWorldCirculate:Z

    return p0
.end method

.method public getUserSystemId()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public initSplitScreenCombination()V
    .locals 2

    const-string v0, "key_freeform_guide_split_screen_combination"

    .line 587
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreenCombination:Landroidx/preference/Preference;

    .line 588
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSmallScreenForFoldDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreenCombination:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->freeform_guide_split_screen_combination_summary_fold:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 591
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreenCombination:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->freeform_guide_split_screen_combination_fold:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreenCombination:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 595
    new-instance v1, Lcom/android/settings/freeform/FreeformGuideSettings$12;

    invoke-direct {v1, p0}, Lcom/android/settings/freeform/FreeformGuideSettings$12;-><init>(Lcom/android/settings/freeform/FreeformGuideSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 336
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 337
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->refreshBubbleNotificationStatus()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 121
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mContext:Landroid/content/Context;

    .line 123
    sget p1, Lcom/android/settings/R$xml;->freeform_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->freeform_settings_preference_bottom_padding_inner:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/freeform/FreeformGuideSettings;->getGestureLineHeight(Landroid/content/Context;)I

    move-result p2

    add-int/2addr p1, p2

    .line 127
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const-string/jumbo p1, "setting_Special_features_freeform"

    .line 128
    invoke-static {p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    const-string p1, "com.milink.service"

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settings/freeform/FreeformGuideSettings;->checkAndUpdateWorldCirculateView(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 130
    invoke-static {p1}, Lcom/android/settings/freeform/FreeformGuideSettings;->setCvw(Z)V

    .line 131
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSupportPin()Z

    move-result p2

    invoke-static {p2}, Lcom/android/settings/freeform/FreeformGuideSettings;->setPin(Z)V

    .line 132
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initFreeformDockCategory()V

    .line 133
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initMultiWindow()V

    .line 134
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initNotification()V

    .line 135
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initMove()V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initFreeformSideHide()V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initDropDown()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initHang()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initFullToFreeform()V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initMultipleWindow()V

    .line 141
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initFreeDrag()V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initGestureSplitScreen()V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initSplitScreenCombination()V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/freeform/FreeformGuideSettings;->initSplitOperationTutorialText()V

    .line 145
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSmallScreenForFoldDevice(Landroid/content/Context;)Z

    move-result p2

    .line 146
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMultiWindow:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mNotification:Landroidx/preference/Preference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMove:Landroidx/preference/Preference;

    sget-boolean v2, Lcom/android/settings/freeform/FreeformGuideSettings;->mPin:Z

    xor-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformGuideToSidehide:Landroidx/preference/Preference;

    sget-boolean v2, Lcom/android/settings/freeform/FreeformGuideSettings;->mPin:Z

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mDropDown:Landroidx/preference/Preference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mHang:Landroidx/preference/Preference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFullToFreeform:Landroidx/preference/Preference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMultipeWindow:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeDrag:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreen:Landroidx/preference/Preference;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreenCombination:Landroidx/preference/Preference;

    xor-int/2addr p2, p1

    invoke-virtual {v1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 158
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportFreeDrag()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 159
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeDrag:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_5

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeDrag:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_5

    .line 163
    :cond_1
    sget-boolean p2, Lmiui/os/Build;->IS_TABLET:Z

    const/4 v1, 0x5

    if-eqz p2, :cond_4

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p2, :cond_4

    .line 164
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMultiWindow:Landroidx/preference/Preference;

    sget-boolean v2, Lcom/android/settings/freeform/FreeformGuideSettings;->mCvw:Z

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 165
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mNotification:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 166
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMove:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 167
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformGuideToSidehide:Landroidx/preference/Preference;

    sget-boolean v2, Lcom/android/settings/freeform/FreeformGuideSettings;->mPin:Z

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 168
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformGuideToSidehide:Landroidx/preference/Preference;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 169
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mDropDown:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 170
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mHang:Landroidx/preference/Preference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 171
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFullToFreeform:Landroidx/preference/Preference;

    sget-boolean v1, Lcom/android/settings/freeform/FreeformGuideSettings;->mPin:Z

    xor-int/2addr v1, p1

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 172
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFullToFreeform:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->freeform_guide_slide_to_small_freeform_summary_pad:I

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 173
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportMultiple()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 174
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMultipeWindow:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMultipeWindow:Landroidx/preference/Preference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 179
    :goto_0
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportFreeDrag()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 180
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeDrag:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 182
    :cond_3
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeDrag:Landroidx/preference/Preference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 184
    :goto_1
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreen:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 185
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreenCombination:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto/16 :goto_5

    .line 186
    :cond_4
    sget-boolean p2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p2, :cond_7

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_7

    .line 187
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMultiWindow:Landroidx/preference/Preference;

    sget-boolean v2, Lcom/android/settings/freeform/FreeformGuideSettings;->mCvw:Z

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 188
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMultiWindow:Landroidx/preference/Preference;

    sget v2, Lcom/android/settings/R$string;->multi_window_cvw_summary_global:I

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 189
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mNotification:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 190
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMove:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 191
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformGuideToSidehide:Landroidx/preference/Preference;

    sget-boolean v2, Lcom/android/settings/freeform/FreeformGuideSettings;->mPin:Z

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 192
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformGuideToSidehide:Landroidx/preference/Preference;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 193
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mDropDown:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 194
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mHang:Landroidx/preference/Preference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 195
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFullToFreeform:Landroidx/preference/Preference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 196
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportMultiple()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 197
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMultipeWindow:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 200
    :cond_5
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMultipeWindow:Landroidx/preference/Preference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 202
    :goto_2
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportFreeDrag()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 203
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeDrag:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_3

    .line 205
    :cond_6
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeDrag:Landroidx/preference/Preference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 207
    :goto_3
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreen:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 208
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreenCombination:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_5

    .line 210
    :cond_7
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMultiWindow:Landroidx/preference/Preference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 211
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mNotification:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 212
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMove:Landroidx/preference/Preference;

    sget-boolean v1, Lcom/android/settings/freeform/FreeformGuideSettings;->mPin:Z

    xor-int/2addr v1, p1

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 213
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeformGuideToSidehide:Landroidx/preference/Preference;

    sget-boolean v1, Lcom/android/settings/freeform/FreeformGuideSettings;->mPin:Z

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 214
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mDropDown:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 215
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mHang:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 216
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFullToFreeform:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 217
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mMultipeWindow:Landroidx/preference/Preference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 218
    invoke-static {}, Lcom/android/settings/freeform/FreeformGuideSettings;->isSupportFreeDrag()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 219
    iget-object p2, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeDrag:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_4

    .line 221
    :cond_8
    iget-object p1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mFreeDrag:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 223
    :goto_4
    iget-object p1, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreen:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 224
    iget-object p0, p0, Lcom/android/settings/freeform/FreeformGuideSettings;->mSplitScreenCombination:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_5
    return-void
.end method
