.class public Lcom/android/settings/dndmode/DoNotDisturbModeUtils;
.super Ljava/lang/Object;
.source "DoNotDisturbModeUtils.java"


# static fields
.field private static MODE:Ljava/lang/String; = "mode"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static cancelAutoTime(Landroid/content/Context;)V
    .locals 5

    const-string v0, "AntiSpamUtils"

    const-string v1, "Cancel auto DNDM."

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.settings.dndm.AUTO_TIME_TURN_ON"

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    .line 143
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v4, "alarm"

    .line 144
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 145
    invoke-virtual {v4, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v3, "com.android.settings.dndm.AUTO_TIME_TURN_OFF"

    .line 146
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 148
    invoke-virtual {v4, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static formatTime(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 46
    div-int/lit8 v1, p1, 0x3c

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 47
    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 48
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    sget p1, Lcom/android/settings/R$string;->dndm_twenty_four_hour_time_format:I

    goto :goto_0

    .line 53
    :cond_0
    sget p1, Lcom/android/settings/R$string;->dndm_twelve_hour_time_format:I

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 57
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAlarmTimeInMillis(I)J
    .locals 5

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    .line 89
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, v4

    if-lt v2, p0, :cond_0

    const/4 v2, 0x6

    const/4 v4, 0x1

    .line 92
    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 94
    :cond_0
    div-int/lit8 v2, p0, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 95
    rem-int/lit8 p0, p0, 0x3c

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 v1, 0x0

    .line 96
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 97
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 98
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isInDoNotDisturbModeTimeNow(Landroid/content/Context;)Z
    .locals 4

    .line 107
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v0

    .line 108
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result p0

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    .line 111
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v2, v1

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-le v0, p0, :cond_0

    if-lt v2, p0, :cond_2

    if-ge v2, v0, :cond_2

    goto :goto_0

    :cond_0
    if-ge v0, p0, :cond_1

    if-lt v2, v0, :cond_1

    if-ge v2, p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :cond_2
    :goto_1
    return v1
.end method

.method public static sendAutoTimeTurnOnOff(Landroid/content/Context;)V
    .locals 4

    const-string v0, "AntiSpamUtils"

    const-string v1, "Start auto DNDM."

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v0

    .line 79
    invoke-static {v0}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->getAlarmTimeInMillis(I)J

    move-result-wide v0

    .line 82
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v2

    .line 81
    invoke-static {v2}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->getAlarmTimeInMillis(I)J

    move-result-wide v2

    .line 83
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->triggerStartEndAlarm(Landroid/content/Context;JJ)V

    return-void
.end method

.method public static startAutoTime(Landroid/content/Context;)V
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->cancelAutoTime(Landroid/content/Context;)V

    .line 103
    invoke-static {p0}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->sendAutoTimeTurnOnOff(Landroid/content/Context;)V

    return-void
.end method

.method public static startImportVipList(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.ADD_FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "vnd.android.cursor.item/firewall-blacklist"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    sget-object v1, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->MODE:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "numbers"

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static triggerStartEndAlarm(Landroid/content/Context;JJ)V
    .locals 6

    const-string v0, "alarm"

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.android.settings.dndm.AUTO_TIME_TURN_ON"

    .line 64
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    .line 65
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 68
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/dndmode/DoNotDisturbModeReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.android.settings.dndm.AUTO_TIME_TURN_OFF"

    .line 69
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-static {p0, v2, v4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 73
    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 74
    invoke-virtual {v0, v2, p3, p4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method
