.class public Lcom/android/settings/display/PaperModeTimeModeUtil;
.super Ljava/lang/Object;
.source "PaperModeTimeModeUtil.java"


# direct methods
.method public static cancleOnOffTime(Landroid/content/Context;)V
    .locals 6

    const-string v0, "alarm"

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 68
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "miui.intent.action.PAPER_MODE_ON"

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000000

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    .line 71
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 75
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "miui.intent.action.PAPER_MODE_OFF"

    .line 76
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 78
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 80
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static getAlarmInMills(I)J
    .locals 5

    .line 173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 174
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    .line 175
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, v4

    if-lt v2, p0, :cond_0

    const/4 v2, 0x6

    const/4 v4, 0x1

    .line 178
    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 180
    :cond_0
    div-int/lit8 v2, p0, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 181
    rem-int/lit8 p0, p0, 0x3c

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 183
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 184
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPaperModeEndTime(Landroid/content/Context;)I
    .locals 2

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_time_end"

    const/16 v1, 0x1a4

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPaperModeSchedulerType(Landroid/content/Context;)I
    .locals 2

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "paper_mode_scheduler_type"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPaperModeStartTime(Landroid/content/Context;)I
    .locals 2

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_time_start"

    const/16 v1, 0x474

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPaperModeTwilightSunriseTime(Landroid/content/Context;)I
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_twilight_start"

    const/16 v1, 0x168

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPaperModeTwilightSunsetTime(Landroid/content/Context;)I
    .locals 2

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_twilight_end"

    const/16 v1, 0x438

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isPaperModeTimeEnable(Landroid/content/Context;)Z
    .locals 2

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_time_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setPaperModeEnabled(ZLandroid/content/Context;)V
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setPaperModeEnabled OnOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaperModeTimeModeUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_paper_mode_enabled"

    invoke-static {p1, v0, p0}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setPaperModeEndTime(Landroid/content/Context;I)V
    .locals 1

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_time_end"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setPaperModeStartTime(Landroid/content/Context;I)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_time_start"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static setPaperModeTimeStartEndAlarm(Landroid/content/Context;JJ)V
    .locals 7

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPaperModeTimeStartEndAlarm startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " endTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaperModeTimeModeUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "alarm"

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 87
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "miui.intent.action.PAPER_MODE_ON"

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000000

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    .line 90
    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 93
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "miui.intent.action.PAPER_MODE_OFF"

    .line 94
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    invoke-static {p0, v3, v5, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 v2, 0x1

    .line 99
    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 100
    invoke-virtual {v0, v2, p3, p4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static setPaperModeTwilightSunriseTime(Landroid/content/Context;I)V
    .locals 1

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_twilight_start"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setPaperModeTwilightSunsetTime(Landroid/content/Context;I)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_mode_twilight_end"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static startPaperModeAutoTime(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 63
    invoke-static {p0, p1, v0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->startPaperModeAutoTime(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static startPaperModeAutoTime(Landroid/content/Context;IZ)V
    .locals 4

    .line 27
    invoke-static {p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->cancleOnOffTime(Landroid/content/Context;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 34
    invoke-static {p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeStartTime(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeTwilightSunsetTime(Landroid/content/Context;)I

    move-result v1

    :goto_0
    if-ne p1, v0, :cond_2

    .line 37
    invoke-static {p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeEndTime(Landroid/content/Context;)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getPaperModeTwilightSunriseTime(Landroid/content/Context;)I

    move-result v0

    :goto_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    if-ne v1, v0, :cond_3

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPaperModeAutoTime: illegal twilight time start --> "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "end --> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PaperModeTimeModeUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x168

    .line 44
    invoke-static {p0, v1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeTwilightSunriseTime(Landroid/content/Context;I)V

    const/16 v0, 0x438

    .line 45
    invoke-static {p0, v0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeTwilightSunsetTime(Landroid/content/Context;I)V

    :cond_3
    if-eqz p2, :cond_5

    .line 49
    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$ScreenEffect;->isInPaperModeTimeSchedule(Landroid/content/Context;II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 50
    invoke-static {v2, p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeEnabled(ZLandroid/content/Context;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 52
    invoke-static {p1, p0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeEnabled(ZLandroid/content/Context;)V

    :cond_5
    :goto_2
    if-eq v1, v0, :cond_6

    .line 57
    invoke-static {v1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getAlarmInMills(I)J

    move-result-wide p1

    invoke-static {v0}, Lcom/android/settings/display/PaperModeTimeModeUtil;->getAlarmInMills(I)J

    move-result-wide v0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/settings/display/PaperModeTimeModeUtil;->setPaperModeTimeStartEndAlarm(Landroid/content/Context;JJ)V

    :cond_6
    return-void
.end method
