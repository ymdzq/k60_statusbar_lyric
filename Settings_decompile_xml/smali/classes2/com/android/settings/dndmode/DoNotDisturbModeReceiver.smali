.class public Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DoNotDisturbModeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getAlarmEndTime(Landroid/content/Context;)J
    .locals 0

    .line 127
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result p0

    .line 126
    invoke-static {p0}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->getAlarmTimeInMillis(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private getAlarmStartTime(Landroid/content/Context;)J
    .locals 0

    .line 119
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result p0

    .line 118
    invoke-static {p0}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->getAlarmTimeInMillis(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private isEffective(Landroid/content/Context;)Z
    .locals 4

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 83
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 84
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getQuietRepeatType(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x4f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 p0, 0x7f

    if-eq v0, p0, :cond_0

    .line 95
    new-instance p0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    .line 96
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getQuietRepeatType(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;-><init>(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->isAlarmDay()Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_0
    return v3

    .line 89
    :cond_1
    invoke-static {p0}, Lcom/android/settings/dndmode/HolidayHelper;->isWeekEnd(Ljava/util/Calendar;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method private isEffectiveTurnOff(Landroid/content/Context;)Z
    .locals 2

    .line 106
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->getNextAutoStartTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->isEffective(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 21
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.action.TIME_SET"

    if-nez v1, :cond_4

    .line 28
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.android.settings.dndm.AUTO_TIME_TURN_ON"

    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 62
    invoke-static {p1}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->isInDoNotDisturbModeTimeNow(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->isEffective(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x1

    .line 64
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;ZI)V

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->getAlarmStartTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setNextAutoStartTime(Landroid/content/Context;J)V

    goto :goto_1

    :cond_2
    const-string v0, "com.android.settings.dndm.AUTO_TIME_TURN_OFF"

    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 69
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 70
    invoke-static {p1}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->isInDoNotDisturbModeTimeNow(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->isEffectiveTurnOff(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 72
    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;ZI)V

    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;->getAlarmEndTime(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setNextAutoEndTime(Landroid/content/Context;J)V

    .line 76
    :cond_3
    invoke-static {p1}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->startAutoTime(Landroid/content/Context;)V

    goto :goto_1

    .line 29
    :cond_4
    :goto_0
    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 31
    invoke-static {p1}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->startAutoTime(Landroid/content/Context;)V

    .line 54
    :cond_5
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    const-wide/16 v0, 0x0

    .line 56
    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setNextAutoStartTime(Landroid/content/Context;J)V

    .line 57
    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setNextAutoEndTime(Landroid/content/Context;J)V

    :cond_7
    :goto_1
    return-void
.end method
