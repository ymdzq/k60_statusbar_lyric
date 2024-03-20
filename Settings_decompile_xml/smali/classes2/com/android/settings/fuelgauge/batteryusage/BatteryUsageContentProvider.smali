.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;
.super Landroid/content/ContentProvider;
.source "BatteryUsageContentProvider.java"


# static fields
.field public static final QUERY_DURATION_HOURS:Ljava/time/Duration;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAppUsageEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao;

.field private mBatteryEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao;

.field private mBatteryStateDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao;

.field private mClock:Ljava/time/Clock;


# direct methods
.method public static synthetic $r8$lambda$GIZ8kfDQ4FGsQc1MEnYvlHwj8ts(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->lambda$getBatteryStates$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$WzCQOkcaYG7dz-OqEcE9getpr_E(Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->lambda$getQueryUserIds$1(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, 0x6

    .line 51
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->QUERY_DURATION_HOURS:Ljava/time/Duration;

    .line 59
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "BatteryState"

    const/4 v2, 0x1

    const-string v3, "com.android.settings.battery.usage.provider"

    .line 62
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "appUsageLatestTimestamp"

    const/4 v2, 0x2

    .line 66
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "AppUsageEvent"

    const/4 v2, 0x3

    .line 70
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "BatteryEvent"

    const/4 v2, 0x4

    .line 74
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getAppUsageEvents(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8

    const-string v0, "BatteryUsageContentProvider"

    .line 207
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryUserIds(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 208
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryTimestamp(Landroid/net/Uri;)J

    move-result-wide v3

    .line 212
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 215
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mAppUsageEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao;

    invoke-interface {v7, v1, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao;->getAllForUsersAfter(Ljava/util/List;J)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query() from:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " error:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "query app usage events in "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "/ms"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v2
.end method

.method private getAppUsageLatestTimestamp(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 9

    const-string v0, "BatteryUsageContentProvider"

    .line 224
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryUserId(Landroid/net/Uri;)J

    move-result-wide v1

    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 231
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mAppUsageEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao;

    invoke-interface {v3, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao;->getLatestTimestampOfUser(J)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "query() from:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " error:"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p1, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "query app usage latest timestamp %d for user %d in %d/ms"

    .line 235
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private getBatteryEvents(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7

    const-string v0, "BatteryUsageContentProvider"

    .line 241
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryTimestamp(Landroid/net/Uri;)J

    move-result-wide v1

    .line 242
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    .line 245
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao;

    invoke-interface {v5, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao;->getAllAfter(J)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query() from:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " error:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 249
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query app usage events in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "/ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getBatteryStates(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryTimestamp(Landroid/net/Uri;)J

    move-result-wide v0

    .line 190
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getBatteryStates(Landroid/net/Uri;J)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private getBatteryStates(Landroid/net/Uri;J)Landroid/database/Cursor;
    .locals 5

    const-string v0, "BatteryUsageContentProvider"

    .line 194
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 197
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryStateDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao;

    invoke-interface {v3, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao;->getCursorSinceLastFullCharge(J)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 199
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query() from:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " error:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 201
    :goto_0
    new-instance p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 202
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "query battery states in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "/ms"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getQueryTimestamp(Landroid/net/Uri;)J
    .locals 4

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQueryTimestamp from uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryUsageContentProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->QUERY_DURATION_HOURS:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string/jumbo v2, "timestamp"

    .line 286
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryValueFromUri(Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private getQueryUserId(Landroid/net/Uri;)J
    .locals 3

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getQueryUserId from uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryUsageContentProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "userid"

    const-wide/32 v1, -0x80000000

    .line 277
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getQueryValueFromUri(Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private getQueryUserIds(Landroid/net/Uri;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getQueryUserIds from uri: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryUsageContentProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "userid"

    .line 257
    invoke-virtual {p1, p0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p0, "empty query value"

    .line 259
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    const-string p1, ","

    .line 263
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 264
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider$$ExternalSyntheticLambda0;-><init>()V

    .line 265
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 266
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid query value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private getQueryValueFromUri(Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 2

    .line 290
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 291
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "BatteryUsageContentProvider"

    if-eqz p1, :cond_0

    const-string p0, "empty query value"

    .line 292
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p3

    .line 297
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid query value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide p3
.end method

.method private synthetic lambda$getBatteryStates$0()V
    .locals 0

    .line 201
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/BootBroadcastReceiver;->invokeJobRecheck(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$getQueryUserIds$1(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 176
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "unsupported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .line 144
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, " error:"

    const-string v4, "insert() from:"

    const-string v5, "BatteryUsageContentProvider"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 163
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao;

    invoke-static {p2}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;->create(Landroid/content/ContentValues;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao;->insert(Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventEntity;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 170
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown URI: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mAppUsageEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao;

    invoke-static {p2}, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;->create(Landroid/content/ContentValues;)Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao;->insert(Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventEntity;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p0

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 147
    :cond_2
    :try_start_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryStateDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao;

    invoke-static {p2}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;->create(Landroid/content/ContentValues;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao;->insert(Lcom/android/settings/fuelgauge/batteryusage/db/BatteryState;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p0

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public onCreate()Z
    .locals 3

    .line 99
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    .line 100
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryStateDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryStateDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDao;

    .line 101
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->appUsageEventDao()Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mAppUsageEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/AppUsageEventDao;

    .line 102
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/db/BatteryStateDatabase;->batteryEventDao()Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mBatteryEventDao:Lcom/android/settings/fuelgauge/batteryusage/db/BatteryEventDao;

    .line 104
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->isWorkProfile(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "BatteryUsageContentProvider"

    if-eqz v0, :cond_0

    const-string p0, "do not create provider for work profile"

    .line 105
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create content provider from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 121
    sget-object p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getBatteryEvents(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 131
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown URI: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getAppUsageEvents(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 127
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getAppUsageLatestTimestamp(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 123
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->getBatteryStates(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public setClock(Ljava/time/Clock;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageContentProvider;->mClock:Ljava/time/Clock;

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 185
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "unsupported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
