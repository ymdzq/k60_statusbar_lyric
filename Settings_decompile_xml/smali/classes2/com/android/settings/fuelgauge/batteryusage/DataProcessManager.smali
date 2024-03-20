.class public Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;
.super Ljava/lang/Object;
.source "DataProcessManager.java"


# instance fields
.field private final mAppUsageEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mAppUsagePeriodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;>;>;>;>;"
        }
    .end annotation
.end field

.field private final mBatteryEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryHistoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallbackFunction:Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHourlyBatteryLevelsPerDay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBatteryEventLoaded:Z

.field private mIsCurrentAppUsageLoaded:Z

.field private mIsCurrentBatteryHistoryLoaded:Z

.field private mIsDatabaseAppUsageLoaded:Z

.field private mRawStartTimestamp:J

.field private mShowBatteryLevel:Z

.field private mShowScreenOnTime:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppUsageEventList(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsageEventList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppUsagePeriodMap(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsagePeriodMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryEventList(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryEventList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryHistoryMap(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryHistoryMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbackFunction(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mCallbackFunction:Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHourlyBatteryLevelsPerDay(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRawStartTimestamp(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mRawStartTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmBatteryHistoryMap(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;Ljava/util/Map;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryHistoryMap:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmContext(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;Landroid/content/Context;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHourlyBatteryLevelsPerDay(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsBatteryEventLoaded(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryEventLoaded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCurrentAppUsageLoaded(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentAppUsageLoaded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCurrentBatteryHistoryLoaded(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentBatteryHistoryLoaded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsDatabaseAppUsageLoaded(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsDatabaseAppUsageLoaded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCurrentUserId(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->getCurrentUserId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentUserIds(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->getCurrentUserIds()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWorkProfileUserId(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->getWorkProfileUserId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldLoadAppUsageData(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->shouldLoadAppUsageData()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtryToGenerateFinalDataAndApplyCallback(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->tryToGenerateFinalDataAndApplyCallback()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryToProcessAppUsageData(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->tryToProcessAppUsageData()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;JLcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "J",
            "Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsageEventList:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryEventList:Ljava/util/List;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentBatteryHistoryLoaded:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentAppUsageLoaded:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsDatabaseAppUsageLoaded:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryEventLoaded:Z

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowBatteryLevel:Z

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHandler:Landroid/os/Handler;

    .line 115
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserManager:Landroid/os/UserManager;

    .line 116
    iput-object p5, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mCallbackFunction:Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

    .line 117
    iput-object p6, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    .line 118
    iput-object p7, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryHistoryMap:Ljava/util/Map;

    .line 119
    iput-wide p3, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mRawStartTimestamp:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsageEventList:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryEventList:Ljava/util/List;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentBatteryHistoryLoaded:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentAppUsageLoaded:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsDatabaseAppUsageLoaded:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryEventLoaded:Z

    const/4 v1, 0x1

    .line 91
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowBatteryLevel:Z

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHandler:Landroid/os/Handler;

    .line 131
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserManager:Landroid/os/UserManager;

    .line 132
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mCallbackFunction:Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

    .line 135
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowBatteryLevel:Z

    return-void
.end method

.method private generateFinalDataAndApplyCallback()V
    .locals 1

    .line 416
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 444
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getBatteryLevelData(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Map;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
            "Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;",
            ")",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "DataProcessManager"

    if-eqz p2, :cond_3

    .line 494
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 499
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    move-object v5, p1

    .line 502
    invoke-static {p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getHistoryMapWithExpectedTimestamps(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    .line 505
    invoke-static {p0, v10}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getLevelDataThroughProcessedHistoryMap(Landroid/content/Context;Ljava/util/Map;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    move-result-object p1

    if-nez p1, :cond_2

    .line 508
    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-direct {p1, p0, v5, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;)V

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->start()V

    const-string p0, "getBatteryLevelData() returns null"

    .line 509
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 513
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 515
    new-instance p2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    .line 520
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->getHourlyBatteryLevelsPerDay()Ljava/util/List;

    move-result-object v9

    move-object v3, p2

    move-object v4, p0

    move-object v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;-><init>(Landroid/content/Context;Landroid/os/Handler;JLcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;Ljava/util/List;Ljava/util/Map;)V

    .line 521
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->start()V

    return-object p1

    :cond_3
    :goto_1
    const-string p2, "batteryHistoryMap is null in getBatteryLevelData()"

    .line 495
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance p2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;)V

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->start()V

    return-object v0
.end method

.method private getCurrentUserId()I
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    return p0
.end method

.method private getCurrentUserIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->getCurrentUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->getWorkProfileUserId()I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    .line 468
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private getWorkProfileUserId()I
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserManager:Landroid/os/UserManager;

    .line 479
    invoke-static {p0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 480
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x80000000

    :goto_0
    return p0
.end method

.method private loadAndApplyBatteryMapFromServiceOnly()V
    .locals 1

    .line 356
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 381
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadBatteryEventList()V
    .locals 1

    .line 327
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$4;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 352
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadCurrentAppUsageList()V
    .locals 1

    .line 235
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 290
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadCurrentBatteryHistoryMap()V
    .locals 1

    .line 202
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 231
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private loadDatabaseAppUsageList()V
    .locals 1

    .line 294
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$3;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 323
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private processAppUsageData()V
    .locals 5

    .line 395
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mRawStartTimestamp:J

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsageEventList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mBatteryEventList:Ljava/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->generateAppUsagePeriodMap(JLjava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsagePeriodMap:Ljava/util/Map;

    return-void
.end method

.method private shouldLoadAppUsageData()Z
    .locals 3

    .line 449
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->getCurrentUserId()I

    move-result v0

    .line 454
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string v0, "DataProcessManager"

    const-string/jumbo v2, "shouldLoadAppUsageData: false, current user is locked"

    .line 455
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z

    return v1
.end method

.method private tryToGenerateFinalDataAndApplyCallback()V
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentBatteryHistoryLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentAppUsageLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsDatabaseAppUsageLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryEventLoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->generateFinalDataAndApplyCallback()V

    :cond_1
    :goto_0
    return-void
.end method

.method private tryToProcessAppUsageData()V
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentAppUsageLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsDatabaseAppUsageLoaded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryEventLoaded:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->processAppUsageData()V

    .line 390
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->tryToGenerateFinalDataAndApplyCallback()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method getAppUsageEventList()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsageEventList:Ljava/util/List;

    return-object p0
.end method

.method getAppUsagePeriodMap()Ljava/util/Map;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;>;>;>;>;"
        }
    .end annotation

    .line 168
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mAppUsagePeriodMap:Ljava/util/Map;

    return-object p0
.end method

.method getIsBatteryEventLoaded()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 183
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsBatteryEventLoaded:Z

    return p0
.end method

.method getIsCurrentAppUsageLoaded()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 173
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentAppUsageLoaded:Z

    return p0
.end method

.method getIsCurrentBatteryHistoryLoaded()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 188
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsCurrentBatteryHistoryLoaded:Z

    return p0
.end method

.method getIsDatabaseAppUsageLoaded()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 178
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mIsDatabaseAppUsageLoaded:Z

    return p0
.end method

.method getShowBatteryLevel()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 198
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowBatteryLevel:Z

    return p0
.end method

.method getShowScreenOnTime()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 193
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowScreenOnTime:Z

    return p0
.end method

.method public start()V
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->mShowBatteryLevel:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->loadCurrentBatteryHistoryMap()V

    .line 148
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->loadDatabaseAppUsageList()V

    .line 150
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->loadCurrentAppUsageList()V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->loadBatteryEventList()V

    goto :goto_0

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->loadAndApplyBatteryMapFromServiceOnly()V

    :goto_0
    return-void
.end method
