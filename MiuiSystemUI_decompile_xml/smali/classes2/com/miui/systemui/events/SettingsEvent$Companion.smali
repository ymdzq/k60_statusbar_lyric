.class public final Lcom/miui/systemui/events/SettingsEvent$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/systemui/events/SettingsEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBatteryIndicator(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, "battery_indicator_style"

    .line 6
    const/4 v0, 0x1

    .line 8
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    move-result p0

    .line 12
    if-eqz p0, :cond_2

    .line 13
    if-eq p0, v0, :cond_1

    .line 15
    const/4 p1, 0x2

    .line 17
    if-eq p0, p1, :cond_0

    .line 18
    const-string/jumbo p0, "unknown"

    .line 20
    return-object p0

    .line 23
    :cond_0
    const-string/jumbo p0, "top"

    .line 24
    return-object p0

    .line 27
    :cond_1
    const-string p0, "number"

    .line 28
    return-object p0

    .line 30
    :cond_2
    const-string p0, "graphic"

    .line 31
    return-object p0
    .line 33
.end method

.method public final getBucket(Landroid/content/Context;)I
    .locals 0

    .line 1
    const-string p0, "persist.sys.notification_rank"

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public final getCustomCarrierValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    sget-boolean p0, Lcom/miui/utils/configs/MiuiConfigs;->IS_CUST_SINGLE_SIM:Z

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    move p0, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    .line 13
    move-result p0

    .line 16
    :goto_0
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    move v3, v2

    .line 19
    :goto_1
    if-ge v1, p0, :cond_2

    .line 20
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    .line 22
    move-result-object v4

    .line 25
    invoke-virtual {v4, v1}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    .line 26
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    move-result-object v4

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v6, "status_bar_custom_carrier"

    .line 40
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 52
    const/4 v6, 0x0

    .line 53
    invoke-static {v4, v5, v6}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 57
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v4

    .line 61
    if-nez v4, :cond_1

    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 64
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 66
    goto :goto_1

    .line 68
    :cond_2
    if-eqz v2, :cond_5

    .line 69
    if-eq v2, v0, :cond_3

    .line 71
    const-string p0, "dual-2"

    .line 73
    goto :goto_2

    .line 75
    :cond_3
    if-ne v3, v0, :cond_4

    .line 76
    const-string/jumbo p0, "single-1"

    .line 78
    goto :goto_2

    .line 81
    :cond_4
    const-string p0, "dual-1"

    .line 82
    goto :goto_2

    .line 84
    :cond_5
    const-string p0, "none"

    .line 85
    :goto_2
    return-object p0
    .line 87
.end method

.method public final getExpandSelectedInfo(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, "control_center_expand_info_type"

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public final getExpandableUnderKeyguardValue(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getExpandableUnderLockscreen(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, "expandable_under_lock_screen"

    .line 6
    const/4 v0, 0x1

    .line 8
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public final getNotificationShortcut(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string/jumbo p1, "status_bar_notification_shade_shortcut"

    .line 6
    const/4 v0, 0x1

    .line 9
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 10
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    if-eq p0, v0, :cond_0

    .line 16
    const-string/jumbo p0, "unknown"

    .line 18
    return-object p0

    .line 21
    :cond_0
    const-string/jumbo p0, "settings"

    .line 22
    return-object p0

    .line 25
    :cond_1
    const-string p0, "search"

    .line 26
    return-object p0
    .line 28
.end method

.method public final getShowCarrierUnderKeyguardValue(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string/jumbo p1, "status_bar_show_carrier_under_keyguard"

    .line 6
    const/4 v0, 0x1

    .line 9
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public final getShowNetworkSpeedValue(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/MiuiStatusBarManager;->isShowNetworkSpeed(Landroid/content/Context;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getShowNotificationIconValue(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/MiuiStatusBarManager;->isShowNotificationIcon(Landroid/content/Context;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getToggleCollapseAfterClickedValue(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/app/MiuiStatusBarManager;->isCollapseAfterClicked(Landroid/content/Context;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getUseControlPanel(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p1

    .line 9
    const v0, 0x7f0b010d    # @integer/use_control_panel_setting_default '1'

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 13
    move-result p1

    .line 16
    const-string/jumbo v0, "use_control_panel"

    .line 17
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    move-result p0

    .line 23
    return p0
    .line 24
.end method

.method public final getUserAggregate(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    move-result-object p0

    .line 8
    const-string/jumbo p1, "user_aggregate"

    .line 9
    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public final getUserFold(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    move-result-object p0

    .line 8
    const-string/jumbo p1, "user_fold"

    .line 9
    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public final getWordlessMode(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    const-string/jumbo p1, "wordless_mode"

    .line 6
    const/4 v0, 0x1

    .line 9
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method
