.class public Lcom/android/settings/utils/StatusBarUtils;
.super Ljava/lang/Object;
.source "StatusBarUtils.java"


# static fields
.field public static final IS_CUST_SINGLE_SIM:Z

.field public static final IS_LM_CR:Z

.field public static final IS_MX_TELCEL:Z

.field public static final IS_NOTCH:Z

.field public static final IS_SUPPORT_HIGH_PRIORITY:Z

.field public static final IS_SUPPORT_LED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string/jumbo v0, "ro.miui.notch"

    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/utils/StatusBarUtils;->IS_NOTCH:Z

    const-string/jumbo v0, "ro.miui.singlesim"

    .line 21
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/settings/utils/StatusBarUtils;->IS_CUST_SINGLE_SIM:Z

    const-string/jumbo v0, "mx_telcel"

    const-string/jumbo v3, "ro.miui.customized.region"

    const-string v4, ""

    .line 23
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/utils/StatusBarUtils;->IS_MX_TELCEL:Z

    const-string v0, "lm_cr"

    .line 24
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/utils/StatusBarUtils;->IS_LM_CR:Z

    .line 25
    sput-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_SUPPORT_HIGH_PRIORITY:Z

    const-string/jumbo v0, "support_led_light"

    .line 26
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/utils/StatusBarUtils;->IS_SUPPORT_LED:Z

    return-void
.end method

.method public static getLockScreenAllowTrivialControls(Landroid/content/Context;)I
    .locals 3

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "lockscreen_allow_trivial_controls"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getLockScreenSmartDeviceControl(Landroid/content/Context;)I
    .locals 2

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lockscreen_smart_device_control"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getNotificationShadeShortcut(Landroid/content/Context;)I
    .locals 2

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "status_bar_notification_shade_shortcut"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getNotificationStyle(Landroid/content/Context;)I
    .locals 2

    .line 94
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "status_bar_notification_style"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSmartDeviceControl(Landroid/content/Context;)I
    .locals 3

    .line 203
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 204
    invoke-static {p0}, Lcom/android/settings/utils/Utils;->checkDeviceCenterAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/utils/Utils;->checkNewDeviceCenterEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 207
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "smart_device_control"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getUserAggregate(Landroid/content/Context;)I
    .locals 2

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_aggregate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isExpandableUnderLockscreen(Landroid/content/Context;)Z
    .locals 3

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "expandable_under_lock_screen"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isForceUseControlPanel(Landroid/content/Context;)Z
    .locals 2

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "force_use_control_panel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isMiSmartHub(Landroid/content/Context;)Z
    .locals 2

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "mi_smart_hub_visible"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isMiSmartHubVisible(Landroid/content/Context;)Z
    .locals 2

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "mi_smart_hub_visible"

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    div-int/2addr p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMiSmartPlay(Landroid/content/Context;)Z
    .locals 2

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "mi_smart_play_visible"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isMiuiOptimizationOff(Landroid/content/Context;)Z
    .locals 2

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "miui_optimization"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isQuickControlAllDevicesOn(Landroid/content/Context;)Z
    .locals 2

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "quick_control_all_devices"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isShowFoldFooterIcons(Landroid/content/Context;)Z
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fold_footer_icons"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportFocus(Landroid/content/Context;)Z
    .locals 2

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "notification_focus_protocol"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isUseControlPanel(Landroid/content/Context;)Z
    .locals 3

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$integer;->use_control_panel_setting_default:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const-string/jumbo v1, "use_control_panel"

    const/4 v2, 0x0

    .line 107
    invoke-static {v0, v1, p0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method public static isUserAggregate(Landroid/content/Context;)Z
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_aggregate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isUserFold(Landroid/content/Context;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUserOwner()Z
    .locals 1

    .line 194
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

.method public static isWordlessMode(Landroid/content/Context;)Z
    .locals 3

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wordless_mode"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static noControlCenter()Z
    .locals 1

    .line 118
    sget-boolean v0, Lcom/android/settings/utils/Utils;->MIUI_LITE_V2:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/utils/Utils;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setDeviceControl(Landroid/content/Context;Z)V
    .locals 6

    .line 231
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_8

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 237
    :goto_0
    invoke-static {p0, v3}, Lcom/android/settings/utils/StatusBarUtils;->setSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    move v1, v2

    .line 236
    :cond_3
    invoke-static {p0, v1}, Lcom/android/settings/utils/StatusBarUtils;->setSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    move v1, v2

    .line 235
    :cond_5
    invoke-static {p0, v1}, Lcom/android/settings/utils/StatusBarUtils;->setSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move v3, v4

    .line 234
    :goto_1
    invoke-static {p0, v3}, Lcom/android/settings/utils/StatusBarUtils;->setSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_9

    move v1, v2

    .line 233
    :cond_9
    invoke-static {p0, v1}, Lcom/android/settings/utils/StatusBarUtils;->setSmartDeviceControl(Landroid/content/Context;I)V

    :goto_2
    return-void
.end method

.method public static setExpandableUnderLockscreen(Landroid/content/Context;I)V
    .locals 2

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "expandable_under_lock_screen"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setLockScreenAllowTrivialControls(Landroid/content/Context;I)V
    .locals 2

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lockscreen_allow_trivial_controls"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setLockScreenDeviceControl(Landroid/content/Context;Z)V
    .locals 5

    .line 287
    invoke-static {p0}, Lcom/android/settings/utils/Utils;->checkNewDeviceCenterEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-static {p0, p1}, Lcom/android/settings/utils/StatusBarUtils;->setLockScreenSmartDeviceControl(Landroid/content/Context;I)V

    return-void

    .line 291
    :cond_0
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getLockScreenSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_7

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    move v1, v2

    .line 296
    :cond_2
    invoke-static {p0, v1}, Lcom/android/settings/utils/StatusBarUtils;->setLockScreenSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    move v3, v4

    .line 295
    :cond_4
    invoke-static {p0, v3}, Lcom/android/settings/utils/StatusBarUtils;->setLockScreenSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    move v3, v4

    .line 294
    :cond_6
    invoke-static {p0, v3}, Lcom/android/settings/utils/StatusBarUtils;->setLockScreenSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    move v1, v2

    .line 293
    :cond_8
    invoke-static {p0, v1}, Lcom/android/settings/utils/StatusBarUtils;->setLockScreenSmartDeviceControl(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public static setLockScreenSmartDeviceControl(Landroid/content/Context;I)V
    .locals 2

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lockscreen_smart_device_control"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setLockScreenXiaomiSmartHub(Landroid/content/Context;Z)V
    .locals 5

    .line 304
    invoke-static {p0}, Lcom/android/settings/utils/Utils;->checkNewDeviceCenterEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-static {p0, p1}, Lcom/android/settings/utils/StatusBarUtils;->setLockScreenSmartDeviceControl(Landroid/content/Context;I)V

    return-void

    .line 308
    :cond_0
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getLockScreenSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_7

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    move v3, v4

    .line 313
    :cond_2
    invoke-static {p0, v3}, Lcom/android/settings/utils/StatusBarUtils;->setLockScreenSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    move v1, v2

    .line 312
    :cond_4
    invoke-static {p0, v1}, Lcom/android/settings/utils/StatusBarUtils;->setLockScreenSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    move v3, v4

    .line 311
    :cond_6
    invoke-static {p0, v3}, Lcom/android/settings/utils/StatusBarUtils;->setLockScreenSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    move v1, v2

    .line 310
    :cond_8
    invoke-static {p0, v1}, Lcom/android/settings/utils/StatusBarUtils;->setLockScreenSmartDeviceControl(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public static setMiSmartHub(Landroid/content/Context;I)V
    .locals 1

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "mi_smart_hub_visible"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setMiSmartPlay(Landroid/content/Context;I)V
    .locals 1

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "mi_smart_play_visible"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setNotificationShadeShortcut(Landroid/content/Context;I)V
    .locals 1

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "status_bar_notification_shade_shortcut"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setNotificationStyle(Landroid/content/Context;I)V
    .locals 1

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "status_bar_notification_style"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setQuickControlAllDevices(Landroid/content/Context;Z)V
    .locals 2

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "quick_control_all_devices"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setShowFoldFooterIcons(Landroid/content/Context;Z)V
    .locals 1

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const-string v0, "fold_footer_icons"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSmartDeviceControl(Landroid/content/Context;I)V
    .locals 3

    .line 217
    invoke-static {p0}, Lcom/android/settings/utils/Utils;->checkNewDeviceCenterEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move p1, v1

    :cond_0
    if-ne v0, v1, :cond_1

    move p1, v2

    .line 224
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "smart_device_control"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setUseControlPanel(Landroid/content/Context;I)V
    .locals 2

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "use_control_panel"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setUserAggregate(Landroid/content/Context;I)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_aggregate"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setUserFold(Landroid/content/Context;Z)V
    .locals 1

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    const-string/jumbo v0, "user_fold"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setWordlessMode(Landroid/content/Context;Z)V
    .locals 2

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string/jumbo v1, "wordless_mode"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setXiaomiSmartHub(Landroid/content/Context;Z)V
    .locals 4

    .line 245
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->getSmartDeviceControl(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 251
    :goto_0
    invoke-static {p0, v1}, Lcom/android/settings/utils/StatusBarUtils;->setSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_2

    .line 250
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/utils/StatusBarUtils;->setSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 249
    :goto_1
    invoke-static {p0, v1}, Lcom/android/settings/utils/StatusBarUtils;->setSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_2

    .line 248
    :cond_5
    invoke-static {p0, p1}, Lcom/android/settings/utils/StatusBarUtils;->setSmartDeviceControl(Landroid/content/Context;I)V

    goto :goto_2

    .line 247
    :cond_6
    invoke-static {p0, p1}, Lcom/android/settings/utils/StatusBarUtils;->setSmartDeviceControl(Landroid/content/Context;I)V

    :goto_2
    return-void
.end method

.method public static useControlCenter(Landroid/content/Context;)Z
    .locals 1

    .line 122
    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/utils/StatusBarUtils;->isForceUseControlPanel(Landroid/content/Context;)Z

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
