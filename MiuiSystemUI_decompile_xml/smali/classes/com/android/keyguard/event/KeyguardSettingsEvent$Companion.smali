.class public final Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;-><init>()V

    return-void
.end method

.method private final getOwnerInfo()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/keyguard/event/KeyguardSettingsEvent;->access$getMLockPatternUtils$cp()Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    move-object p0, v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_2

    .line 14
    invoke-static {}, Lcom/android/keyguard/event/KeyguardSettingsEvent;->access$getMLockPatternUtils$cp()Lcom/android/internal/widget/LockPatternUtils;

    .line 16
    move-result-object p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    move-object v0, p0

    .line 23
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    invoke-static {}, Lcom/android/keyguard/event/KeyguardSettingsEvent;->access$getMLockPatternUtils$cp()Lcom/android/internal/widget/LockPatternUtils;

    .line 29
    move-result-object p0

    .line 32
    if-nez p0, :cond_3

    .line 33
    move-object p0, v0

    .line 35
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 36
    move-result v1

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    .line 40
    move-result p0

    .line 43
    if-eqz p0, :cond_5

    .line 44
    invoke-static {}, Lcom/android/keyguard/event/KeyguardSettingsEvent;->access$getMLockPatternUtils$cp()Lcom/android/internal/widget/LockPatternUtils;

    .line 46
    move-result-object p0

    .line 49
    if-nez p0, :cond_4

    .line 50
    goto :goto_1

    .line 52
    :cond_4
    move-object v0, p0

    .line 53
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 54
    move-result p0

    .line 57
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    :cond_5
    :goto_2
    return-object v0
    .line 62
.end method


# virtual methods
.method public final getActionDoubleClickValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 7
    move-result v0

    .line 10
    const-string v1, "gesture_wakeup"

    .line 11
    invoke-static {p0, v1, p1, v0}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 13
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    const-string/jumbo p0, "\u662f"

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    const-string/jumbo p0, "\u5426"

    .line 23
    :goto_0
    return-object p0
    .line 26
.end method

.method public final getDarkFingerprintUnlockValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/keyguard/event/KeyguardSettingsEvent;->access$isSupportLowlight$cp()Z

    .line 2
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const-string/jumbo p0, "\u65e0\u6b64\u529f\u80fd"

    .line 8
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object p0

    .line 15
    const/4 p1, 0x0

    .line 16
    const/4 v0, -0x2

    .line 17
    const-string v1, "gxzw_icon_aod_lowlight_show_enable"

    .line 18
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 20
    move-result p0

    .line 23
    const/4 p1, 0x1

    .line 24
    if-ne p0, p1, :cond_1

    .line 25
    const-string/jumbo p0, "\u662f"

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    const-string/jumbo p0, "\u5426"

    .line 31
    :goto_0
    return-object p0
    .line 34
.end method

.method public final getDisplayPatternValue()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/keyguard/event/KeyguardSettingsEvent;->access$getMLockPatternUtils$cp()Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    .line 13
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    const-string/jumbo p0, "\u662f"

    .line 19
    goto :goto_0

    .line 22
    :cond_1
    const-string/jumbo p0, "\u5426"

    .line 23
    :goto_0
    return-object p0
    .line 26
.end method

.method public final getFaceNum(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->getFaceManager(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->mWeakReferenceFaceManager:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Landroid/hardware/face/BaseMiuiFaceManager;

    .line 11
    invoke-virtual {p0}, Landroid/hardware/face/BaseMiuiFaceManager;->getEnrolledFaces()Ljava/util/List;

    .line 13
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 17
    move-result p0

    .line 20
    return p0
    .line 21
.end method

.method public final getFaceUnlockNotificationValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, "face_unlock_by_notification_screen_on"

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 9
    move-result p0

    .line 12
    const/4 p1, 0x1

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    const-string/jumbo p0, "\u662f"

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo p0, "\u5426"

    .line 20
    :goto_0
    return-object p0
    .line 23
.end method

.method public final getFavoriteTemplates(Landroid/content/Context;)Lcom/android/keyguard/wallpaper/entity/KeyguardFavoriteTemplates;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, "keyguard_template_status"

    .line 6
    const/4 v0, -0x2

    .line 8
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    new-instance p1, Lcom/google/gson/Gson;

    .line 15
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 17
    const-class v0, Lcom/android/keyguard/wallpaper/entity/KeyguardFavoriteTemplates;

    .line 20
    invoke-virtual {p1, v0, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/keyguard/wallpaper/entity/KeyguardFavoriteTemplates;

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Lcom/android/keyguard/wallpaper/entity/KeyguardFavoriteTemplates;

    .line 29
    const/4 p1, 0x0

    .line 31
    const-string/jumbo v0, "\u65e0\u5386\u53f2\u6a21\u7248"

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/wallpaper/entity/KeyguardFavoriteTemplates;-><init>(ILjava/lang/String;)V

    .line 35
    :goto_0
    return-object p0
    .line 38
.end method

.method public final getFingerprintNum()I
    .locals 2

    .line 1
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 10
    if-nez p0, :cond_0

    .line 12
    new-instance p0, Ljava/util/ArrayList;

    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    .line 20
    move-result-object p0

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    if-eqz p0, :cond_1

    .line 29
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 31
    move-result v1

    .line 34
    if-lez v1, :cond_1

    .line 35
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object p0

    .line 40
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 50
    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 51
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    .line 53
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    goto :goto_0

    .line 64
    :cond_1
    move-object p0, v0

    .line 65
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 66
    move-result p0

    .line 69
    return p0
.end method

.method public final getFingerprintPrivacyPasswordValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/keyguard/event/KeyguardSettingsEvent;->access$isSupportFinger$cp()Z

    .line 2
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const-string/jumbo p0, "\u65e0\u6b64\u529f\u80fd"

    .line 8
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object p0

    .line 15
    const-string p1, "fingerprint_apply_to_privacy_password"

    .line 16
    const/4 v0, 0x1

    .line 18
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 19
    move-result p0

    .line 22
    const/4 p1, 0x2

    .line 23
    if-ne p0, p1, :cond_1

    .line 24
    const-string/jumbo p0, "\u662f"

    .line 26
    goto :goto_0

    .line 29
    :cond_1
    const-string/jumbo p0, "\u5426"

    .line 30
    :goto_0
    return-object p0
    .line 33
.end method

.method public final getFodQuickOpenValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean p0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 2
    if-nez p0, :cond_0

    .line 4
    const-string/jumbo p0, "\u65e0\u6b64\u529f\u80fd"

    .line 6
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p0

    .line 13
    const-string p1, "fod_quick_open"

    .line 14
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 18
    move-result p0

    .line 21
    if-ne p0, v1, :cond_1

    .line 22
    const-string/jumbo p0, "\u662f"

    .line 24
    goto :goto_0

    .line 27
    :cond_1
    const-string/jumbo p0, "\u5426"

    .line 28
    :goto_0
    return-object p0
    .line 31
.end method

.method public final getGxzwAnim(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean p0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 2
    const-string/jumbo v0, "\u65e0\u6b64\u529f\u80fd"

    .line 4
    if-eqz p0, :cond_4

    .line 7
    sget-boolean p0, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    .line 9
    if-eqz p0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object p0

    .line 17
    const/4 p1, 0x6

    .line 18
    const/4 v1, 0x0

    .line 19
    const-string v2, "fod_animation_type"

    .line 20
    invoke-static {p0, v2, p1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 22
    move-result p0

    .line 25
    if-eqz p0, :cond_3

    .line 26
    packed-switch p0, :pswitch_data_0

    .line 28
    goto :goto_0

    .line 31
    :pswitch_0
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 32
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    const-string/jumbo v0, "\u9e22\u5c3e"

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    const-string/jumbo v0, "\u8109\u51b2"

    .line 42
    goto :goto_0

    .line 45
    :pswitch_1
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 46
    move-result p0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    const-string/jumbo v0, "\u68a6\u5883"

    .line 52
    goto :goto_0

    .line 55
    :cond_2
    const-string/jumbo v0, "\u6781\u5149"

    .line 56
    goto :goto_0

    .line 59
    :pswitch_2
    const-string/jumbo v0, "\u661f\u5149"

    .line 60
    goto :goto_0

    .line 63
    :pswitch_3
    const-string/jumbo v0, "\u6d41\u5149"

    .line 64
    goto :goto_0

    .line 67
    :cond_3
    const-string/jumbo v0, "\u65e0\u52a8\u753b"

    .line 68
    :cond_4
    :goto_0
    return-object v0

    .line 71
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 72
.end method

.method public final getHideNotificationContentBeforeFaceUnlockValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, "face_unlock_success_show_message"

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 9
    move-result p0

    .line 12
    const/4 p1, 0x1

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    const-string/jumbo p0, "\u662f"

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo p0, "\u5426"

    .line 20
    :goto_0
    return-object p0
    .line 23
.end method

.method public final getLockscreenClockStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    const/4 v0, -0x2

    .line 7
    const-string/jumbo v1, "selected_keyguard_clock_position"

    .line 8
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 11
    move-result p0

    .line 14
    const/4 p1, 0x1

    .line 15
    const-string/jumbo v0, "\u6c34\u5e73\u5c45\u4e2d\u65f6\u949f"

    .line 16
    if-eq p0, p1, :cond_3

    .line 19
    const/4 p1, 0x2

    .line 21
    if-eq p0, p1, :cond_2

    .line 22
    const/4 p1, 0x3

    .line 24
    if-eq p0, p1, :cond_1

    .line 25
    const/4 p1, 0x4

    .line 27
    const-string/jumbo v1, "\u5de6\u4e0a\u89d2\u5927\u65f6\u949f"

    .line 28
    if-eq p0, p1, :cond_0

    .line 31
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 33
    if-eqz p0, :cond_0

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    move-object v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string/jumbo v0, "\u7ad6\u76f4\u65f6\u949f"

    .line 40
    goto :goto_0

    .line 43
    :cond_2
    const-string/jumbo v0, "\u5de6\u4e0a\u89d2\u65f6\u949f"

    .line 44
    :cond_3
    :goto_0
    return-object v0
    .line 47
.end method

.method public final getLockscreenWallpaperOpenValue()Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    const-string/jumbo p0, "\u662f"

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo p0, "\u5426"

    .line 20
    :goto_0
    return-object p0
    .line 23
.end method

.method public final getLunarCalendarValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const/4 p1, -0x2

    .line 6
    const-string/jumbo v0, "show_lunar_calendar"

    .line 7
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 11
    move-result p0

    .line 14
    const/4 p1, 0x1

    .line 15
    if-ne p0, p1, :cond_0

    .line 16
    move v1, p1

    .line 18
    :cond_0
    if-eqz v1, :cond_1

    .line 19
    const-string/jumbo p0, "\u662f"

    .line 21
    goto :goto_0

    .line 24
    :cond_1
    const-string/jumbo p0, "\u5426"

    .line 25
    :goto_0
    return-object p0
    .line 28
.end method

.method public final getOpenBlueUnlockValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Landroid/security/MiuiLockPatternUtils;

    .line 2
    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    .line 7
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    new-instance p0, Landroid/security/MiuiLockPatternUtils;

    .line 13
    invoke-direct {p0, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 32
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    const/4 p0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    :goto_0
    if-eqz p0, :cond_1

    .line 41
    const-string/jumbo p0, "\u662f"

    .line 43
    goto :goto_1

    .line 46
    :cond_1
    const-string/jumbo p0, "\u5426"

    .line 47
    :goto_1
    return-object p0
    .line 50
.end method

.method public final getOpenFaceUnlockValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->isHardwareDetected(Landroid/content/Context;)Z

    .line 2
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const-string p0, ""

    .line 8
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object p0

    .line 14
    const-string v0, "face_unlcok_apply_for_lock"

    .line 15
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 17
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {p0, v0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 22
    move-result p0

    .line 25
    if-ne p0, v2, :cond_1

    .line 26
    invoke-static {p1}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->hasEnrolledTemplates(Landroid/content/Context;)Z

    .line 28
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    const-string/jumbo p0, "\u662f"

    .line 34
    goto :goto_0

    .line 37
    :cond_1
    const-string/jumbo p0, "\u5426"

    .line 38
    :goto_0
    return-object p0
    .line 41
.end method

.method public final getOpenFingerprintUnlockAppValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/keyguard/event/KeyguardSettingsEvent;->access$isSupportFinger$cp()Z

    .line 2
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const-string/jumbo p0, "\u65e0\u6b64\u529f\u80fd"

    .line 8
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object p0

    .line 15
    const-string p1, "com_miui_applicatinlock_use_fingerprint_state"

    .line 16
    const/4 v0, 0x1

    .line 18
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 19
    move-result p0

    .line 22
    const/4 p1, 0x2

    .line 23
    if-ne p0, p1, :cond_1

    .line 24
    const-string/jumbo p0, "\u662f"

    .line 26
    goto :goto_0

    .line 29
    :cond_1
    const-string/jumbo p0, "\u5426"

    .line 30
    :goto_0
    return-object p0
    .line 33
.end method

.method public final getOpenFingerprintUnlockValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/keyguard/event/KeyguardSettingsEvent;->access$isSupportFinger$cp()Z

    .line 2
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const-string/jumbo p0, "\u65e0\u6b64\u529f\u80fd"

    .line 8
    return-object p0

    .line 11
    :cond_0
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 18
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 20
    if-eqz p0, :cond_1

    .line 22
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates()Z

    .line 24
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 33
    move-result-object p1

    .line 36
    const-string v0, "miui_keyguard"

    .line 37
    const/4 v1, 0x2

    .line 39
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 40
    move-result p1

    .line 43
    if-ne p1, v1, :cond_2

    .line 44
    if-eqz p0, :cond_2

    .line 46
    const-string/jumbo p0, "\u662f"

    .line 48
    goto :goto_1

    .line 51
    :cond_2
    const-string/jumbo p0, "\u5426"

    .line 52
    :goto_1
    return-object p0
    .line 55
.end method

.method public final getOpenVibrationSwitchValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-boolean p0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 2
    if-eqz p0, :cond_4

    .line 4
    sget-boolean p0, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    .line 6
    if-eqz p0, :cond_4

    .line 8
    const/16 p0, 0x9f

    .line 10
    const/16 v0, 0x9e

    .line 12
    const/16 v1, 0xa0

    .line 14
    const/16 v2, 0x9d

    .line 16
    filled-new-array {p0, v0, v1, v2}, [I

    .line 18
    move-result-object p0

    .line 21
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    .line 22
    const/4 v1, 0x1

    .line 24
    invoke-direct {v0, p1, v1}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    .line 25
    const/4 v2, 0x0

    .line 28
    move v3, v2

    .line 29
    :goto_0
    const/4 v4, 0x4

    .line 30
    if-ge v3, v4, :cond_1

    .line 31
    aget v4, p0, v3

    .line 33
    invoke-virtual {v0, v4}, Lmiui/util/HapticFeedbackUtil;->isSupportExtHapticFeedback(I)Z

    .line 35
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    move p0, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    move p0, v1

    .line 46
    :goto_1
    if-nez p0, :cond_2

    .line 47
    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 50
    move-result-object p0

    .line 53
    const-string p1, "gxzw_icon_vibrate_enable"

    .line 54
    invoke-static {p0, p1, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 56
    move-result p0

    .line 59
    if-ne p0, v1, :cond_3

    .line 60
    const-string/jumbo p0, "\u662f"

    .line 62
    goto :goto_3

    .line 65
    :cond_3
    const-string/jumbo p0, "\u5426"

    .line 66
    goto :goto_3

    .line 69
    :cond_4
    :goto_2
    const-string/jumbo p0, "\u65e0\u6b64\u529f\u80fd"

    .line 70
    :goto_3
    return-object p0
    .line 73
.end method

.method public final getOwnerInfoValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v0}, Lcom/android/keyguard/event/KeyguardSettingsEvent;->access$setMLockPatternUtils$cp(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 7
    invoke-static {}, Lcom/android/keyguard/event/KeyguardSettingsEvent;->access$getMLockPatternUtils$cp()Lcom/android/internal/widget/LockPatternUtils;

    .line 10
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 16
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 17
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    .line 21
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    invoke-direct {p0}, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion;->getOwnerInfo()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    const/4 p0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    :goto_0
    if-eqz p0, :cond_2

    .line 40
    const-string/jumbo p0, "\u662f"

    .line 42
    goto :goto_1

    .line 45
    :cond_2
    const-string/jumbo p0, "\u5426"

    .line 46
    :goto_1
    return-object p0
    .line 49
.end method

.method public final getPickupWakeupValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 7
    move-result v0

    .line 10
    const-string v1, "pick_up_gesture_wakeup_mode"

    .line 11
    invoke-static {p0, v1, p1, v0}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 13
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    const-string/jumbo p0, "\u662f"

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    const-string/jumbo p0, "\u5426"

    .line 23
    :goto_0
    return-object p0
    .line 26
.end method

.method public final getQuickCameraValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo p0, "support_edge_touch_volume"

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const-string/jumbo p0, "\u65e0\u6b64\u529f\u80fd"

    .line 12
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    move-result-object p0

    .line 19
    const-string/jumbo p1, "volumekey_launch_camera"

    .line 20
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 23
    move-result p0

    .line 26
    const/4 p1, 0x1

    .line 27
    if-ne p0, p1, :cond_1

    .line 28
    move v0, p1

    .line 30
    :cond_1
    if-eqz v0, :cond_2

    .line 31
    const-string/jumbo p0, "\u662f"

    .line 33
    goto :goto_0

    .line 36
    :cond_2
    const-string/jumbo p0, "\u5426"

    .line 37
    :goto_0
    return-object p0
    .line 40
.end method

.method public final getScreenOffTimeValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string/jumbo p1, "screen_off_timeout"

    .line 6
    const-wide/16 v0, 0x7530

    .line 9
    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 11
    move-result-wide p0

    .line 14
    const-wide/16 v0, 0x0

    .line 15
    cmp-long v0, p0, v0

    .line 17
    if-gtz v0, :cond_0

    .line 19
    const-string p0, ""

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    const-wide/32 v0, 0x7fffffff

    .line 24
    cmp-long v0, p0, v0

    .line 27
    if-nez v0, :cond_1

    .line 29
    const-string/jumbo p0, "\u6c38\u4e0d"

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    const-wide/32 v0, 0xea60

    .line 35
    cmp-long v0, p0, v0

    .line 38
    const/16 v1, 0x3e8

    .line 40
    if-gez v0, :cond_2

    .line 42
    int-to-long v0, v1

    .line 44
    div-long/2addr p0, v0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo p0, "\u79d2"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    int-to-long v0, v1

    .line 65
    div-long/2addr p0, v0

    .line 66
    const/16 v0, 0x3c

    .line 67
    int-to-long v0, v0

    .line 69
    div-long/2addr p0, v0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo p0, "\u5206\u949f"

    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 88
    :goto_0
    return-object p0
    .line 89
.end method

.method public final getSecureType()Ljava/lang/String;
    .locals 1

    .line 1
    const-class p0, Lcom/android/keyguard/KeyguardSecurityModel;

    .line 2
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardSecurityModel;

    .line 8
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 10
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 14
    move-result-object p0

    .line 17
    sget-object v0, Lcom/android/keyguard/event/KeyguardSettingsEvent$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 18
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    move-result p0

    .line 23
    aget p0, v0, p0

    .line 24
    const/4 v0, 0x1

    .line 26
    if-eq p0, v0, :cond_3

    .line 27
    const/4 v0, 0x2

    .line 29
    if-eq p0, v0, :cond_2

    .line 30
    const/4 v0, 0x3

    .line 32
    if-eq p0, v0, :cond_1

    .line 33
    const/4 v0, 0x4

    .line 35
    if-eq p0, v0, :cond_0

    .line 36
    const-string/jumbo p0, "\u5176\u5b83"

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    const-string/jumbo p0, "\u65e0\u5bc6\u7801"

    .line 42
    goto :goto_0

    .line 45
    :cond_1
    const-string/jumbo p0, "\u6df7\u5408"

    .line 46
    goto :goto_0

    .line 49
    :cond_2
    const-string/jumbo p0, "\u6570\u5b57"

    .line 50
    goto :goto_0

    .line 53
    :cond_3
    const-string/jumbo p0, "\u56fe\u6848"

    .line 54
    :goto_0
    return-object p0
    .line 57
.end method

.method public final getShowFingerprintAfterSleepValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean p0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 2
    if-nez p0, :cond_0

    .line 4
    const-string/jumbo p0, "\u65e0\u6b64\u529f\u80fd"

    .line 6
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p0

    .line 13
    const-string p1, "gxzw_icon_aod_show_enable"

    .line 14
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 18
    move-result p0

    .line 21
    if-ne p0, v1, :cond_1

    .line 22
    const-string/jumbo p0, "\u662f"

    .line 24
    goto :goto_0

    .line 27
    :cond_1
    const-string/jumbo p0, "\u5426"

    .line 28
    :goto_0
    return-object p0
    .line 31
.end method

.method public final getSideFingerprintUnlockWay(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean p0, Lcom/miui/utils/configs/MiuiConfigs;->BROAD_SIDE_FP:Z

    .line 2
    const-string/jumbo v0, "\u65e0\u6b64\u529f\u80fd"

    .line 4
    if-nez p0, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {}, Lcom/android/keyguard/event/KeyguardSettingsEvent;->access$getDEFAULT_FINGERPRINT_UNLOCK_TYPE$cp()I

    .line 14
    move-result p1

    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "fingerprint_unlock_type"

    .line 19
    invoke-static {p0, v2, p1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    move-result p0

    .line 24
    if-nez p0, :cond_1

    .line 25
    const-string/jumbo v0, "\u8f7b\u89e6\u89e3\u9501"

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x1

    .line 31
    if-ne p0, p1, :cond_2

    .line 32
    const-string/jumbo v0, "\u6309\u538b\u89e3\u9501"

    .line 34
    :cond_2
    :goto_0
    return-object v0
    .line 37
.end method

.method public final getSmartCoverUnlockValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object p0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    const v0, 0x1105006f

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 11
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    const-string/jumbo p0, "\u65e0\u6b64\u529f\u80fd"

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object p0

    .line 24
    const-string p1, "miui_smart_cover_mode"

    .line 25
    const/4 v0, 0x1

    .line 27
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 28
    move-result p0

    .line 31
    if-ne p0, v0, :cond_1

    .line 32
    const-string/jumbo p0, "\u662f"

    .line 34
    goto :goto_0

    .line 37
    :cond_1
    const-string/jumbo p0, "\u5426"

    .line 38
    :goto_0
    return-object p0
    .line 41
.end method

.method public final getStayKeyguardAfterFaceUnlockValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, "face_unlock_success_stay_screen"

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 9
    move-result p0

    .line 12
    const/4 p1, 0x1

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    const-string/jumbo p0, "\u662f"

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo p0, "\u5426"

    .line 20
    :goto_0
    return-object p0
    .line 23
.end method

.method public final getTemplateClockContentArea(ZLjava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p1, :cond_2

    .line 3
    const-string p1, "classic"

    .line 5
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    goto/16 :goto_0

    .line 13
    :cond_0
    if-eqz p3, :cond_1

    .line 15
    packed-switch p3, :pswitch_data_0

    .line 17
    packed-switch p3, :pswitch_data_1

    .line 20
    const-string/jumbo p1, "\u6e29\u5ea6"

    .line 23
    packed-switch p3, :pswitch_data_2

    .line 26
    packed-switch p3, :pswitch_data_3

    .line 29
    packed-switch p3, :pswitch_data_4

    .line 32
    const-string p1, "getClassicContentAreaStyle: invalid style "

    .line 35
    const-string p2, "KeyguardSettingsEvent"

    .line 37
    invoke-static {p1, p3, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    goto/16 :goto_0

    .line 42
    :pswitch_0
    const-string/jumbo p0, "\u519c\u5386\u5e74"

    .line 44
    goto/16 :goto_0

    .line 47
    :pswitch_1
    const-string/jumbo p0, "\u519c\u5386"

    .line 49
    goto/16 :goto_0

    .line 52
    :pswitch_2
    const-string/jumbo p0, "\u65e5\u671f4"

    .line 54
    goto/16 :goto_0

    .line 57
    :pswitch_3
    const-string/jumbo p0, "\u65e5\u671f3"

    .line 59
    goto/16 :goto_0

    .line 62
    :pswitch_4
    const-string/jumbo p0, "\u65e5"

    .line 64
    goto/16 :goto_0

    .line 67
    :pswitch_5
    const-string/jumbo p0, "\u6708"

    .line 69
    goto/16 :goto_0

    .line 72
    :pswitch_6
    const-string/jumbo p0, "\u5468"

    .line 74
    goto/16 :goto_0

    .line 77
    :pswitch_7
    const-string/jumbo p0, "\u65e5\u671f7"

    .line 79
    goto/16 :goto_0

    .line 82
    :pswitch_8
    const-string/jumbo p0, "\u65e5\u671f8"

    .line 84
    goto/16 :goto_0

    .line 87
    :pswitch_9
    const-string/jumbo p0, "\u65e5\u671f6"

    .line 89
    goto/16 :goto_0

    .line 92
    :pswitch_a
    const-string/jumbo p0, "\u65e5\u671f2"

    .line 94
    goto/16 :goto_0

    .line 97
    :pswitch_b
    const-string/jumbo p0, "\u65e5\u671f5"

    .line 99
    goto :goto_0

    .line 102
    :pswitch_c
    const-string/jumbo p0, "\u65e5\u671f1"

    .line 103
    goto :goto_0

    .line 106
    :pswitch_d
    const-string/jumbo p0, "\u4e2d\u6587\u5206"

    .line 107
    goto :goto_0

    .line 110
    :pswitch_e
    const-string/jumbo p0, "\u4e2d\u6587\u65f6"

    .line 111
    goto :goto_0

    .line 114
    :pswitch_f
    const-string/jumbo p0, "\u6570\u5b57\u5206"

    .line 115
    goto :goto_0

    .line 118
    :pswitch_10
    const-string/jumbo p0, "\u6570\u5b57\u65f6"

    .line 119
    goto :goto_0

    .line 122
    :pswitch_11
    const-string/jumbo p0, "\u4e2d\u6587\u65f6\u95f4"

    .line 123
    goto :goto_0

    .line 126
    :pswitch_12
    const-string/jumbo p0, "\u6570\u5b57\u65f6\u95f4"

    .line 127
    goto :goto_0

    .line 130
    :pswitch_13
    const-string/jumbo p0, "\u65e5\u51fa\u65e5\u843d"

    .line 131
    goto :goto_0

    .line 134
    :pswitch_14
    const-string/jumbo p0, "\u964d\u96e8\u6982\u7387"

    .line 135
    goto :goto_0

    .line 138
    :pswitch_15
    const-string/jumbo p0, "\u7a7a\u6c14\u8d28\u91cf"

    .line 139
    goto :goto_0

    .line 142
    :pswitch_16
    const-string/jumbo p0, "\u6c14\u538b"

    .line 143
    goto :goto_0

    .line 146
    :pswitch_17
    move-object p0, p1

    .line 147
    goto :goto_0

    .line 148
    :pswitch_18
    const-string/jumbo p0, "\u98ce"

    .line 149
    goto :goto_0

    .line 152
    :pswitch_19
    const-string/jumbo p0, "\u4f53\u611f"

    .line 153
    goto :goto_0

    .line 156
    :pswitch_1a
    const-string/jumbo p0, "\u7d2b\u5916\u7ebf"

    .line 157
    goto :goto_0

    .line 160
    :pswitch_1b
    const-string/jumbo p0, "\u6d3b\u52a8\u65f6\u957f"

    .line 161
    goto :goto_0

    .line 164
    :pswitch_1c
    const-string/jumbo p0, "\u6d3b\u529b\u6307\u6807"

    .line 165
    goto :goto_0

    .line 168
    :pswitch_1d
    const-string/jumbo p0, "\u7761\u7720"

    .line 169
    goto :goto_0

    .line 172
    :pswitch_1e
    const-string/jumbo p0, "\u6d3b\u52a8\u65f6\u957f_\u8fdb\u5ea6\u6761"

    .line 173
    goto :goto_0

    .line 176
    :pswitch_1f
    const-string/jumbo p0, "\u7ad9\u7acb"

    .line 177
    goto :goto_0

    .line 180
    :pswitch_20
    const-string/jumbo p0, "\u5361\u8def\u91cc_\u8fdb\u5ea6\u6761"

    .line 181
    goto :goto_0

    .line 184
    :pswitch_21
    const-string/jumbo p0, "\u5361\u8def\u91cc"

    .line 185
    goto :goto_0

    .line 188
    :pswitch_22
    const-string/jumbo p0, "\u6b65\u6570_\u8fdb\u5ea6\u6761"

    .line 189
    goto :goto_0

    .line 192
    :pswitch_23
    const-string/jumbo p0, "\u6b65\u6570"

    .line 193
    goto :goto_0

    .line 196
    :cond_1
    const-string/jumbo p0, "\u65e0"

    .line 197
    :cond_2
    :goto_0
    return-object p0

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 202
    :pswitch_data_1
    .packed-switch 0x12c
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 232
    :pswitch_data_2
    .packed-switch 0x190
        :pswitch_17
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 248
    :pswitch_data_3
    .packed-switch 0x195
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    .line 260
    :pswitch_data_4
    .packed-switch 0x1f4
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
    .line 274
.end method

.method public final getTemplateClockTimeStyle(ZLcom/miui/clock/module/ClockBean;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    goto/16 :goto_1

    .line 5
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move-object p1, p0

    .line 14
    :goto_0
    if-eqz p1, :cond_f

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 17
    move-result v0

    .line 20
    sparse-switch v0, :sswitch_data_0

    .line 21
    goto/16 :goto_1

    .line 24
    :sswitch_0
    const-string/jumbo v0, "rhombus"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    goto/16 :goto_1

    .line 35
    :cond_2
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 37
    move-result p1

    .line 40
    packed-switch p1, :pswitch_data_0

    .line 41
    goto/16 :goto_1

    .line 44
    :pswitch_0
    const-string/jumbo p0, "\u6837\u5f0fJ"

    .line 46
    goto/16 :goto_1

    .line 49
    :pswitch_1
    const-string/jumbo p0, "\u6837\u5f0fI"

    .line 51
    goto/16 :goto_1

    .line 54
    :pswitch_2
    const-string/jumbo p0, "\u6837\u5f0fH"

    .line 56
    goto/16 :goto_1

    .line 59
    :pswitch_3
    const-string/jumbo p0, "\u6837\u5f0fG"

    .line 61
    goto/16 :goto_1

    .line 64
    :pswitch_4
    const-string/jumbo p0, "\u6837\u5f0fF"

    .line 66
    goto/16 :goto_1

    .line 69
    :pswitch_5
    const-string/jumbo p0, "\u6837\u5f0fE"

    .line 71
    goto/16 :goto_1

    .line 74
    :pswitch_6
    const-string/jumbo p0, "\u6837\u5f0fD"

    .line 76
    goto/16 :goto_1

    .line 79
    :pswitch_7
    const-string/jumbo p0, "\u6837\u5f0fC"

    .line 81
    goto/16 :goto_1

    .line 84
    :pswitch_8
    const-string/jumbo p0, "\u6837\u5f0fB"

    .line 86
    goto/16 :goto_1

    .line 89
    :pswitch_9
    const-string/jumbo p0, "\u6837\u5f0fA"

    .line 91
    goto/16 :goto_1

    .line 94
    :sswitch_1
    const-string v0, "classic"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    move-result p1

    .line 101
    if-nez p1, :cond_3

    .line 102
    goto/16 :goto_1

    .line 104
    :cond_3
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->getClassicLine2()I

    .line 106
    move-result p1

    .line 109
    packed-switch p1, :pswitch_data_1

    .line 110
    goto/16 :goto_1

    .line 113
    :pswitch_a
    const-string/jumbo p0, "\u4e2d\u6587\u5206"

    .line 115
    goto/16 :goto_1

    .line 118
    :pswitch_b
    const-string/jumbo p0, "\u4e2d\u6587\u65f6"

    .line 120
    goto/16 :goto_1

    .line 123
    :pswitch_c
    const-string/jumbo p0, "\u6570\u5b57\u5206"

    .line 125
    goto/16 :goto_1

    .line 128
    :pswitch_d
    const-string/jumbo p0, "\u6570\u5b57\u65f6"

    .line 130
    goto/16 :goto_1

    .line 133
    :pswitch_e
    const-string/jumbo p0, "\u4e2d\u6587\u65f6\u95f4"

    .line 135
    goto/16 :goto_1

    .line 138
    :pswitch_f
    const-string/jumbo p0, "\u6570\u5b57\u65f6\u95f4"

    .line 140
    goto/16 :goto_1

    .line 143
    :sswitch_2
    const-string v0, "classic_plus"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result p1

    .line 150
    if-nez p1, :cond_4

    .line 151
    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->getClassicLine2()I

    .line 154
    move-result p1

    .line 157
    const/16 p2, 0x47

    .line 158
    if-eq p1, p2, :cond_6

    .line 160
    const/16 p2, 0x48

    .line 162
    if-eq p1, p2, :cond_5

    .line 164
    goto :goto_1

    .line 166
    :cond_5
    const-string/jumbo p0, "\u7ad6\u5411"

    .line 167
    goto :goto_1

    .line 170
    :cond_6
    const-string/jumbo p0, "\u6a2a\u5411"

    .line 171
    goto :goto_1

    .line 174
    :sswitch_3
    const-string v0, "magazine_c"

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result p1

    .line 180
    if-nez p1, :cond_7

    .line 181
    goto :goto_1

    .line 183
    :cond_7
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 184
    move-result p1

    .line 187
    const/4 p2, 0x5

    .line 188
    if-eq p1, p2, :cond_a

    .line 189
    const/4 p2, 0x6

    .line 191
    if-eq p1, p2, :cond_9

    .line 192
    const/4 p2, 0x7

    .line 194
    if-eq p1, p2, :cond_8

    .line 195
    goto :goto_1

    .line 197
    :cond_8
    const-string/jumbo p0, "\u6837\u5f0f3"

    .line 198
    goto :goto_1

    .line 201
    :cond_9
    const-string/jumbo p0, "\u6837\u5f0f2"

    .line 202
    goto :goto_1

    .line 205
    :cond_a
    const-string/jumbo p0, "\u6837\u5f0f1"

    .line 206
    goto :goto_1

    .line 209
    :sswitch_4
    const-string v0, "magazine_a"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    move-result p1

    .line 215
    if-nez p1, :cond_b

    .line 216
    goto :goto_1

    .line 218
    :cond_b
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 219
    move-result p1

    .line 222
    const/4 p2, 0x1

    .line 223
    if-eq p1, p2, :cond_e

    .line 224
    const/4 p2, 0x2

    .line 226
    if-eq p1, p2, :cond_d

    .line 227
    const/4 p2, 0x3

    .line 229
    if-eq p1, p2, :cond_c

    .line 230
    goto :goto_1

    .line 232
    :cond_c
    const-string/jumbo p0, "\u53f3"

    .line 233
    goto :goto_1

    .line 236
    :cond_d
    const-string/jumbo p0, "\u4e2d"

    .line 237
    goto :goto_1

    .line 240
    :cond_e
    const-string/jumbo p0, "\u5de6"

    .line 241
    :cond_f
    :goto_1
    return-object p0

    .line 244
    nop

    .line 245
    :sswitch_data_0
    .sparse-switch
        -0x21ccdd8a -> :sswitch_4
        -0x21ccdd88 -> :sswitch_3
        -0x4b66d9 -> :sswitch_2
        0x32e13892 -> :sswitch_1
        0x464d9f6c -> :sswitch_0
    .end sparse-switch

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 268
    :pswitch_data_1
    .packed-switch 0x12c
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
    .line 292
.end method

.method public final getTemplateDepthEffect(ZLjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    goto :goto_2

    .line 5
    :cond_0
    const-string/jumbo p1, "smart_frame"

    .line 6
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string/jumbo p1, "rhombus"

    .line 17
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 23
    :goto_0
    if-eqz p1, :cond_2

    .line 24
    goto :goto_2

    .line 26
    :cond_2
    if-nez p3, :cond_3

    .line 27
    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result p0

    .line 33
    const/4 p1, 0x2

    .line 34
    if-ne p0, p1, :cond_4

    .line 35
    const-string/jumbo p0, "\u662f"

    .line 37
    goto :goto_2

    .line 40
    :cond_4
    :goto_1
    const-string/jumbo p0, "\u5426"

    .line 41
    :goto_2
    return-object p0
    .line 44
.end method

.method public final getTemplateDigitalColorDifferent(ZLcom/miui/clock/module/ClockBean;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p1, :cond_3

    .line 3
    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object p1, p0

    .line 12
    :goto_0
    const-string/jumbo v0, "rhombus"

    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->isDiffHourMinuteColor()Z

    .line 23
    move-result p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    const-string/jumbo p0, "\u662f"

    .line 29
    goto :goto_1

    .line 32
    :cond_2
    const-string/jumbo p0, "\u5426"

    .line 33
    :cond_3
    :goto_1
    return-object p0
    .line 36
.end method

.method public final getTemplateFinePrintContent(ZLcom/miui/clock/module/ClockBean;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    goto/16 :goto_2

    .line 5
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move-object p1, p0

    .line 14
    :goto_0
    const-string v0, "classic"

    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    const/4 v0, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const-string v0, "classic_plus"

    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 30
    :goto_1
    const-string v1, "KeyguardSettingsEvent"

    .line 31
    if-eqz v0, :cond_c

    .line 33
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->getClassicLine1()I

    .line 35
    move-result p1

    .line 38
    const/16 p2, 0xb

    .line 39
    if-eq p1, p2, :cond_b

    .line 41
    const/16 p2, 0x1f4

    .line 43
    if-eq p1, p2, :cond_a

    .line 45
    const/16 p2, 0x1f6

    .line 47
    if-eq p1, p2, :cond_9

    .line 49
    const/16 p2, 0x1f8

    .line 51
    if-eq p1, p2, :cond_8

    .line 53
    const/16 p2, 0x1fc

    .line 55
    if-eq p1, p2, :cond_7

    .line 57
    const/16 p2, 0x64

    .line 59
    if-eq p1, p2, :cond_6

    .line 61
    const/16 p2, 0x65

    .line 63
    if-eq p1, p2, :cond_5

    .line 65
    const/16 p2, 0x190

    .line 67
    if-eq p1, p2, :cond_4

    .line 69
    const/16 p2, 0x191

    .line 71
    if-eq p1, p2, :cond_3

    .line 73
    packed-switch p1, :pswitch_data_0

    .line 75
    const-string p2, "getTemplateFinePrintContent: invalid text area style "

    .line 78
    invoke-static {p2, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    goto :goto_2

    .line 83
    :pswitch_0
    const-string/jumbo p0, "\u6e7f\u5ea6"

    .line 84
    goto :goto_2

    .line 87
    :pswitch_1
    const-string/jumbo p0, "\u98ce"

    .line 88
    goto :goto_2

    .line 91
    :pswitch_2
    const-string/jumbo p0, "\u4f53\u611f"

    .line 92
    goto :goto_2

    .line 95
    :pswitch_3
    const-string/jumbo p0, "\u7d2b\u5916\u7ebf"

    .line 96
    goto :goto_2

    .line 99
    :pswitch_4
    const-string/jumbo p0, "\u65e5\u51fa\u65e5\u843d"

    .line 100
    goto :goto_2

    .line 103
    :cond_3
    const-string/jumbo p0, "\u7a7a\u6c14\u8d28\u91cf"

    .line 104
    goto :goto_2

    .line 107
    :cond_4
    const-string/jumbo p0, "\u6e29\u5ea6"

    .line 108
    goto :goto_2

    .line 111
    :cond_5
    const-string/jumbo p0, "\u519c\u5386"

    .line 112
    goto :goto_2

    .line 115
    :cond_6
    const-string/jumbo p0, "\u65e5\u671f"

    .line 116
    goto :goto_2

    .line 119
    :cond_7
    const-string/jumbo p0, "\u6d3b\u52a8\u65f6\u957f"

    .line 120
    goto :goto_2

    .line 123
    :cond_8
    const-string/jumbo p0, "\u7ad9\u7acb"

    .line 124
    goto :goto_2

    .line 127
    :cond_9
    const-string/jumbo p0, "\u5361\u8def\u91cc"

    .line 128
    goto :goto_2

    .line 131
    :cond_a
    const-string/jumbo p0, "\u6b65\u6570"

    .line 132
    goto :goto_2

    .line 135
    :cond_b
    const-string/jumbo p0, "\u8fd0\u8425\u5546"

    .line 136
    goto :goto_2

    .line 139
    :cond_c
    const-string p2, "getTemplateFinePrintContent: unsupported template "

    .line 140
    invoke-static {p2, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_2
    return-object p0

    .line 145
    :pswitch_data_0
    .packed-switch 0x194
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 146
.end method

.method public final getTemplateFrameStyle(ZLjava/lang/String;Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    if-nez p1, :cond_2

    .line 3
    const-string/jumbo p1, "smart_frame"

    .line 5
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    if-eqz p3, :cond_1

    .line 15
    invoke-virtual {p3}, Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;->getShape()I

    .line 17
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p0

    .line 24
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    :cond_2
    :goto_0
    return-object p0
    .line 29
.end method

.method public final getTemplateGlobalFont(ZLcom/miui/clock/module/ClockBean;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    goto :goto_2

    .line 5
    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    move-object p1, p0

    .line 13
    :goto_0
    const-string v0, "classic"

    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    const/4 p1, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const-string v0, "classic_plus"

    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 29
    :goto_1
    if-eqz p1, :cond_3

    .line 30
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 32
    move-result p0

    .line 35
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    :cond_3
    :goto_2
    return-object p0
    .line 40
.end method

.method public final getTemplateHasSignature(ZLcom/miui/clock/module/ClockBean;Lcom/miui/lockscreeninfo/model/SignatureInfo;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    goto/16 :goto_6

    .line 5
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move-object p1, p0

    .line 14
    :goto_0
    if-eqz p1, :cond_9

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 17
    move-result v0

    .line 20
    const-string/jumbo v1, "\u662f"

    .line 21
    const-string/jumbo v2, "\u5426"

    .line 24
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    sparse-switch v0, :sswitch_data_0

    .line 29
    goto :goto_6

    .line 32
    :sswitch_0
    const-string p3, "classic"

    .line 33
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    goto :goto_6

    .line 41
    :cond_2
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockBean;->getClassicSignature()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    if-eqz p0, :cond_4

    .line 46
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 48
    move-result p0

    .line 51
    if-lez p0, :cond_3

    .line 52
    move p0, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move p0, v4

    .line 56
    :goto_1
    if-ne p0, v3, :cond_4

    .line 57
    goto :goto_2

    .line 59
    :cond_4
    move v3, v4

    .line 60
    :goto_2
    if-eqz v3, :cond_8

    .line 61
    goto :goto_5

    .line 63
    :sswitch_1
    const-string p2, "magazine_b"

    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result p1

    .line 69
    if-nez p1, :cond_5

    .line 70
    goto :goto_6

    .line 72
    :sswitch_2
    const-string p2, "magazine_a"

    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p1

    .line 78
    if-nez p1, :cond_5

    .line 79
    goto :goto_6

    .line 81
    :cond_5
    if-eqz p3, :cond_7

    .line 82
    iget-object p0, p3, Lcom/miui/lockscreeninfo/model/SignatureInfo;->content:Ljava/lang/String;

    .line 84
    if-eqz p0, :cond_7

    .line 86
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 88
    move-result p0

    .line 91
    if-lez p0, :cond_6

    .line 92
    move p0, v3

    .line 94
    goto :goto_3

    .line 95
    :cond_6
    move p0, v4

    .line 96
    :goto_3
    if-ne p0, v3, :cond_7

    .line 97
    goto :goto_4

    .line 99
    :cond_7
    move v3, v4

    .line 100
    :goto_4
    if-eqz v3, :cond_8

    .line 101
    :goto_5
    move-object p0, v1

    .line 103
    goto :goto_6

    .line 104
    :cond_8
    move-object p0, v2

    .line 105
    :cond_9
    :goto_6
    return-object p0

    .line 106
    nop

    .line 107
    :sswitch_data_0
    .sparse-switch
        -0x21ccdd8a -> :sswitch_2
        -0x21ccdd89 -> :sswitch_1
        0x32e13892 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getTemplateName(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const-string/jumbo p0, "\u4e3b\u9898"

    .line 4
    goto/16 :goto_1

    .line 7
    :cond_0
    if-eqz p2, :cond_9

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 11
    move-result p0

    .line 14
    sparse-switch p0, :sswitch_data_0

    .line 15
    goto/16 :goto_0

    .line 18
    :sswitch_0
    const-string/jumbo p0, "rhombus"

    .line 20
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    const-string/jumbo p0, "\u83f1\u5f62\u65f6\u95f4\u6a21\u7248"

    .line 30
    goto/16 :goto_1

    .line 33
    :sswitch_1
    const-string p0, "classic"

    .line 35
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p0

    .line 40
    if-nez p0, :cond_2

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    const-string/jumbo p0, "\u7ecf\u5178\u9501\u5c4f\u6a21\u7248"

    .line 44
    goto :goto_1

    .line 47
    :sswitch_2
    const-string p0, "classic_plus"

    .line 48
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p0

    .line 53
    if-nez p0, :cond_3

    .line 54
    goto :goto_0

    .line 56
    :cond_3
    const-string/jumbo p0, "\u7ecf\u5178\u9501\u5c4fplus\u6a21\u7248"

    .line 57
    goto :goto_1

    .line 60
    :sswitch_3
    const-string/jumbo p0, "smart_frame"

    .line 61
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result p0

    .line 67
    if-nez p0, :cond_4

    .line 68
    goto :goto_0

    .line 70
    :cond_4
    const-string/jumbo p0, "\u753b\u6846\u6a21\u7248"

    .line 71
    goto :goto_1

    .line 74
    :sswitch_4
    const-string p0, "magazine_c"

    .line 75
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p0

    .line 80
    if-nez p0, :cond_5

    .line 81
    goto :goto_0

    .line 83
    :cond_5
    const-string/jumbo p0, "\u5f71\u50cf\u6742\u5fd7C\u9501\u5c4f\u6a21\u7248"

    .line 84
    goto :goto_1

    .line 87
    :sswitch_5
    const-string p0, "magazine_b"

    .line 88
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result p0

    .line 93
    if-nez p0, :cond_6

    .line 94
    goto :goto_0

    .line 96
    :cond_6
    const-string/jumbo p0, "\u5f71\u50cf\u6742\u5fd7B\u9501\u5c4f\u6a21\u7248"

    .line 97
    goto :goto_1

    .line 100
    :sswitch_6
    const-string p0, "magazine_a"

    .line 101
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p0

    .line 106
    if-nez p0, :cond_7

    .line 107
    goto :goto_0

    .line 109
    :cond_7
    const-string/jumbo p0, "\u5f71\u50cf\u6742\u5fd7A\u9501\u5c4f\u6a21\u7248"

    .line 110
    goto :goto_1

    .line 113
    :sswitch_7
    const-string p0, "doodle"

    .line 114
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result p0

    .line 119
    if-nez p0, :cond_8

    .line 120
    goto :goto_0

    .line 122
    :cond_8
    const-string/jumbo p0, "\u6d82\u9e26\u6a21\u7248"

    .line 123
    goto :goto_1

    .line 126
    :cond_9
    :goto_0
    const-string p0, "getTemplateName: invalid templateId "

    .line 127
    const-string p1, "KeyguardSettingsEvent"

    .line 129
    invoke-static {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo p0, "\u65e0\u6548\u6a21\u677f"

    .line 134
    :goto_1
    return-object p0

    .line 137
    :sswitch_data_0
    .sparse-switch
        -0x4f0b36e7 -> :sswitch_7
        -0x21ccdd8a -> :sswitch_6
        -0x21ccdd89 -> :sswitch_5
        -0x21ccdd88 -> :sswitch_4
        -0x9889889 -> :sswitch_3
        -0x4b66d9 -> :sswitch_2
        0x32e13892 -> :sswitch_1
        0x464d9f6c -> :sswitch_0
    .end sparse-switch
    .line 138
.end method

.method public final getTemplateTextureEffect(ZLjava/lang/String;ILjava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    return-object p0

    .line 5
    :cond_0
    const-string p1, "doodle"

    .line 6
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-nez p1, :cond_f

    .line 12
    if-eqz p3, :cond_e

    .line 14
    const/4 p1, 0x1

    .line 16
    const-string p2, "KeyguardSettingsEvent"

    .line 17
    if-eq p3, p1, :cond_3

    .line 19
    const/4 p1, 0x2

    .line 21
    if-eq p3, p1, :cond_e

    .line 22
    const/4 p1, 0x3

    .line 24
    if-eq p3, p1, :cond_2

    .line 25
    const/4 p1, 0x4

    .line 27
    if-eq p3, p1, :cond_1

    .line 28
    const-string p1, "getTemplateTextureEffect: invalid effectType "

    .line 30
    invoke-static {p1, p3, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 32
    goto/16 :goto_5

    .line 35
    :cond_1
    const-string/jumbo p0, "\u65b9\u683c\u73bb\u7483"

    .line 37
    goto/16 :goto_5

    .line 40
    :cond_2
    const-string/jumbo p0, "\u6a21\u7cca\u6548\u679c"

    .line 42
    goto :goto_5

    .line 45
    :cond_3
    if-nez p4, :cond_4

    .line 46
    goto :goto_0

    .line 48
    :cond_4
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 49
    move-result p1

    .line 52
    const/16 p3, 0x2710

    .line 53
    if-ne p1, p3, :cond_5

    .line 55
    const-string/jumbo p0, "\u7ad6\u6761\u73bb\u74831"

    .line 57
    goto :goto_5

    .line 60
    :cond_5
    :goto_0
    if-nez p4, :cond_6

    .line 61
    goto :goto_1

    .line 63
    :cond_6
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 64
    move-result p1

    .line 67
    const/16 p3, 0x2711

    .line 68
    if-ne p1, p3, :cond_7

    .line 70
    const-string/jumbo p0, "\u7ad6\u6761\u73bb\u74832"

    .line 72
    goto :goto_5

    .line 75
    :cond_7
    :goto_1
    if-nez p4, :cond_8

    .line 76
    goto :goto_2

    .line 78
    :cond_8
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 79
    move-result p1

    .line 82
    const/16 p3, 0x2712

    .line 83
    if-ne p1, p3, :cond_9

    .line 85
    const-string/jumbo p0, "\u7ad6\u6761\u73bb\u74833"

    .line 87
    goto :goto_5

    .line 90
    :cond_9
    :goto_2
    if-nez p4, :cond_a

    .line 91
    goto :goto_3

    .line 93
    :cond_a
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 94
    move-result p1

    .line 97
    const/16 p3, 0x2713

    .line 98
    if-ne p1, p3, :cond_b

    .line 100
    const-string/jumbo p0, "\u7ad6\u6761\u73bb\u74834"

    .line 102
    goto :goto_5

    .line 105
    :cond_b
    :goto_3
    if-nez p4, :cond_c

    .line 106
    goto :goto_4

    .line 108
    :cond_c
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 109
    move-result p1

    .line 112
    const/16 p3, 0x2714

    .line 113
    if-ne p1, p3, :cond_d

    .line 115
    const-string/jumbo p0, "\u7ad6\u6761\u73bb\u74835"

    .line 117
    goto :goto_5

    .line 120
    :cond_d
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 121
    const-string p3, "getTemplateTextureEffect: invalid magicType "

    .line 123
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 134
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    goto :goto_5

    .line 138
    :cond_e
    const-string/jumbo p0, "\u65e0\u6548\u679c"

    .line 139
    :cond_f
    :goto_5
    return-object p0
    .line 142
.end method

.method public final getTemplateTimeEffectState(ZLjava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    goto :goto_1

    .line 5
    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result p1

    .line 11
    sparse-switch p1, :sswitch_data_0

    .line 12
    goto :goto_0

    .line 15
    :sswitch_0
    const-string/jumbo p1, "smart_frame"

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 22
    if-nez p1, :cond_3

    .line 23
    goto :goto_0

    .line 25
    :sswitch_1
    const-string p1, "magazine_b"

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 31
    if-nez p1, :cond_3

    .line 32
    goto :goto_0

    .line 34
    :sswitch_2
    const-string p1, "magazine_a"

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p1

    .line 40
    if-nez p1, :cond_3

    .line 41
    goto :goto_0

    .line 43
    :sswitch_3
    const-string p1, "doodle"

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    move-result p0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    const-string/jumbo p0, "\u662f"

    .line 61
    goto :goto_1

    .line 64
    :cond_2
    const-string/jumbo p0, "\u5426"

    .line 65
    :cond_3
    :goto_1
    return-object p0

    .line 68
    nop

    .line 69
    :sswitch_data_0
    .sparse-switch
        -0x4f0b36e7 -> :sswitch_3
        -0x21ccdd8a -> :sswitch_2
        -0x21ccdd89 -> :sswitch_1
        -0x9889889 -> :sswitch_0
    .end sparse-switch
    .line 70
.end method
