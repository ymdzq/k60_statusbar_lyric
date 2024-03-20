.class public final Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# static fields
.field public static final APP_USAGE_EVENT_URI:Landroid/net/Uri;

.field public static final BATTERY_CONTENT_URI:Landroid/net/Uri;

.field public static final BATTERY_EVENT_URI:Landroid/net/Uri;

.field private static final CLEAR_MEMORY_DELAYED_MS:J

.field private static final CLEAR_MEMORY_THRESHOLD_MS:J

.field public static final USAGE_QUERY_BUFFER_HOURS:J

.field static sFakeSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$F9TM1wulJ9oNyjq3LeM700YJNRY(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJZLcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p10}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->lambda$sendBatteryEntryData$6(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJZLcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NB65qym5hjMseiuqJB2H1B2fiJk(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->lambda$clearAll$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QqdqaBTs-_1Usr1cfmRdVLzpJmo(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->lambda$getAppUsageEventForUsers$0(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R047aI9nJAWrogzeZ3PnTJzKATM(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->lambda$clearExpiredDataIfNeeded$2(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VQGHrZTHqtDASUJGTTGgI6jyP9k()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->lambda$clearMemory$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$V_07X3cbf84HN9P3XamG1Fgh1AI(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->lambda$sendAppUsageEventData$3(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pXd2wolzeWxVeZE4LikPEQ5Gv_8(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->lambda$sendBatteryEntryData$5(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yfe4KoMJWrOG8e0mOFMxZjHTr2U(Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->lambda$sendAppUsageEventData$4(Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, 0x5

    .line 58
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->CLEAR_MEMORY_THRESHOLD_MS:J

    const-wide/16 v0, 0x2

    .line 59
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->CLEAR_MEMORY_DELAYED_MS:J

    const-wide/16 v0, 0x3

    .line 87
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->USAGE_QUERY_BUFFER_HOURS:J

    .line 90
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 92
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "com.android.settings.battery.usage.provider"

    .line 93
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "AppUsageEvent"

    .line 94
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->APP_USAGE_EVENT_URI:Landroid/net/Uri;

    .line 97
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 99
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "BatteryEvent"

    .line 101
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_EVENT_URI:Landroid/net/Uri;

    .line 104
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 106
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "BatteryState"

    .line 108
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static clearAll(Landroid/content/Context;)V
    .locals 1

    .line 240
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static clearExpiredDataIfNeeded(Landroid/content/Context;)V
    .locals 1

    .line 255
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static clearMemory()V
    .locals 4

    .line 591
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->CLEAR_MEMORY_THRESHOLD_MS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    .line 594
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 595
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda5;-><init>()V

    sget-wide v2, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->CLEAR_MEMORY_DELAYED_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static dump(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "BatteryLevelChanged"

    const-string v1, "android.intent.action.BATTERY_LEVEL_CHANGED"

    .line 443
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->writeString(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BatteryPlugging"

    const-string v1, "com.android.settings.battery.action.ACTION_BATTERY_PLUGGING"

    .line 445
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->writeString(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BatteryUnplugging"

    const-string v1, "com.android.settings.battery.action.ACTION_BATTERY_UNPLUGGING"

    .line 447
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->writeString(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ClearBatteryCacheData"

    const-string v1, "com.android.settings.battery.action.CLEAR_BATTERY_CACHE_DATA"

    .line 449
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->writeString(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LastLoadFullChargeTime"

    const-string v1, "last_load_full_charge_time"

    .line 451
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->writeString(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LastUploadFullChargeTime"

    const-string v1, "last_upload_full_charge_time"

    .line 453
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->writeString(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getAppUsageEventForUsers(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/List;J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Calendar;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;J)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 155
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getTimestampSixDaysAgo(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 159
    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    sget-wide v4, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->USAGE_QUERY_BUFFER_HOURS:J

    sub-long/2addr p3, v4

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sixDayAgoTimestamp: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "DatabaseUtils"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda7;

    invoke-direct {p2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda7;-><init>()V

    .line 163
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string p2, ","

    .line 164
    invoke-static {p2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 166
    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    .line 168
    invoke-virtual {p2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v3, "com.android.settings.battery.usage.provider"

    .line 169
    invoke-virtual {p2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v3, "AppUsageEvent"

    .line 170
    invoke-virtual {p2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string/jumbo v3, "timestamp"

    .line 172
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    .line 171
    invoke-virtual {p2, v3, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string/jumbo p3, "userid"

    .line 173
    invoke-virtual {p2, p3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 174
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 177
    invoke-static {p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->loadAppUsageEventsFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;

    move-result-object p0

    .line 179
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getAppUsageEventForUser userId=%s size=%d in %d/ms"

    .line 178
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getAppUsageStartTimestampOfUser(Landroid/content/Context;JJ)J
    .locals 6

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 129
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    .line 131
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "com.android.settings.battery.usage.provider"

    .line 132
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "appUsageLatestTimestamp"

    .line 133
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "userid"

    .line 135
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 138
    invoke-static {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->loadAppUsageLatestTimestampFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    .line 139
    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getAppUsageStartTimestampOfUser() userId=%d latestTimestamp=%s in %d/ms"

    .line 140
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DatabaseUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x1

    add-long/2addr v2, p0

    .line 145
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getBatteryEvents(Landroid/content/Context;Ljava/util/Calendar;J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Calendar;",
            "J)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 190
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getTimestampSixDaysAgo(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 191
    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 192
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBatteryEvents for timestamp: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "DatabaseUtils"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    new-instance p3, Landroid/net/Uri$Builder;

    invoke-direct {p3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    .line 196
    invoke-virtual {p3, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    const-string v3, "com.android.settings.battery.usage.provider"

    .line 197
    invoke-virtual {p3, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    const-string v3, "BatteryEvent"

    .line 198
    invoke-virtual {p3, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    const-string/jumbo v3, "timestamp"

    .line 200
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p3, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 204
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->loadBatteryEventsFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;

    move-result-object p0

    .line 205
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getBatteryEvents size=%d in %d/ms"

    .line 205
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getHistoryMapSinceLastFullCharge(Landroid/content/Context;Ljava/util/Calendar;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 214
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getTimestampSixDaysAgo(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sixDayAgoTimestamp: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "DatabaseUtils"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    .line 220
    invoke-virtual {p1, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v5, "com.android.settings.battery.usage.provider"

    .line 221
    invoke-virtual {p1, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v5, "BatteryState"

    .line 222
    invoke-virtual {p1, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo v5, "timestamp"

    .line 224
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {p1, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 228
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->loadHistoryMapFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 229
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getHistoryMapSinceLastFullCharge() size=%d in %d/ms"

    .line 232
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "getHistoryMapSinceLastFullCharge() returns empty or null"

    .line 230
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p0
.end method

.method public static getParentContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    .line 284
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->isWorkProfile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    .line 289
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 290
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    .line 286
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context.createPackageContextAsUser() fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DatabaseUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "battery_usage_shared_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getTimestampSixDaysAgo(Ljava/util/Calendar;)J
    .locals 2

    if-nez p0, :cond_0

    .line 273
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    :goto_0
    const/4 v0, 0x6

    const/4 v1, -0x6

    .line 274
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 275
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 276
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 277
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 278
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 279
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isWorkProfile(Landroid/content/Context;)Z
    .locals 1

    .line 120
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 121
    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$clearAll$1(Landroid/content/Context;)V
    .locals 2

    .line 243
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->appUsageEventDao()Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao;->clearAll()V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryEventDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao;->clearAll()V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryStateDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao;->clearAll()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DatabaseUtils"

    const-string v1, "clearAll() failed"

    .line 248
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$clearExpiredDataIfNeeded$2(Landroid/content/Context;)V
    .locals 4

    .line 258
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    move-result-object p0

    .line 259
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const-wide/16 v2, 0x9

    .line 260
    invoke-static {v2, v3}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->appUsageEventDao()Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao;->clearAllBefore(J)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryEventDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao;->clearAllBefore(J)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryStateDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao;->clearAllBefore(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DatabaseUtils"

    const-string v1, "clearAllBefore() failed"

    .line 265
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$clearMemory$7()V
    .locals 2

    .line 596
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 597
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 598
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v0, "DatabaseUtils"

    const-string v1, "invoke clearMemory()"

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$getAppUsageEventForUsers$0(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$sendAppUsageEventData$3(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;)Z
    .locals 0

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->hasUid()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$sendAppUsageEventData$4(Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;)V
    .locals 0

    .line 307
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertAppUsageEventToContentValues(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;)Landroid/content/ContentValues;

    move-result-object p1

    .line 306
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$sendBatteryEntryData$5(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z
    .locals 11

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInForegroundMs()J

    move-result-wide v0

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInBackgroundMs()J

    move-result-wide v2

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    const-wide/16 v8, 0x0

    if-nez v4, :cond_1

    cmp-long v4, v0, v8

    if-nez v4, :cond_0

    cmp-long v4, v2, v8

    if-eqz v4, :cond_1

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v4, v5, v10}, [Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "no consumed power but has running time for %s time=%d|%d"

    .line 376
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DatabaseUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v4

    cmpl-double p0, v4, v6

    if-nez p0, :cond_3

    cmp-long p0, v0, v8

    if-nez p0, :cond_3

    cmp-long p0, v2, v8

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$sendBatteryEntryData$6(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJZLcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V
    .locals 10

    move-object/from16 v0, p10

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    .line 385
    invoke-static/range {v0 .. v9}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertBatteryEntryToContentValues(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;IIIJJZ)Landroid/content/ContentValues;

    move-result-object v0

    move-object v1, p0

    .line 384
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static loadAppUsageEventsFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;"
        }
    .end annotation

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 507
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getParentContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 511
    :cond_0
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->sFakeSupplier:Ljava/util/function/Supplier;

    if-eqz v1, :cond_1

    .line 512
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    .line 514
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    .line 518
    :cond_2
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 519
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertToAppUsageEventFromCursor(Landroid/database/Cursor;)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 522
    :cond_3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "DatabaseUtils"

    const-string v2, "cursor.close() failed"

    .line 524
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 511
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    :cond_4
    :goto_4
    if-eqz p0, :cond_5

    .line 526
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0
.end method

.method private static loadAppUsageLatestTimestampFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 6

    .line 484
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->sFakeSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    .line 485
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    const-wide/32 v0, -0x80000000

    if-eqz p0, :cond_3

    .line 488
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_4

    .line 491
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    .line 493
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v4, "DatabaseUtils"

    const-string v5, "cursor.close() failed"

    .line 497
    invoke-static {v4, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v0, v2

    .line 501
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :catchall_0
    move-exception p1

    .line 484
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    :cond_3
    :goto_4
    if-eqz p0, :cond_4

    .line 501
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-wide v0
.end method

.method private static loadBatteryEventsFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;",
            ">;"
        }
    .end annotation

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 533
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getParentContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 537
    :cond_0
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->sFakeSupplier:Ljava/util/function/Supplier;

    if-eqz v1, :cond_1

    .line 538
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    goto :goto_0

    .line 539
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    .line 540
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    .line 544
    :cond_2
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 545
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertToBatteryEventFromCursor(Landroid/database/Cursor;)Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 548
    :cond_3
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "DatabaseUtils"

    const-string v2, "cursor.close() failed"

    .line 550
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 552
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 537
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    :cond_4
    :goto_4
    if-eqz p0, :cond_5

    .line 552
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0
.end method

.method private static loadHistoryMapFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation

    .line 558
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getParentContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 562
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 563
    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->sFakeSupplier:Ljava/util/function/Supplier;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_5

    .line 565
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    .line 569
    :cond_2
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 570
    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Landroid/database/Cursor;)V

    .line 571
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTimestamp:J

    .line 572
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_3

    .line 576
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 577
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    :cond_3
    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 582
    :cond_4
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "DatabaseUtils"

    const-string v2, "cursor.close() failed"

    .line 584
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    .line 563
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    :cond_5
    :goto_4
    if-eqz p0, :cond_6

    .line 586
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v1
.end method

.method static recordDateTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 463
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 465
    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method static sendAppUsageEventData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 303
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 305
    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 306
    invoke-interface {p1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 311
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-string v3, "DatabaseUtils"

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 312
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/ContentValues;

    .line 313
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 315
    :try_start_0
    sget-object v5, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->APP_USAGE_EVENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v5, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v4

    const/4 p1, 0x0

    .line 316
    invoke-virtual {p0, v5, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string p0, "insert() app usage events data into database"

    .line 317
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bulkInsert() app usage data into database error:\n"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "sendAppUsageEventData() size=%d in %d/ms"

    .line 322
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->clearMemory()V

    return-object v2
.end method

.method static sendBatteryEntryData(Landroid/content/Context;Ljava/util/List;Landroid/os/BatteryUsageStats;Z)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;",
            "Landroid/os/BatteryUsageStats;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    move/from16 v12, p3

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 351
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getBatteryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v15, 0x0

    const-string v11, "DatabaseUtils"

    if-nez v0, :cond_0

    const-string/jumbo v0, "sendBatteryEntryData(): cannot fetch battery intent"

    .line 353
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->clearMemory()V

    return-object v15

    .line 357
    :cond_0
    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v16

    const-string/jumbo v1, "status"

    const/4 v9, 0x1

    .line 358
    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string v1, "health"

    .line 360
    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 363
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v18

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 367
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 369
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda2;-><init>()V

    .line 370
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, v10

    move-object/from16 v3, p2

    move/from16 v4, v16

    move/from16 v5, v17

    move v6, v0

    move-object v15, v7

    move-wide/from16 v22, v13

    move-object v13, v8

    move-wide/from16 v7, v20

    move v14, v9

    move-object/from16 p1, v10

    move-wide/from16 v9, v18

    move-object v14, v11

    move/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJZ)V

    .line 384
    invoke-interface {v15, v13}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    move-object/from16 p1, v10

    move-wide/from16 v22, v13

    move-object v14, v11

    .line 397
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 399
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 400
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v13, p1

    .line 401
    invoke-interface {v13, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 403
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 404
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert() battery states data into database with isFullChargeStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v9, 0x1

    .line 407
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bulkInsert() battery states data into database error:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move-object/from16 v13, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v0

    move-wide/from16 v6, v20

    move-wide/from16 v8, v18

    move/from16 v10, p3

    .line 412
    invoke-static/range {v1 .. v10}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertBatteryEntryToContentValues(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;IIIJJZ)Landroid/content/ContentValues;

    move-result-object v1

    .line 422
    :try_start_2
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert() data into database with isFullChargeStart:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert() data into database error:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_2
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    .line 431
    :goto_3
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 433
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v22

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "sendBatteryEntryData() size=%d in %d/ms"

    .line 432
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_3

    const-string v0, "last_upload_full_charge_time"

    move-object/from16 v1, p0

    .line 435
    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->recordDateTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 437
    :cond_3
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->clearMemory()V

    return-object v13
.end method

.method static sendBatteryEventData(Landroid/content/Context;Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;)Landroid/content/ContentValues;
    .locals 5

    const-string v0, "DatabaseUtils"

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 331
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertBatteryEventToContentValues(Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;)Landroid/content/ContentValues;

    move-result-object v3

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 334
    :try_start_0
    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->BATTERY_EVENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 335
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert() battery event data into database: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "insert() battery event data into database error:"

    .line 337
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "sendBatteryEventData() in %d/ms"

    .line 339
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->clearMemory()V

    return-object v3
.end method

.method private static writeString(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 473
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 475
    invoke-interface {p0, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "\t\t%s: %s"

    .line 476
    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
