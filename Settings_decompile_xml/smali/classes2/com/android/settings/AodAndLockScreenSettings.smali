.class public Lcom/android/settings/AodAndLockScreenSettings;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "AodAndLockScreenSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final IS_FOLDABLE_DEVICE:Z

.field private static final configAntiMisTouchDisabled:Z


# instance fields
.field private mAodModePref:Lcom/android/settings/KeyguardRestrictedPreference;

.field private mAodModePrefController:Lcom/android/settings/AodModePreferenceController;

.field private mAodNotificationModePref:Lcom/android/settings/KeyguardRestrictedPreference;

.field private mAodNotificationPrefController:Lcom/android/settings/AodNotificationPrefController;

.field private mAodSettingPrefController:Lcom/android/settings/AodSettingPreferenceController;

.field private mAodSettingsCategory:Landroidx/preference/PreferenceCategory;

.field private mAodSettingsSwitchPref:Landroidx/preference/Preference;

.field private mAodShowModePref:Lcom/android/settings/KeyguardRestrictedPreference;

.field private mAodShowModePrefController:Lcom/android/settings/AodShowModePreferenceController;

.field private mAodShowModeStyleSelectAvaliable:Z

.field mAodStateObserver:Landroid/database/ContentObserver;

.field private mAodStyleListSupportSetMode:Z

.field private mAodStylePref:Lcom/android/settings/AodStylePreference;

.field private mAodStylePrefController:Lcom/android/settings/AodStylePreferenceController;

.field private mEyeGazePref:Landroidx/preference/CheckBoxPreference;

.field private mFoldLockScreenCbp:Landroidx/preference/CheckBoxPreference;

.field private mGazeLockScreenPref:Landroidx/preference/CheckBoxPreference;

.field private mGestureWakeupPref:Landroidx/preference/CheckBoxPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenDisplayCategory:Landroidx/preference/PreferenceCategory;

.field private mLockScreenMagazine:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mLockScreenSignaturePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

.field private mNotificationStyleSelectAvaliable:Z

.field private mOtherCategory:Landroidx/preference/PreferenceCategory;

.field private mPeopleLeaveLockScreenPref:Landroidx/preference/CheckBoxPreference;

.field private mPeopleNearWakeupPref:Landroidx/preference/CheckBoxPreference;

.field private mPickupWakeupPref:Landroidx/preference/CheckBoxPreference;

.field private mScreenOnProximitySensor:Landroidx/preference/CheckBoxPreference;

.field private mScreenTimeout:Lcom/android/settings/KeyguardTimeoutListPreference;

.field private mSmartCoverSensitiveCbp:Landroidx/preference/CheckBoxPreference;

.field private mVolumeDownKeyLaunchCameraOrTakePhoto:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private mVolumeKeyLaunchCamera:Landroidx/preference/CheckBoxPreference;

.field private mWakeupAndSleepCategory:Landroidx/preference/PreferenceCategory;

.field private mWakeupForKeyguardNotificationPref:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public static synthetic $r8$lambda$0wfFnbW2gbq549e6ClewG7L2EMo(Lcom/android/settings/AodAndLockScreenSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AodAndLockScreenSettings;->lambda$updateEyeGazePreference$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9IQ7ZrF7mP_E4XdPI0BaTA9FTq8(Lcom/android/settings/AodAndLockScreenSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AodAndLockScreenSettings;->lambda$updateEyeGazePreference$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLockScreenMagazine(Lcom/android/settings/AodAndLockScreenSettings;)Lcom/android/settingslib/miuisettings/preference/ValuePreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockScreenMagazine:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlockScreenCategoryRemovePreference(Lcom/android/settings/AodAndLockScreenSettings;Landroidx/preference/Preference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/AodAndLockScreenSettings;->lockScreenCategoryRemovePreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAodState(Lcom/android/settings/AodAndLockScreenSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/AodAndLockScreenSettings;->updateAodState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    .line 112
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/AodAndLockScreenSettings;->IS_FOLDABLE_DEVICE:Z

    const-string v0, "config_antiMistouchDisabled"

    .line 115
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/AodAndLockScreenSettings;->configAntiMisTouchDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mNotificationStyleSelectAvaliable:Z

    .line 165
    iput-boolean v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModeStyleSelectAvaliable:Z

    .line 166
    iput-boolean v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStyleListSupportSetMode:Z

    .line 792
    new-instance v0, Lcom/android/settings/AodAndLockScreenSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AodAndLockScreenSettings$2;-><init>(Lcom/android/settings/AodAndLockScreenSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStateObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static checkoutActivityExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 787
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 788
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private enableScreenOnProximitySensor(Z)V
    .locals 1

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_screen_on_proximity_sensor"

    invoke-static {p0, v0, p1}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static getAodIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 800
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 801
    invoke-static {}, Lcom/android/settings/utils/AodUtils;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x10000000

    .line 802
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v0, "com.miui.aod"

    const-string v1, "com.miui.aod.settings.AodStyleCategoriesActivity"

    .line 804
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    .line 806
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private static getSettingsComponent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3

    const/4 v0, 0x0

    .line 698
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "getSettingsComponent"

    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "result_string"

    .line 699
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 700
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    .line 701
    :cond_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private getValuesForKeyLaunchCamera()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 428
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->close_volume_key_launch_camera:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "none"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->volume_key_launch_camera:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "launch_camera"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->volume_key_launch_camera_and_take_photo:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "launch_camera_and_take_photo"

    .line 432
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getVolumeKeyLaunchCameraResource(ILjava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo p0, "none"

    if-eqz p2, :cond_3

    .line 413
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const-string p0, "launch_camera_and_take_photo"

    return-object p0

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const-string p0, "launch_camera"

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    const-string p1, "AodAndLockScreenSetting"

    const-string/jumbo p2, "volume key launch camera map is null"

    .line 414
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getWallpaperIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7

    .line 657
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.LOCKWALLPAPER_PROVIDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 659
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 660
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 663
    :try_start_0
    invoke-static {p0, v1}, Lcom/android/settings/AodAndLockScreenSettings;->isProviderEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 666
    :cond_0
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_1

    .line 667
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string/jumbo v5, "mifg://fashiongallery/jump_setting"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 670
    const-class v4, Lcom/android/settings/MiuiSecuritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call lockscreen magazine provider  throw an exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v3, v2

    :goto_1
    const/16 v4, 0x40

    if-eqz v3, :cond_2

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    .line 679
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 680
    invoke-static {p0, v1}, Lcom/android/settings/AodAndLockScreenSettings;->getSettingsComponent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 681
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    return-object v3

    :cond_4
    return-object v2
.end method

.method private handleMessageAndFaceUnlockState(Z)V
    .locals 10

    if-eqz p1, :cond_8

    .line 883
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lock_screen_show_notifications"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 886
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_allow_private_notifications"

    invoke-static {v3, v4, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 888
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MiuiSettings$Secure;->hasCommonPassword(Landroid/content/Context;)Z

    move-result v5

    .line 889
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getEnrolledFaceList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v1

    .line 890
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "face_unlcok_apply_for_lock"

    invoke-static {v7, v8, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v2, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v1

    .line 894
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "face_unlock_success_show_message"

    .line 893
    invoke-static {v8, v9, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v2, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move v8, v1

    :goto_4
    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    if-eqz v6, :cond_5

    if-nez v7, :cond_6

    .line 899
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 901
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    if-eqz v3, :cond_7

    .line 912
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 913
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 914
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v9, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_5

    :cond_7
    if-eqz p1, :cond_8

    if-nez v8, :cond_8

    .line 918
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v9, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_8
    :goto_5
    return-void
.end method

.method private initKeyguardNotificationPref()V
    .locals 2

    .line 632
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isSupportAodAnimateDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mNotificationStyleSelectAvaliable:Z

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupForKeyguardNotificationPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 635
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupAndSleepCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 638
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isWakeupForNotification(Landroid/content/Context;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 639
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupForKeyguardNotificationPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initLockScreenMagazine()V
    .locals 2

    .line 760
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockScreenMagazine:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-direct {p0, v0}, Lcom/android/settings/AodAndLockScreenSettings;->lockScreenCategoryRemovePreference(Landroidx/preference/Preference;)V

    return-void

    .line 764
    :cond_0
    new-instance v0, Lcom/android/settings/AodAndLockScreenSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AodAndLockScreenSettings$1;-><init>(Lcom/android/settings/AodAndLockScreenSettings;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 782
    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initMiuiTOFAndAONPref()V
    .locals 5

    .line 839
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isTofAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupAndSleepCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPeopleLeaveLockScreenPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 841
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 842
    iput-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPeopleLeaveLockScreenPref:Landroidx/preference/CheckBoxPreference;

    .line 843
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isAonAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPeopleNearWakeupPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 844
    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupAndSleepCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 845
    iput-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPeopleNearWakeupPref:Landroidx/preference/CheckBoxPreference;

    .line 850
    :cond_0
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isAonAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 851
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupAndSleepCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    .line 852
    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mGazeLockScreenPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 853
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 854
    iput-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mGazeLockScreenPref:Landroidx/preference/CheckBoxPreference;

    .line 856
    :cond_1
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isTofAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPeopleNearWakeupPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 857
    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupAndSleepCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 858
    iput-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPeopleNearWakeupPref:Landroidx/preference/CheckBoxPreference;

    .line 863
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPeopleLeaveLockScreenPref:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 864
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 865
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPeopleLeaveLockScreenPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "miui_tof_screen_off"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 867
    :cond_4
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPeopleNearWakeupPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 868
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 869
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPeopleNearWakeupPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->getPeopleNearWakeup(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v1, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 871
    :cond_6
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mGazeLockScreenPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 872
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 873
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gaze_lock_screen_setting"

    const/4 v4, -0x2

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    .line 875
    :goto_2
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mGazeLockScreenPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 876
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mGazeLockScreenPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_8
    return-void
.end method

.method public static isAdaptiveSleepSupported(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 815
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110013    # @android:bool/config_adaptive_sleep_available

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    invoke-static {p0}, Lcom/android/settings/AodAndLockScreenSettings;->isAttentionServiceAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isAttentionServiceAvailable(Landroid/content/Context;)Z
    .locals 4

    .line 826
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 827
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 828
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 831
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.service.attention.AttentionService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x100000

    .line 833
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 835
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isEllipticProximity(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo p0, "ro.vendor.audio.us.proximity"

    const/4 v0, 0x0

    .line 751
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isLockScreenMagazineAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 644
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/AodAndLockScreenSettings;->getWallpaperIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isProviderEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 692
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    const-string p0, "com.xiaomi.tv.gallerylockscreen.lockscreen_magazine_provider"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "com.miui.android.fashiongallery.lockscreen_magazine_provider"

    .line 693
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportAntiMisTouch(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 735
    sget-boolean v1, Lcom/android/settings/AodAndLockScreenSettings;->configAntiMisTouchDisabled:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "sensor"

    .line 737
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    const v2, 0x1fa2697

    .line 739
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 741
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v1, :cond_2

    const-string v1, "android.hardware.sensor.proximity"

    .line 742
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/android/settings/AodAndLockScreenSettings;->isEllipticProximity(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    return v0
.end method

.method public static isSupportPickupWakeup(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string/jumbo v1, "sensor"

    .line 614
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const v2, 0x1fa265c

    const/4 v3, 0x1

    .line 615
    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v4, "oem7 Pick Up Gesture"

    .line 617
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "pickup  Wakeup"

    .line 618
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v3

    .line 622
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$array;->device_support_pickup_by_MTK:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 623
    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x16

    .line 624
    invoke-virtual {v1, p0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_2

    move v0, v3

    :cond_2
    return v0
.end method

.method private synthetic lambda$updateEyeGazePreference$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "adaptive_sleep"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 561
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mEyeGazePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$updateEyeGazePreference$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 564
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 565
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mEyeGazePref:Landroidx/preference/CheckBoxPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private lockScreenCategoryRemovePreference(Landroidx/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockScreenDisplayCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 405
    :cond_0
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockScreenDisplayCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 406
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockScreenDisplayCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private setupTimeoutPreference()V
    .locals 4

    .line 605
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 607
    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mScreenTimeout:Lcom/android/settings/KeyguardTimeoutListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 608
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mScreenTimeout:Lcom/android/settings/KeyguardTimeoutListPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeyguardTimeoutListPreference;->disableUnusableTimeouts()V

    return-void
.end method

.method public static supportVariableAperture()Z
    .locals 2

    const-string/jumbo v0, "persist.vendor.camera.IsVariableApertureSupported"

    const/4 v1, 0x0

    .line 438
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private updateAodState()V
    .locals 4

    .line 577
    invoke-static {}, Lmiui/os/Build;->getMiUiVersionCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 578
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStyleListSupportSetMode:Z

    if-nez v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingPrefController:Lcom/android/settings/AodSettingPreferenceController;

    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingsSwitchPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 580
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStylePrefController:Lcom/android/settings/AodStylePreferenceController;

    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStylePref:Lcom/android/settings/AodStylePreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/AodStylePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 581
    iget-boolean v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModeStyleSelectAvaliable:Z

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AodStylePreferenceController;->isDualClock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 584
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.aod"

    const-string v3, "com.miui.aod.settings.AODStyleActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    .line 586
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStylePref:Lcom/android/settings/AodStylePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModePrefController:Lcom/android/settings/AodShowModePreferenceController;

    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModePref:Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/AodShowModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodModePrefController:Lcom/android/settings/AodModePreferenceController;

    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodModePref:Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/AodModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 593
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodNotificationPrefController:Lcom/android/settings/AodNotificationPrefController;

    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodNotificationModePref:Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/AodNotificationPrefController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private updateEyeGazePreference(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 556
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 557
    sget v1, Lcom/android/settings/R$string;->eye_gaze_dialog_title:I

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->eye_gaze_dialog_message:I

    .line 558
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/settings/AodAndLockScreenSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/AodAndLockScreenSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/AodAndLockScreenSettings;)V

    const v2, 0x104000a    # @android:string/ok

    .line 559
    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/settings/AodAndLockScreenSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/AodAndLockScreenSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/AodAndLockScreenSettings;)V

    const/high16 p0, 0x1040000    # @android:string/cancel

    .line 563
    invoke-virtual {p1, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 566
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "adaptive_sleep"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method private updateProximitySensorStatus()V
    .locals 4

    .line 709
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AodAndLockScreenSettings;->isSupportAntiMisTouch(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mScreenOnProximitySensor:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 711
    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mOtherCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 712
    iput-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mScreenOnProximitySensor:Landroidx/preference/CheckBoxPreference;

    .line 713
    invoke-direct {p0, v1}, Lcom/android/settings/AodAndLockScreenSettings;->enableScreenOnProximitySensor(Z)V

    goto :goto_1

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_screen_on_proximity_sensor"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 720
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 722
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x11050068

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 720
    invoke-static {v0, v2, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 723
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0}, Landroid/provider/MiuiSettings$Global;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    move v0, v1

    .line 730
    :goto_0
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mScreenOnProximitySensor:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateTimeoutPreferenceState()V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mScreenTimeout:Lcom/android/settings/KeyguardTimeoutListPreference;

    if-eqz v0, :cond_0

    .line 598
    invoke-direct {p0}, Lcom/android/settings/AodAndLockScreenSettings;->setupTimeoutPreference()V

    .line 599
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mScreenTimeout:Lcom/android/settings/KeyguardTimeoutListPreference;

    invoke-virtual {p0}, Lcom/android/settings/KeyguardTimeoutListPreference;->updateTimeoutPreferenceSummary()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x57

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 172
    const-class p0, Lcom/android/settings/AodAndLockScreenSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPageIndex()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 177
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 181
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 185
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->aod_and_lockscreen_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "com.miui.aod.settings.NotificationAnimationSelectActivity"

    const-string v1, "com.miui.aod"

    .line 186
    invoke-static {p1, v1, v0}, Lcom/android/settings/AodAndLockScreenSettings;->checkoutActivityExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mNotificationStyleSelectAvaliable:Z

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "com.miui.aod.settings.AodShowModeSettingActivity"

    .line 191
    invoke-static {p1, v1, v0}, Lcom/android/settings/AodAndLockScreenSettings;->checkoutActivityExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModeStyleSelectAvaliable:Z

    const-string p1, "aod_settings_category"

    .line 195
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingsCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "aod_settings_switch"

    .line 197
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingsSwitchPref:Landroidx/preference/Preference;

    .line 198
    new-instance p1, Lcom/android/settings/AodSettingPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/AodSettingPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingPrefController:Lcom/android/settings/AodSettingPreferenceController;

    .line 199
    iget-boolean v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModeStyleSelectAvaliable:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/AodSettingPreferenceController;->setAodShowModeStyleSelectAvaliable(Z)V

    .line 200
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingPrefController:Lcom/android/settings/AodSettingPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/AodSettingPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string p1, "aod_show_style"

    .line 202
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/AodStylePreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStylePref:Lcom/android/settings/AodStylePreference;

    .line 203
    new-instance p1, Lcom/android/settings/AodStylePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/AodStylePreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStylePrefController:Lcom/android/settings/AodStylePreferenceController;

    .line 204
    iget-boolean v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModeStyleSelectAvaliable:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/AodStylePreferenceController;->setAodShowModeStyleSelectAvaliable(Z)V

    .line 205
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStylePrefController:Lcom/android/settings/AodStylePreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/AodStylePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 206
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingPrefController:Lcom/android/settings/AodSettingPreferenceController;

    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStylePrefController:Lcom/android/settings/AodStylePreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settings/AodSettingPreferenceController;->addController(Lcom/android/settings/core/AodPreferenceController;)V

    const-string p1, "aod_show_mode"

    .line 208
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/KeyguardRestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModePref:Lcom/android/settings/KeyguardRestrictedPreference;

    .line 210
    new-instance p1, Lcom/android/settings/AodShowModePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/AodShowModePreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModePrefController:Lcom/android/settings/AodShowModePreferenceController;

    .line 211
    iget-boolean v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModeStyleSelectAvaliable:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/AodShowModePreferenceController;->setAodShowModeStyleSelectAvaliable(Z)V

    .line 212
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModePrefController:Lcom/android/settings/AodShowModePreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/AodShowModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 213
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingPrefController:Lcom/android/settings/AodSettingPreferenceController;

    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModePrefController:Lcom/android/settings/AodShowModePreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settings/AodSettingPreferenceController;->addController(Lcom/android/settings/core/AodPreferenceController;)V

    const-string p1, "aod_mode_value_preference"

    .line 215
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/KeyguardRestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodModePref:Lcom/android/settings/KeyguardRestrictedPreference;

    .line 217
    new-instance p1, Lcom/android/settings/AodModePreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/AodModePreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodModePrefController:Lcom/android/settings/AodModePreferenceController;

    .line 218
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 219
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingPrefController:Lcom/android/settings/AodSettingPreferenceController;

    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodModePrefController:Lcom/android/settings/AodModePreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settings/AodSettingPreferenceController;->addController(Lcom/android/settings/core/AodPreferenceController;)V

    const-string p1, "aod_notification_status"

    .line 221
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/KeyguardRestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodNotificationModePref:Lcom/android/settings/KeyguardRestrictedPreference;

    .line 223
    new-instance p1, Lcom/android/settings/AodNotificationPrefController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/AodNotificationPrefController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodNotificationPrefController:Lcom/android/settings/AodNotificationPrefController;

    .line 224
    iget-boolean v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModeStyleSelectAvaliable:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/AodNotificationPrefController;->setAodShowModeStyleSelectAvaliable(Z)V

    .line 225
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodNotificationPrefController:Lcom/android/settings/AodNotificationPrefController;

    iget-boolean v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mNotificationStyleSelectAvaliable:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/AodNotificationPrefController;->setNotificationStyleSelectAvaliable(Z)V

    .line 226
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodNotificationPrefController:Lcom/android/settings/AodNotificationPrefController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/AodNotificationPrefController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 228
    invoke-static {}, Lmiui/os/Build;->getMiUiVersionCode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "15"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/AodUtils;->isAodAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    .line 232
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "com.miui.aod.settings.AODSettingActivity"

    .line 231
    invoke-static {p1, v1, v0}, Lcom/android/settings/AodAndLockScreenSettings;->checkoutActivityExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 236
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/AODSettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.action.MAIN"

    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStylePref:Lcom/android/settings/AodStylePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModePref:Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodNotificationModePref:Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/AodUtils;->actionAvailable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStyleListSupportSetMode:Z

    .line 244
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStyleListSupportSetMode:Z

    if-nez p1, :cond_3

    .line 245
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodModePref:Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 247
    :cond_3
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingsSwitchPref:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 248
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModePref:Lcom/android/settings/KeyguardRestrictedPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 249
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStylePref:Lcom/android/settings/AodStylePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 251
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/AodAndLockScreenSettings;->updateAodState()V

    goto :goto_3

    .line 229
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodSettingsCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_3
    const-string/jumbo p1, "wakeup_and_sleep_settings_category"

    .line 254
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupAndSleepCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo p1, "screen_timeout"

    .line 256
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/KeyguardTimeoutListPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mScreenTimeout:Lcom/android/settings/KeyguardTimeoutListPreference;

    const-string p1, "eye_gaze"

    .line 258
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mEyeGazePref:Landroidx/preference/CheckBoxPreference;

    .line 259
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/AodAndLockScreenSettings;->isAdaptiveSleepSupported(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 262
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupAndSleepCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mEyeGazePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_6

    .line 264
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-boolean v2, Lcom/android/settings/AodAndLockScreenSettings;->IS_FOLDABLE_DEVICE:Z

    if-eqz v2, :cond_6

    .line 265
    sget v2, Lcom/android/settings/R$string;->eye_gaze_summary_fold_device:I

    goto :goto_4

    :cond_6
    sget v2, Lcom/android/settings/R$string;->eye_gaze_summary:I

    .line 264
    :goto_4
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 266
    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mEyeGazePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "adaptive_sleep"

    const/4 v3, -0x2

    invoke-static {p1, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_7

    move p1, v0

    goto :goto_5

    :cond_7
    move p1, v1

    .line 270
    :goto_5
    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mEyeGazePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_6
    const-string p1, "gaze_lock_screen"

    .line 273
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mGazeLockScreenPref:Landroidx/preference/CheckBoxPreference;

    const-string p1, "gesture_wakeup"

    .line 274
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mGestureWakeupPref:Landroidx/preference/CheckBoxPreference;

    .line 275
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v2, "support_gesture_wakeup"

    .line 276
    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    .line 277
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupAndSleepCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mGestureWakeupPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_7

    .line 279
    :cond_8
    invoke-static {}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isPad()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 280
    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mGestureWakeupPref:Landroidx/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 283
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 282
    invoke-static {v2, p1, v1, v3}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 284
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mGestureWakeupPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_7

    .line 286
    :cond_a
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mGestureWakeupPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_7
    const-string/jumbo p1, "pick_up_gesture_wakeup"

    .line 290
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPickupWakeupPref:Landroidx/preference/CheckBoxPreference;

    .line 291
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 292
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/AodAndLockScreenSettings;->isSupportPickupWakeup(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 293
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupAndSleepCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPickupWakeupPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_8

    .line 295
    :cond_b
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPickupWakeupPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pick_up_gesture_wakeup_mode"

    .line 296
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 295
    invoke-static {v2, v3, v1, v4}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_8
    const-string/jumbo p1, "wakeup_for_keyguard_notification"

    .line 299
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupForKeyguardNotificationPref:Landroidx/preference/CheckBoxPreference;

    .line 300
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 301
    invoke-direct {p0}, Lcom/android/settings/AodAndLockScreenSettings;->initKeyguardNotificationPref()V

    const-string/jumbo p1, "smartcover_lock_or_unlock_screen"

    .line 304
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mSmartCoverSensitiveCbp:Landroidx/preference/CheckBoxPreference;

    .line 305
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const-string v2, "bool"

    const-string v3, "android.miui"

    const-string v4, "config_smartCoverEnabled"

    invoke-virtual {p1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const-string v2, "AodAndLockScreenSetting"

    if-lez p1, :cond_c

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportSmartCover: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_c
    const-string p1, "The device is old smart cover."

    .line 313
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    :goto_9
    if-eqz p1, :cond_e

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "miui_smart_cover_mode"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_d

    move p1, v0

    goto :goto_a

    :cond_d
    move p1, v1

    .line 318
    :goto_a
    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mSmartCoverSensitiveCbp:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_b

    .line 320
    :cond_e
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupAndSleepCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mSmartCoverSensitiveCbp:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_b
    const-string p1, "lock_screen_after_fold_screen"

    .line 323
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mFoldLockScreenCbp:Landroidx/preference/CheckBoxPreference;

    const-string p1, "cetus"

    .line 324
    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 325
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mFoldLockScreenCbp:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "close_lid_display_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_f

    move v2, v0

    goto :goto_c

    :cond_f
    move v2, v1

    :goto_c
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 327
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mFoldLockScreenCbp:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_d

    .line 329
    :cond_10
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupAndSleepCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mFoldLockScreenCbp:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_d
    const-string p1, "lock_screen_display_category"

    .line 332
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockScreenDisplayCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "lockscreen_magazine"

    .line 333
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockScreenMagazine:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string p1, "IN"

    .line 334
    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_11

    .line 335
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockScreenMagazine:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->lockscreen_magazine_india:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    :cond_11
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockScreenMagazine:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 338
    invoke-direct {p0}, Lcom/android/settings/AodAndLockScreenSettings;->initLockScreenMagazine()V

    const-string/jumbo p1, "others_category"

    .line 340
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mOtherCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo p1, "volume_launch_camera"

    .line 341
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeKeyLaunchCamera:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo p1, "volume_down_launch_camera_or_take_photo"

    .line 342
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeDownKeyLaunchCameraOrTakePhoto:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 344
    invoke-static {}, Lcom/android/settings/AodAndLockScreenSettings;->supportVariableAperture()Z

    move-result p1

    const-string/jumbo v2, "volumekey_launch_camera"

    if-eqz p1, :cond_12

    .line 345
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mOtherCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeKeyLaunchCamera:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 346
    invoke-direct {p0}, Lcom/android/settings/AodAndLockScreenSettings;->getValuesForKeyLaunchCamera()Ljava/util/Map;

    move-result-object p1

    .line 348
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 349
    iget-object v4, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeDownKeyLaunchCameraOrTakePhoto:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 350
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    .line 349
    invoke-virtual {v4, v3}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 353
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 355
    iget-object v4, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeDownKeyLaunchCameraOrTakePhoto:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 356
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    .line 355
    invoke-virtual {v4, v3}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 357
    iget-object v3, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeDownKeyLaunchCameraOrTakePhoto:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 360
    iget-object v4, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeDownKeyLaunchCameraOrTakePhoto:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 361
    invoke-direct {p0, v3, p1}, Lcom/android/settings/AodAndLockScreenSettings;->getVolumeKeyLaunchCameraResource(ILjava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-virtual {v4, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_e

    .line 364
    :cond_12
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mOtherCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeDownKeyLaunchCameraOrTakePhoto:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 367
    :goto_e
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeKeyLaunchCamera:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "support_edge_touch_volume"

    .line 368
    invoke-static {p1, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_14

    .line 369
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeKeyLaunchCamera:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_13

    move v2, v0

    goto :goto_f

    :cond_13
    move v2, v1

    :goto_f
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_10

    .line 372
    :cond_14
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeKeyLaunchCamera:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_15

    .line 373
    iget-object v2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mOtherCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_15
    :goto_10
    const-string/jumbo p1, "screen_on_proximity_sensor"

    .line 377
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mScreenOnProximitySensor:Landroidx/preference/CheckBoxPreference;

    .line 378
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 382
    invoke-direct {p0}, Lcom/android/settings/AodAndLockScreenSettings;->updateProximitySensorStatus()V

    const-string/jumbo p1, "miui_tof_screen_off"

    .line 384
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPeopleLeaveLockScreenPref:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo p1, "miui_tof_screen_on"

    .line 385
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPeopleNearWakeupPref:Landroidx/preference/CheckBoxPreference;

    .line 386
    invoke-direct {p0}, Lcom/android/settings/AodAndLockScreenSettings;->initMiuiTOFAndAONPref()V

    const-string p1, "lock_screen_signature"

    .line 388
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iput-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockScreenSignaturePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    .line 389
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "miui_optimization"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_16

    goto :goto_11

    :cond_16
    move v0, v1

    :goto_11
    if-eqz v0, :cond_17

    .line 392
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 393
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockScreenSignaturePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_12

    .line 396
    :cond_17
    iget-object p1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockScreenSignaturePref:Lcom/android/settingslib/miuisettings/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/AodAndLockScreenSettings;->lockScreenCategoryRemovePreference(Landroidx/preference/Preference;)V

    :cond_18
    :goto_12
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 445
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/MiuiPasswordGuardActivity;

    if-eqz v0, :cond_0

    .line 446
    sget p0, Lcom/android/settings/R$layout;->password_guard_activity:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 450
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 465
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 466
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/AodUtils;->isAodAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStateObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/android/settings/utils/AodUtils;->unregisterAodStateObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodShowModePrefController:Lcom/android/settings/AodShowModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/AodShowModePreferenceController;->cancelTask()V

    .line 469
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStylePrefController:Lcom/android/settings/AodStylePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/AodStylePreferenceController;->cancelTask()V

    .line 470
    iget-object v0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodModePrefController:Lcom/android/settings/AodModePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/AodModePreferenceController;->cancelTask()V

    .line 472
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mScreenTimeout:Lcom/android/settings/KeyguardTimeoutListPreference;

    if-eqz p0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/KeyguardTimeoutListPreference;->hideListView()V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 479
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeDownKeyLaunchCameraOrTakePhoto:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const/4 v2, 0x2

    const-string/jumbo v3, "volumekey_launch_camera"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v1, :cond_3

    .line 483
    invoke-direct {p0}, Lcom/android/settings/AodAndLockScreenSettings;->getValuesForKeyLaunchCamera()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 484
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 485
    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 486
    iget-object v6, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeDownKeyLaunchCameraOrTakePhoto:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    const-string v0, "launch_camera_and_take_photo"

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    const-string v0, "launch_camera"

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v5

    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v5

    :cond_3
    const-string v1, "lock_screen_signature"

    .line 499
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 500
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 501
    iget-object p2, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 502
    iget-object p0, p0, Lcom/android/settings/AodAndLockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    return v5

    .line 505
    :cond_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 506
    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mGestureWakeupPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_5

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "gesture_wakeup"

    .line 508
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 507
    invoke-static {p0, p1, p2, v0}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    const-string p0, "274.3.0.1.22617"

    .line 509
    invoke-static {p2, p0}, Lcom/android/settings/KeyguardSettingsEventTracker;->trackKeyguardSwitchSetEvent(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 510
    :cond_5
    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mPickupWakeupPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_6

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "pick_up_gesture_wakeup_mode"

    .line 512
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 511
    invoke-static {p0, p1, p2, v0}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    const-string p0, "274.3.0.1.22616"

    .line 513
    invoke-static {p2, p0}, Lcom/android/settings/KeyguardSettingsEventTracker;->trackKeyguardSwitchSetEvent(ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 514
    :cond_6
    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mWakeupForKeyguardNotificationPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_7

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "wakeup_for_keyguard_notification"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v1, "smartcover_lock_or_unlock_screen"

    .line 520
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 521
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "miui_smart_cover_mode"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "274.3.0.1.22618"

    .line 525
    invoke-static {p2, p0}, Lcom/android/settings/KeyguardSettingsEventTracker;->trackKeyguardSwitchSetEvent(ZLjava/lang/String;)V

    goto :goto_1

    .line 527
    :cond_8
    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mVolumeKeyLaunchCamera:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_9

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "274.3.0.1.22619"

    .line 529
    invoke-static {p2, p0}, Lcom/android/settings/KeyguardSettingsEventTracker;->trackKeyguardSwitchSetEvent(ZLjava/lang/String;)V

    goto :goto_1

    .line 530
    :cond_9
    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mScreenOnProximitySensor:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_a

    .line 531
    invoke-direct {p0, p2}, Lcom/android/settings/AodAndLockScreenSettings;->enableScreenOnProximitySensor(Z)V

    goto :goto_1

    .line 535
    :cond_a
    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mEyeGazePref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_b

    .line 536
    invoke-direct {p0, p2}, Lcom/android/settings/AodAndLockScreenSettings;->updateEyeGazePreference(Z)V

    goto :goto_1

    .line 537
    :cond_b
    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mGazeLockScreenPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_c

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "gaze_lock_screen_setting"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_c
    const-string p1, "lock_screen_after_fold_screen"

    .line 540
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 541
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p2, :cond_d

    move v2, v4

    :cond_d
    const-string p1, "close_lid_display_setting"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_e
    const-string/jumbo p1, "miui_tof_screen_off"

    .line 544
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_f
    const-string/jumbo p1, "miui_tof_screen_on"

    .line 547
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 548
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->savePeopleNearWakeup(Landroid/content/Context;I)V

    .line 549
    invoke-direct {p0, p2}, Lcom/android/settings/AodAndLockScreenSettings;->handleMessageAndFaceUnlockState(Z)V

    :cond_10
    :goto_1
    return v5
.end method

.method public onResume()V
    .locals 2

    .line 455
    invoke-super {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onResume()V

    .line 456
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/AodUtils;->isAodAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AodAndLockScreenSettings;->mAodStateObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/android/settings/utils/AodUtils;->registerAodStateObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/AodAndLockScreenSettings;->updateAodState()V

    .line 460
    invoke-direct {p0}, Lcom/android/settings/AodAndLockScreenSettings;->updateTimeoutPreferenceState()V

    return-void
.end method

.method protected tryBuildRecommendLayout(IZ)V
    .locals 5

    .line 928
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.thememanager"

    const-string/jumbo v2, "theme_component_title_lockstyle"

    invoke-static {v0, v1, v2}, Lcom/android/settings/MiuiUtils;->getStringByResName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/16 v2, 0x3f6

    if-eqz v1, :cond_0

    .line 930
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/recommend/PageIndexManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/recommend/PageIndexManager;

    move-result-object v1

    new-instance v3, Lcom/android/settings/recommend/bean/IndexDetail;

    const-string v4, "#Intent;component=com.android.thememanager/com.android.thememanager.settings.WallpaperSettingsActivity;end"

    invoke-direct {v3, v0, v4}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    goto :goto_0

    .line 932
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/recommend/PageIndexManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/recommend/PageIndexManager;

    move-result-object v1

    new-instance v3, Lcom/android/settings/recommend/bean/IndexDetail;

    invoke-direct {v3, v0}, Lcom/android/settings/recommend/bean/IndexDetail;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/recommend/PageIndexManager;->update(ILcom/android/settings/recommend/bean/IndexDetail;)V

    .line 934
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->tryBuildRecommendLayout(IZ)V

    return-void
.end method
