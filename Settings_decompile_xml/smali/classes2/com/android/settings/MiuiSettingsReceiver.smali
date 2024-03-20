.class public Lcom/android/settings/MiuiSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiSettingsReceiver.java"


# static fields
.field private static final BACKUP_STORAGE_PATH:Ljava/lang/String;

.field private static final SCREEN_DEFAULT_FPS:I


# instance fields
.field private mLastSubId:I


# direct methods
.method public static synthetic $r8$lambda$ktQhRS2QI97xo0BUbXUPVv3YZ14(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/MiuiSettingsReceiver;->lambda$putMemoryInfo$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mctOFLuwogwHscLWVooYIrzTHMc(Lcom/android/settings/MiuiSettingsReceiver;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->lambda$onReceive$0(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetBACKUP_STORAGE_PATH()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/MiuiSettingsReceiver;->BACKUP_STORAGE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "support_smart_fps"

    const/4 v1, 0x0

    .line 163
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "smart_fps_value"

    goto :goto_0

    :cond_0
    const-string v0, "defaultFps"

    .line 164
    :goto_0
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/MiuiSettingsReceiver;->SCREEN_DEFAULT_FPS:I

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MIUI"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "backup"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AllBackup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MiuiSettingsReceiver;->BACKUP_STORAGE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    .line 161
    iput v0, p0, Lcom/android/settings/MiuiSettingsReceiver;->mLastSubId:I

    return-void
.end method

.method private SaveSystemStatusWhenBootAction(Landroid/content/Context;)V
    .locals 4

    const-string p0, "ExternalRamStatus"

    const/4 v0, 0x0

    .line 793
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 794
    invoke-static {}, Lcom/android/settings/MiuiSettingsReceiver;->isExternalRamOpen()Z

    move-result v0

    .line 795
    invoke-static {}, Lcom/android/settings/special/ExternalRamController;->getBdSize()F

    move-result v1

    const-string v2, "isExternalRamOn"

    .line 796
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "BdSize"

    .line 797
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 798
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 799
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 800
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 801
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SaveSystemStatusWhenBootAction ExternalRamStatus: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiSettingsReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SaveSystemStatusWhenBootAction ExternalRamStatus bdSize "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private adjustVolume(Landroid/content/Context;)V
    .locals 5

    .line 712
    sget-boolean p0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    const-string v0, "audio"

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 713
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    .line 715
    :try_start_0
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 716
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 717
    invoke-virtual {p0, v3, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v3, 0x3

    .line 718
    invoke-virtual {p0, v3, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v3, 0x4

    .line 719
    invoke-virtual {p0, v3, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 720
    invoke-virtual {p0, v1, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v3, 0x6

    .line 721
    invoke-virtual {p0, v3, v4, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :catch_0
    :cond_0
    sget-object p0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "gemini"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "capricorn"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_1
    const-string/jumbo p0, "persist.sys.call_vol_increased"

    .line 730
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 731
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 732
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-gt v0, v1, :cond_2

    mul-int/lit8 v0, v0, 0xb

    .line 734
    div-int/2addr v0, v1

    invoke-virtual {p1, v2, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_2
    const-string/jumbo p1, "true"

    .line 736
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private checkPrivacyPasswordEnable(Landroid/content/Context;)V
    .locals 3

    .line 769
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "privacy_password_status_is_record"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    return-void

    .line 773
    :cond_1
    invoke-static {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object p0

    .line 774
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->havePattern()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setUsedPrivacyInBussiness(Z)V

    .line 775
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private checkXiaomiAccount(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo p0, "security"

    .line 757
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/security/SecurityManager;

    .line 758
    invoke-virtual {p0}, Lmiui/security/SecurityManager;->haveAccessControlPassword()Z

    move-result p0

    .line 759
    invoke-static {p1}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->isLoginXiaomiAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "app_lock_add_account_md5"

    invoke-static {p1}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->getLoginedAccountMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 763
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "privacy_add_account_md5"

    invoke-static {p1}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->getLoginedAccountMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private checkXiaomiAccountForPrivacyPassword(Landroid/content/Context;)V
    .locals 4

    .line 742
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->checkPrivacyPasswordEnable(Landroid/content/Context;)V

    .line 743
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "password_has_promotioned"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 747
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->checkXiaomiAccount(Landroid/content/Context;)V

    .line 749
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "com_miui_applicatinlock_use_fingerprint_state"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 751
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "fingerprint_apply_to_privacy_password"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 753
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static clearSecretAlbumLockPattern(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 642
    new-instance p1, Landroid/security/MiuiLockPatternUtils;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;I)V

    const/4 p0, 0x0

    .line 643
    invoke-virtual {p1, p0}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    return-void
.end method

.method private static clearSyncStates(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "extra_update_type"

    const/4 v1, -0x1

    .line 626
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 630
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lmiui/provider/Wifi$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lmiui/provider/Wifi$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 633
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lmiui/provider/Wifi;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lmiui/provider/Wifi;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private static configCustomWifi(Landroid/content/Context;II)V
    .locals 1

    .line 560
    new-instance v0, Lcom/android/settings/MiuiSettingsReceiver$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/MiuiSettingsReceiver$2;-><init>(Landroid/content/Context;II)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private initImeSkinFollowSystem(Landroid/content/Context;)V
    .locals 1

    .line 785
    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->isKeyBoardSkinFollowSystemDefault(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "keyboard_skin_follow_system_enable"

    const/4 v0, 0x1

    .line 787
    invoke-static {p1, p0, v0}, Lcom/android/settings/inputmethod/InputMethodFunctionSelectUtils;->setPreferenceCheckedValue(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private initSystemSettings(Landroid/content/Context;)V
    .locals 3

    .line 596
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p0

    .line 597
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiUtils;->isTouchSensitive(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/MiuiUtils;->enableTouchSensitive(Landroid/content/Context;Z)V

    .line 602
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/custs/CellBroadcastUtil;->setCellbroadcastEnabledSetting(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 604
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 608
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "volumekey_wake_screen"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    move v2, v1

    :cond_1
    invoke-static {v2}, Lcom/android/settings/MiuiUtils;->enableVolumKeyWakeUp(Z)V

    .line 610
    invoke-static {p1}, Lcom/android/settings/MiuiSettingsReceiver;->showPowerModeNotification(Landroid/content/Context;)V

    .line 612
    invoke-static {p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->isPaperModeTimeEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 613
    invoke-static {p1}, Lcom/android/settings/display/DisplayUtils;->setScreenPaperModeGetLocation(Landroid/content/Context;)V

    .line 614
    invoke-static {p1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeSchedulerType(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->startPaperModeAutoTime(Landroid/content/Context;I)V

    .line 617
    :cond_2
    invoke-static {p1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeTimeEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 618
    invoke-static {p1, v1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->startDarkModeAutoTime(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method

.method private initZenModeDefaultValues(Landroid/content/Context;)V
    .locals 7

    .line 809
    sget-boolean p0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez p0, :cond_0

    const-string/jumbo p0, "notification"

    .line 810
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 812
    :try_start_0
    invoke-virtual {p0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    .line 814
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, -0x11

    and-int/lit8 v2, v0, -0x9

    .line 817
    new-instance v0, Landroid/app/NotificationManager$Policy;

    iget v3, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v4, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v5, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v6, p1, Landroid/app/NotificationManager$Policy;->state:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    .line 819
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MiuiSettingsReceiver"

    const-string v0, "initZenModeDefaultValues:fail"

    .line 821
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static isExternalRamOpen()Z
    .locals 2

    :try_start_0
    const-string/jumbo v0, "persist.miui.extm.enable"

    .line 831
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 833
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static isTopWifiWifiConfigActivity(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "activity"

    .line 654
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 655
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 656
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 660
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "WifiConfigActivity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Context;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->resetVibrationInAccessibility(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$putMemoryInfo$1(Landroid/content/Context;)V
    .locals 7

    .line 933
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_ram_size"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "miui_memory_size"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 936
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, " memory "

    const-string v6, "MiuiSettingsReceiver"

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 937
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMemoryInfo: ram "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 941
    :cond_0
    invoke-static {p0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/device/MiuiAboutPhoneUtils;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 943
    invoke-virtual {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getTotaolRam()Ljava/lang/String;

    move-result-object v2

    .line 944
    invoke-virtual {v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getTotalMemoryRemoveUFS()Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 946
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 947
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putMemoryInfo: ram "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private putMemoryInfo(Landroid/content/Context;)V
    .locals 0

    .line 932
    new-instance p0, Lcom/android/settings/MiuiSettingsReceiver$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private putMiuiVersionName(Landroid/content/Context;)V
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 926
    invoke-static {p1, p0, v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getMiuiVersionInCard(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p0

    .line 927
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "miui_version_name"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private removeOldSettings(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo p0, "persist.sys.aries.power_profile"

    const-string/jumbo v0, "middle"

    .line 541
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "power_mode"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private resetVibrationInAccessibility(Landroid/content/Context;)V
    .locals 7

    const-string/jumbo p0, "resetVibrationInAccessibility: start"

    const-string v0, "MiuiSettingsReceiver"

    .line 860
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 866
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v1, "reset_vibration_accessibility_success"

    const/4 v2, 0x0

    .line 869
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string p0, "It\'s been set up in the past"

    .line 871
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 876
    :cond_2
    const-class v3, Landroid/os/Vibrator;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    if-nez v3, :cond_3

    return-void

    :cond_3
    :try_start_0
    const-string/jumbo v5, "vibrate_on"

    .line 881
    invoke-static {p0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "ring_vibration_intensity"

    const/16 v6, 0x21

    .line 885
    invoke-virtual {v3, v6}, Landroid/os/Vibrator;->getDefaultVibrationIntensity(I)I

    move-result v6

    .line 883
    invoke-static {p0, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 887
    const-class v5, Landroid/media/AudioManager;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_4

    .line 889
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setRampingRingerEnabled(Z)V

    :cond_4
    const-string/jumbo p1, "notification_vibration_intensity"

    const/16 v5, 0x31

    .line 894
    invoke-virtual {v3, v5}, Landroid/os/Vibrator;->getDefaultVibrationIntensity(I)I

    move-result v5

    .line 892
    invoke-static {p0, p1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "alarm_vibration_intensity"

    const/16 v5, 0x11

    .line 898
    invoke-virtual {v3, v5}, Landroid/os/Vibrator;->getDefaultVibrationIntensity(I)I

    move-result v5

    .line 896
    invoke-static {p0, p1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "haptic_feedback_intensity"

    const/16 v5, 0x12

    .line 902
    invoke-virtual {v3, v5}, Landroid/os/Vibrator;->getDefaultVibrationIntensity(I)I

    move-result v6

    .line 900
    invoke-static {p0, p1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "hardware_haptic_feedback_intensity"

    .line 905
    invoke-virtual {v3, v5}, Landroid/os/Vibrator;->getDefaultVibrationIntensity(I)I

    move-result v5

    .line 903
    invoke-static {p0, p1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo p1, "media_vibration_intensity"

    const/16 v5, 0x13

    .line 909
    invoke-virtual {v3, v5}, Landroid/os/Vibrator;->getDefaultVibrationIntensity(I)I

    move-result v3

    .line 907
    invoke-static {p0, p1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v3, "resetVibrationInAccessibility: error"

    .line 913
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string/jumbo p1, "resetVibrationInAccessibility: end"

    .line 916
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    .line 919
    invoke-static {p0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo p0, "resetVibrationInAccessibility: success"

    .line 920
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private sendBroadcastToDeskClock(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 838
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendBroadcastToDeskClock:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiSettingsReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "com.android.deskclock"

    .line 840
    invoke-static {p1, p0}, Lcom/android/settings/utils/SignaturesUtils;->isSignaturesSameCurrentApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Signatures not same"

    .line 841
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 845
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 846
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x20

    .line 848
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 849
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "sendBroadcastToDeskClock:fail"

    .line 851
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setDefaultHostapdConfig(Landroid/content/Context;)V
    .locals 7

    const-string/jumbo p0, "wifi"

    .line 486
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 487
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    const-string/jumbo v1, "ro.product.model"

    .line 488
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ro.product.marketname"

    .line 489
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_5

    .line 501
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiuiSettingsReceiver"

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v4

    .line 502
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x8

    if-lt v4, v6, :cond_4

    .line 503
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_3

    .line 511
    sget-boolean v3, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v3, :cond_0

    .line 512
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_0

    .line 514
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 516
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->wifi_tether_configure_ssid_default:I

    .line 517
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 525
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hotspot default ssid is: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance p1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    .line 532
    invoke-virtual {p1, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 533
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    .line 534
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 535
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "setDefaultHostapdConfig but wifiApSsid is null"

    .line 527
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string/jumbo p0, "setDefaultHostapdConfig, but passspharse does not meet the condition"

    .line 506
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method private setDefaultHostapdConfigIfNeeded(Landroid/content/Context;)V
    .locals 1

    .line 474
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 476
    :try_start_0
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AmlMiuiWifiService"

    .line 477
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/AmlMiuiWifiManager;

    if-eqz v0, :cond_0

    .line 478
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->setDefaultHostapdConfig(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MiuiSettingsReceiver"

    const-string v0, "isFirstBoot: "

    .line 481
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setDefaultInputMethod(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 679
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "enabled_input_methods"

    .line 680
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 681
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 685
    :cond_0
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 686
    invoke-virtual {v0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 689
    :cond_1
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 690
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 697
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    :cond_3
    const-string p2, "input_methods_subtype_history"

    .line 701
    invoke-static {p0, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "default_input_method"

    .line 702
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 704
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p3, :cond_4

    .line 705
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 706
    :cond_4
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    return-void
.end method

.method private setIeee80211axDefaultStatus(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo p0, "wifi"

    .line 954
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 955
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 957
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, -0x2

    const-string v2, "hotspot_80211ax_support"

    const/4 v3, 0x0

    .line 956
    invoke-static {p1, v2, v3, v1}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result p1

    if-nez p1, :cond_0

    .line 959
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isIeee80211axEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "MiuiSettingsReceiver"

    const-string/jumbo v1, "onReceive: Set Ieee80211axEnabled default disabled"

    .line 960
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    new-instance p1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {p1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 962
    invoke-virtual {p1, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setIeee80211axEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 963
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    :cond_0
    return-void
.end method

.method private static showPowerModeNotification(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "persist.sys.aries.power_profile"

    const-string/jumbo v1, "middle"

    .line 551
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "high"

    .line 553
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static showWifiLoginDialog(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 667
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    .line 668
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 669
    :cond_0
    invoke-static {p0}, Lcom/android/settings/MiuiSettingsReceiver;->isTopWifiWifiConfigActivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 670
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/WifiConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "wifi_config"

    .line 671
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "isSlave"

    .line 672
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 673
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 674
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "auto_renamed"

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {p1}, Lcom/android/settings/usagestats/utils/CommonUtils;->hasIndependentTimer(Landroid/content/Context;)Z

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "is_show_camera_grip"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "MiuiSettingsReceiver"

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    const-string/jumbo p2, "onReceive: ACTION_BOOT_COMPLETED"

    .line 181
    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "miui.action.WAKE_CLOCK"

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSettingsReceiver;->sendBroadcastToDeskClock(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->initSystemSettings(Landroid/content/Context;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->adjustVolume(Landroid/content/Context;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->removeOldSettings(Landroid/content/Context;)V

    .line 186
    invoke-static {p1, v5, v7}, Lcom/android/settings/MiuiSettingsReceiver;->configCustomWifi(Landroid/content/Context;II)V

    .line 187
    invoke-static {p1}, Lcom/android/settings/wifi/passpoint/MiuiPasspointR1Utils;->removeAllUnregisteredConfig(Landroid/content/Context;)V

    .line 189
    new-instance p2, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {p2, p1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 190
    invoke-virtual {p2, v7}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    .line 191
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->checkXiaomiAccountForPrivacyPassword(Landroid/content/Context;)V

    .line 193
    invoke-static {p1, v7}, Lcom/android/settings/dangerousoptions/DangerousOptionsUtil;->checkDangerousOptions(Landroid/content/Context;Z)V

    .line 195
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->SaveSystemStatusWhenBootAction(Landroid/content/Context;)V

    .line 197
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->hasMarketName()Z

    move-result p2

    if-nez p2, :cond_0

    .line 199
    invoke-static {p1}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 201
    :try_start_0
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getDefaultNameRes()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 202
    invoke-static {p1, v0}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 203
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->getModelNumber()Ljava/lang/String;

    move-result-object p2

    .line 204
    invoke-static {p1, p2}, Lcom/android/settings/MiuiUtils;->setDeviceName(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    invoke-static {p1, v0, p2}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 206
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.action.edit_device_name"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "device rename failed!"

    .line 209
    invoke-static {v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/wifi/OneTrackService;->setDailyRepeat(Landroid/content/Context;)V

    .line 215
    new-instance p2, Lcom/android/settings/MiuiSettingsReceiver$1;

    invoke-direct {p2, p0}, Lcom/android/settings/MiuiSettingsReceiver$1;-><init>(Lcom/android/settings/MiuiSettingsReceiver;)V

    invoke-static {p2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 228
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->initImeSkinFollowSystem(Landroid/content/Context;)V

    :try_start_1
    const-string/jumbo p2, "miui.extm.low_data"

    .line 231
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v5, :cond_1

    .line 233
    sget p2, Lcom/android/settings/R$string;->external_ram_remind_toast:I

    invoke-static {p1, p2, v5}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    const-string/jumbo v0, "onReceive: "

    .line 236
    invoke-static {v6, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->putMiuiVersionName(Landroid/content/Context;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->putMemoryInfo(Landroid/content/Context;)V

    .line 240
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->setIeee80211axDefaultStatus(Landroid/content/Context;)V

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v3, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->setDefaultHostapdConfigIfNeeded(Landroid/content/Context;)V

    .line 243
    invoke-static {p1, v4}, Lcom/android/settings/banner/HomePageBannerHelper;->queryAndSaveBannerOnBg(Landroid/content/Context;Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;)V

    goto/16 :goto_6

    :cond_2
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    invoke-static {p1, p2}, Lcom/android/settings/MiuiSettingsReceiver;->clearSyncStates(Landroid/content/Context;Landroid/content/Intent;)V

    .line 246
    invoke-static {p1, p2}, Lcom/android/settings/MiuiSettingsReceiver;->clearSecretAlbumLockPattern(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_3
    const-string/jumbo v0, "miui.intent.action.WIFI_CONNECTION_FAILURE"

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p0, "wifiConfiguration"

    .line 248
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    const-string v0, "isSlave"

    .line 249
    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 250
    invoke-static {p1, p0, p2}, Lcom/android/settings/MiuiSettingsReceiver;->showWifiLoginDialog(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_6

    :cond_4
    const-string v0, "android.provider.Telephony.SECRET_CODE"

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "enable_demo_mode"

    invoke-static {p0, p2, v7}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v5

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_5

    const-string p0, "enable"

    goto :goto_2

    :cond_5
    const-string p0, "disable"

    .line 258
    :goto_2
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " demo mode."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x64

    .line 257
    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 258
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :cond_6
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_7

    const-string/jumbo p0, "networkInfo"

    .line 260
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo;

    if-eqz p0, :cond_2f

    .line 261
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    if-ne p2, v5, :cond_2f

    .line 262
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    sget-object p2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p0, p2, :cond_2f

    .line 263
    invoke-static {p1, v2, v2}, Lcom/android/settings/MiuiSettingsReceiver;->configCustomWifi(Landroid/content/Context;II)V

    goto/16 :goto_6

    :cond_7
    const-string v0, "android.intent.action.PRE_BOOT_COMPLETED"

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, -0x1

    if-eqz v0, :cond_c

    .line 268
    sget-boolean p2, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz p2, :cond_8

    const-string p2, "iflytek"

    .line 269
    invoke-direct {p0, p1, p2, v7}, Lcom/android/settings/MiuiSettingsReceiver;->setDefaultInputMethod(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 272
    :cond_8
    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string/jumbo p2, "onReceive: PRE_BOOT_COMPLETED init dual clock"

    .line 273
    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {p1}, Lcom/android/settings/datetime/DualClockHealper;->dualTimeZoneInit(Landroid/content/Context;)V

    .line 278
    :cond_9
    sget-boolean p2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz p2, :cond_a

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "vibrate_in_normal"

    sget-boolean v1, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    invoke-static {p2, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "vibrate_when_ringing"

    .line 282
    invoke-static {p2, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    :cond_a
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.updater.action.OTA_UPDATE_SUCCESSED"

    .line 289
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.otaprovision"

    const-string v2, "com.miui.miservice.push.MiServiceReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 294
    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->closeSensorOff(Landroid/content/Context;)V

    .line 295
    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->resetTimeZoneIfNeed(Landroid/content/Context;)V

    .line 296
    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->resetDualClockIfNeed(Landroid/content/Context;)V

    .line 298
    invoke-static {p1}, Lcom/android/settings/applications/DefaultAppsHelper;->loadDefaultVideoPlayer(Landroid/content/Context;)V

    .line 299
    invoke-static {p1}, Lcom/android/settings/applications/DefaultAppsHelper;->loadDefaultAssistant(Landroid/content/Context;)V

    .line 300
    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->sendBroadcastToTheme(Landroid/content/Context;)V

    .line 302
    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->sendBroadcastToHuanji(Landroid/content/Context;)V

    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "user_refresh_rate"

    invoke-static {p2, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v8, :cond_b

    const-string p2, " *** user_refresh_rate = -1 *** "

    .line 305
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget v1, Lcom/android/settings/MiuiSettingsReceiver;->SCREEN_DEFAULT_FPS:I

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The FPS value previously set by the user is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_b
    new-instance p2, Lcom/android/settings/MiuiSettingsReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/MiuiSettingsReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/MiuiSettingsReceiver;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_6

    :cond_c
    const-string/jumbo v0, "miui.intent.action.MIUI_REGION_CHANGED"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 313
    invoke-static {p1}, Lcom/android/settings/custs/CellBroadcastUtil;->setCellbroadcastEnabledSetting(Landroid/content/Context;)V

    .line 314
    invoke-static {p1, v5, v7}, Lcom/android/settings/MiuiSettingsReceiver;->configCustomWifi(Landroid/content/Context;II)V

    goto/16 :goto_6

    :cond_d
    const-string v0, "android.net.vpn.SETTINGS"

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo p0, "vpn_on"

    .line 316
    invoke-virtual {p2, p0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 317
    invoke-static {p1, p0}, Lcom/android/settings/vpn2/MiuiVpnUtils;->turnOnVpn(Landroid/content/Context;Z)V

    goto/16 :goto_6

    :cond_e
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 319
    invoke-static {}, Lcom/android/settings/search/SearchUpdater;->getInstance()Lcom/android/settings/search/SearchUpdater;

    move-result-object p0

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p0, p2}, Lcom/android/settings/search/SearchUpdater;->handleUpdate(I)V

    .line 320
    invoke-static {}, Lcom/android/settings/search/SearchUpdater;->getInstance()Lcom/android/settings/search/SearchUpdater;

    move-result-object p0

    const/16 p2, 0x40

    invoke-virtual {p0, p2}, Lcom/android/settings/search/SearchUpdater;->handleUpdate(I)V

    .line 321
    invoke-static {p1, v5, v7}, Lcom/android/settings/MiuiSettingsReceiver;->configCustomWifi(Landroid/content/Context;II)V

    goto/16 :goto_6

    :cond_f
    const-string/jumbo v0, "xiaomi.appindex.action.FUNCTIONS_FINISHED"

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 323
    invoke-static {}, Lcom/android/settings/search/SearchUpdater;->getInstance()Lcom/android/settings/search/SearchUpdater;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/android/settings/search/SearchUpdater;->handleUpdate(I)V

    .line 324
    invoke-static {}, Lcom/android/settings/search/ReverseSearchService;->createIndex()V

    goto/16 :goto_6

    :cond_10
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo p2, "support_cm_language_bo"

    .line 326
    invoke-static {p2, v7}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "bo"

    .line 328
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    const-string/jumbo p2, "sogou.xiaomi"

    .line 329
    invoke-direct {p0, p1, p2, v5}, Lcom/android/settings/MiuiSettingsReceiver;->setDefaultInputMethod(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 332
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->putMiuiVersionName(Landroid/content/Context;)V

    .line 333
    invoke-static {p1}, Lcom/android/settings/ShortcutsTools;->initShortcuts(Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_12
    const-string v0, "android.provision.action.PROVISION_COMPLETE"

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 336
    sget-boolean p2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz p2, :cond_13

    sget-boolean p2, Lcom/android/settings/RegionUtils;->IS_FR_ORANGE:Z

    if-nez p2, :cond_13

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_dual_clock"

    invoke-static {p2, v0, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    sget-boolean p2, Lcom/android/settings/RegionUtils;->IS_FR_SFR:Z

    if-eqz p2, :cond_14

    .line 340
    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->resetSFRDualClock(Landroid/content/Context;)V

    goto :goto_3

    .line 343
    :cond_13
    invoke-static {p1}, Lcom/android/settings/datetime/DualClockHealper;->dualTimeZoneInit(Landroid/content/Context;)V

    :cond_14
    :goto_3
    const-string p2, "cloud_save_darkmode_key"

    .line 346
    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "cloud_save_darkmode_value"

    .line 347
    invoke-interface {p2, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, " restore the times from huanji process at provision"

    .line 348
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-interface {p2, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->setDarkModeTimeEnablePrefsOnly(Landroid/content/Context;Z)V

    .line 352
    :cond_15
    invoke-static {p1}, Lcom/android/settings/DefalutApplicationLoader;->load(Landroid/content/Context;)V

    .line 353
    invoke-static {p1}, Lcom/android/settings/applications/DefaultAppsHelper;->loadDefaultBrowser(Landroid/content/Context;)V

    .line 354
    invoke-static {p1}, Lcom/android/settings/applications/DefaultAppsHelper;->loadDefaultVideoPlayer(Landroid/content/Context;)V

    .line 355
    invoke-static {p1}, Lcom/android/settings/applications/DefaultAppsHelper;->loadDefaultAssistant(Landroid/content/Context;)V

    const-string/jumbo p2, "onReceive: PROVISION_COMPLETE_BROADCAST"

    .line 358
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget-boolean p2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez p2, :cond_16

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "ntp_server"

    const-string/jumbo v1, "pool.ntp.org"

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 363
    :cond_16
    invoke-static {v5}, Lcom/android/settings/report/InternationalCompat;->enableNetworkRequest(Z)V

    .line 364
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->initZenModeDefaultValues(Landroid/content/Context;)V

    .line 366
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "Activation_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_6

    :cond_17
    const-string v0, "com.android.updater.action.TOGGLE_SUPERSCRIPT"

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 368
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 369
    invoke-static {p1, p0}, Lcom/android/settings/device/UpdateBroadcastManager;->toggleSuperscript(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_18
    const-string v0, "com.xiaomi.account.action.MODIFY_SAFE_PHONE"

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "bind_phone_type"

    .line 373
    invoke-virtual {p2, p0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v5, :cond_19

    move p2, v5

    goto :goto_4

    :cond_19
    move p2, v7

    .line 376
    :goto_4
    invoke-static {p1, p2}, Lcom/android/settings/notify/SettingsNotifyHelper;->setPhoneRecycled(Landroid/content/Context;Z)V

    if-ne p0, v5, :cond_1a

    goto :goto_5

    :cond_1a
    move v5, v7

    .line 379
    :goto_5
    invoke-static {p1, v2, v5}, Lcom/android/settings/device/UpdateBroadcastManager;->updateSuperscript(Landroid/content/Context;IZ)V

    .line 382
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Phone recycled/bind, and pleae notify on settings, value="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1b
    const-string/jumbo v0, "miui.intent.action.ACCESSIBILITY_MENU_INIT"

    .line 383
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 384
    sput-boolean v5, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->isReceiveA11yMenuInitBrodcast:Z

    goto/16 :goto_6

    :cond_1c
    const-string v0, "easy_mode_update_font"

    .line 385
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo p0, "status"

    .line 386
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "previous_font"

    invoke-static {p2, v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p0, :cond_1d

    const/16 p2, 0xf

    .line 388
    :cond_1d
    invoke-static {p1, p2}, Lcom/android/settings/display/LargeFontUtils;->sendUiModeChangeMessage(Landroid/content/Context;I)Z

    if-nez p0, :cond_2f

    .line 390
    invoke-static {p1, v4}, Lcom/android/settings/banner/HomePageBannerHelper;->queryAndSaveBannerOnBg(Landroid/content/Context;Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;)V

    goto/16 :goto_6

    :cond_1e
    const-string/jumbo v0, "miui.intent.action.MUSIC_UNMUTE_BY_USER_DONE"

    .line 392
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "Receive ACTION_MUSIC_UNMUTE_BY_USER_DONE!!!"

    .line 393
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "miui_unmute_by_settings"

    invoke-static {p0, p1, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :cond_1f
    const-string/jumbo v0, "miui.intent.action.START_TALKBACK"

    .line 396
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 397
    invoke-static {p1}, Lcom/android/settings/accessibility/utils/MiuiAccessibilityUtils;->enableAccessibility(Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_20
    const-string/jumbo v0, "miui.intent.action.HIGH_REFRESH_OPTIONS"

    .line 398
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, " ACTION_HIGH_REFRESH_OPTIONS received "

    .line 399
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "NewRefreshRateFragment"

    const-string p1, "HighRefreshPreference"

    .line 400
    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_21
    const-string/jumbo v0, "miui.intent.action.HIGH_REFRESH_SWITCH"

    .line 402
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p0, " ACTION_HIGH_REFRESH_SWITCH received "

    .line 403
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "packagename"

    .line 404
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "state"

    .line 405
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 406
    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchEvent(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_22
    const-string/jumbo v0, "miui.intent.action.HIGH_REFRESH_STATISTICS"

    .line 408
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string p0, " ACTION_HIGH_REFRESH_STATISTICS received "

    .line 409
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "packagelist"

    .line 410
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 411
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    :cond_23
    invoke-static {p0, v7}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->trackSwitchSummary(Ljava/util/List;I)V

    goto/16 :goto_6

    :cond_24
    const-string v0, "android.telephony.action.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

    .line 413
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_26

    const-string p0, "android.telephony.extra.DATA_FAIL_CAUSE"

    .line 414
    invoke-virtual {p2, p0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 416
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receive ACTION_CARRIER_SIGNAL_REQUEST_NETWORK_FAILED! cause: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x1d

    if-eq p0, p2, :cond_25

    const/16 p2, 0x21

    if-eq p0, p2, :cond_25

    const/16 p2, 0x1001

    if-eq p0, p2, :cond_25

    const/16 p2, 0x7f2

    if-ne p0, p2, :cond_2f

    .line 423
    :cond_25
    invoke-static {p1, v2, v2}, Lcom/android/settings/MiuiSettingsReceiver;->configCustomWifi(Landroid/content/Context;II)V

    goto/16 :goto_6

    :cond_26
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 425
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string/jumbo v0, "subscription"

    .line 426
    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED! subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget v0, p0, Lcom/android/settings/MiuiSettingsReceiver;->mLastSubId:I

    if-eq p2, v0, :cond_2f

    .line 429
    iput p2, p0, Lcom/android/settings/MiuiSettingsReceiver;->mLastSubId:I

    .line 430
    invoke-static {p1, v2, v5}, Lcom/android/settings/MiuiSettingsReceiver;->configCustomWifi(Landroid/content/Context;II)V

    goto/16 :goto_6

    :cond_27
    const-string/jumbo v0, "miui.intent.action.settings.SPEED_MODE_CLOSED"

    .line 432
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 433
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "speed_mode"

    invoke-static {p0, p2, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string/jumbo p0, "notification"

    .line 436
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 437
    sget p1, Lcom/android/settings/R$string;->speed_mode_noti_title:I

    invoke-virtual {p0, v4, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_28
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 438
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 439
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->SaveSystemStatusWhenBootAction(Landroid/content/Context;)V

    const-string/jumbo p2, "onReceive: ACTION_LOCKED_BOOT_COMPLETED setExternalRamStatus"

    .line 440
    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "miui.action.LOCKED_WAKE_CLOCK"

    .line 441
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSettingsReceiver;->sendBroadcastToDeskClock(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_29
    const-string v0, "com.miui.shoulderkey.shortcut"

    .line 442
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 443
    invoke-static {p1}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/shoulderkey/ShoulderKeyShortcutUtils;->showPrompt()V

    goto/16 :goto_6

    :cond_2a
    const-string v0, "com.xiaomi.shop.action.NEW_MACHINE_ENTRANCE_CLOSE"

    .line 444
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "Is_new_phone"

    invoke-static {p0, p1, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :cond_2b
    const-string/jumbo v0, "miui.intent.action.SETTINGS_NOTIFICATION_RECEIVER"

    .line 447
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo p0, "settings_notification_state"

    .line 448
    invoke-virtual {p2, p0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    const/16 p2, 0x8

    .line 449
    invoke-static {p1, p2, p0}, Lcom/android/settings/device/UpdateBroadcastManager;->updateSuperscript(Landroid/content/Context;IZ)V

    .line 450
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onReceive ACTION_SETTINGS_NOTIFICATION_RECEIVER: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_2c
    const-string v0, "com.xiaomi.bluetooth.headset.group_device_found"

    .line 451
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string p0, "LEA1"

    .line 452
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "LEA2"

    .line 453
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lea1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " lea2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sharedpreConfig"

    .line 456
    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "PRIMARY_ADDRESS"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 458
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6

    :cond_2d
    const-string v0, "android.net.wifi.action.NETWORK_SETTINGS_RESET"

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo p2, "settings reset networks"

    .line 460
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "AmlMiuiWifiService"

    .line 462
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/AmlMiuiWifiManager;

    if-eqz p2, :cond_2f

    .line 464
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettingsReceiver;->setDefaultHostapdConfig(Landroid/content/Context;)V

    goto :goto_6

    :cond_2e
    const-string/jumbo p0, "miui.intent.action.ACTION_HANDLE_STATE_CHANGED"

    .line 466
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const-string/jumbo p0, "miui.intent.extra.EXTRA_HANDLE_CONNECT_STATE"

    .line 467
    invoke-virtual {p2, p0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 468
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handle_state_changed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "handleConnectState: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2f
    :goto_6
    return-void
.end method
