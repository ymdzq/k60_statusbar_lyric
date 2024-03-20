.class public Lcom/android/settings/display/PaperModeSunTimeHelper;
.super Ljava/lang/Object;
.source "PaperModeSunTimeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;
    }
.end annotation


# direct methods
.method public static broadcastSunTime(Landroid/content/Context;Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;)V
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.intent.action.LOCATION_CHANGED"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sunrise"

    .line 83
    invoke-virtual {p1}, Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;->getSunrise()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "sunset"

    .line 84
    invoke-virtual {p1}, Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;->getSunset()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    .line 85
    invoke-virtual {p1}, Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;->getState()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 86
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static calculateTwilightTime(Landroid/location/Location;)Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;
    .locals 8

    .line 70
    new-instance v7, Lcom/android/settings/display/CaculateTwilightUtil;

    invoke-direct {v7}, Lcom/android/settings/display/CaculateTwilightUtil;-><init>()V

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 72
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    move-object v0, v7

    .line 71
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/display/CaculateTwilightUtil;->calculateTwilight(JDD)V

    .line 73
    new-instance p0, Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;

    iget v0, v7, Lcom/android/settings/display/CaculateTwilightUtil;->mSunrise:I

    iget v1, v7, Lcom/android/settings/display/CaculateTwilightUtil;->mSunset:I

    iget v2, v7, Lcom/android/settings/display/CaculateTwilightUtil;->mState:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;-><init>(III)V

    return-object p0
.end method

.method private static closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 116
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method private static formatToMinuteOfDay(J)I
    .locals 3

    const/4 v0, 0x0

    .line 124
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 126
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xb

    .line 127
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p1, 0xc

    .line 128
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move p0, v0

    .line 130
    :goto_0
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_1
    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p0, v0

    return p0
.end method

.method public static getSunTwilightTime(Landroid/content/Context;)Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;
    .locals 1

    .line 38
    invoke-static {p0}, Lcom/android/settings/display/PaperModeSunTimeHelper;->isLocationCity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_0
    invoke-static {p0}, Lcom/android/settings/display/PaperModeSunTimeHelper;->getTimeFromDB(Landroid/content/Context;)Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;

    move-result-object p0

    return-object p0
.end method

.method private static getTimeFromDB(Landroid/content/Context;)Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;
    .locals 10

    const-string/jumbo v0, "sunset"

    const-string/jumbo v1, "sunrise"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "content://weather/actualWeatherData"

    .line 47
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "2"

    .line 48
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "1"

    .line 49
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 p0, 0x2

    new-array v6, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object v1, v6, p0

    const/4 v3, 0x1

    aput-object v0, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 53
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 56
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v6, "PaperModeSunTimeHelper"

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTimeFromDB Success :sunrise="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",sunset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v6, Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;

    invoke-static {v4, v5}, Lcom/android/settings/display/PaperModeSunTimeHelper;->formatToMinuteOfDay(J)I

    move-result v4

    invoke-static {v0, v1}, Lcom/android/settings/display/PaperModeSunTimeHelper;->formatToMinuteOfDay(J)I

    move-result v0

    invoke-direct {v6, v4, v0, p0}, Lcom/android/settings/display/PaperModeSunTimeHelper$SunTime;-><init>(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    invoke-static {v3}, Lcom/android/settings/display/PaperModeSunTimeHelper;->closeCursor(Landroid/database/Cursor;)V

    return-object v6

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v3, v2

    .line 61
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    :cond_0
    invoke-static {v3}, Lcom/android/settings/display/PaperModeSunTimeHelper;->closeCursor(Landroid/database/Cursor;)V

    return-object v2

    :catchall_1
    move-exception p0

    move-object v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/settings/display/PaperModeSunTimeHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 64
    throw p0
.end method

.method private static isLocationCity(Landroid/content/Context;)Z
    .locals 10

    const-string v0, "flag"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "content://weather/selected_city"

    .line 99
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 p0, 0x1

    new-array v6, p0, [Ljava/lang/String;

    aput-object v0, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "position"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 102
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v0, :cond_0

    move v1, p0

    .line 109
    :cond_0
    invoke-static {v2}, Lcom/android/settings/display/PaperModeSunTimeHelper;->closeCursor(Landroid/database/Cursor;)V

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :cond_1
    invoke-static {v2}, Lcom/android/settings/display/PaperModeSunTimeHelper;->closeCursor(Landroid/database/Cursor;)V

    return v1

    :goto_0
    invoke-static {v2}, Lcom/android/settings/display/PaperModeSunTimeHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 110
    throw p0
.end method
