.class public Lcom/android/settings/wifi/linkturbo/LinkTurboUtils;
.super Ljava/lang/Object;
.source "LinkTurboUtils.java"


# direct methods
.method public static getLinkTurboOptions(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "link_turbo_option"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getTimesMonthmorning()Ljava/util/Date;
    .locals 9

    .line 31
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v0, 0x1

    .line 32
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 33
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v0

    invoke-virtual {v7, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTimesMonthmorning()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinkTurboUtils"

    invoke-static {v1, v0}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getTimesmorning()Ljava/util/Date;
    .locals 3

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimesmorning()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LinkTurboUtils"

    invoke-static {v2, v1}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getUid(Landroid/content/Context;ILjava/lang/String;)I
    .locals 0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static hasInternetAccess(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAirPlaneModeOn(Landroid/content/Context;)Z
    .locals 2

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isTabletDeviceWithVolteCapability()Z
    .locals 2

    const-string v0, "clover"

    .line 122
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setLinkTurboOptions(Landroid/content/Context;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "link_turbo_option"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static shouldHideSmartDualSimButton(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$bool;->config_show_smart_sim:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    .line 108
    :cond_0
    invoke-static {p0}, Lcom/android/settings/wifi/linkturbo/LinkTurboUtils;->isAirPlaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 109
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustSingleSimDevice()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 110
    invoke-static {}, Lcom/android/settings/wifi/linkturbo/LinkTurboUtils;->isTabletDeviceWithVolteCapability()Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    .line 111
    :goto_1
    new-instance v4, Lcom/android/settings/msim/MSimUtils;

    invoke-direct {v4}, Lcom/android/settings/msim/MSimUtils;-><init>()V

    .line 112
    invoke-virtual {v4, p0}, Lcom/android/settings/msim/MSimUtils;->hasDualSim(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/android/settings/msim/MSimUtils;->isViceSlotActivated()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move p0, v3

    goto :goto_3

    :cond_4
    :goto_2
    move p0, v0

    .line 113
    :goto_3
    invoke-static {}, Lcom/android/settings/msim/MSimUtils;->isSmartDualSimSwitchSupported()Z

    move-result v4

    xor-int/2addr v4, v0

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-nez p0, :cond_6

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move v0, v3

    :cond_6
    :goto_4
    return v0
.end method
