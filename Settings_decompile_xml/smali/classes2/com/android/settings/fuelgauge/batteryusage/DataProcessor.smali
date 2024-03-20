.class public final Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;
.super Ljava/lang/Object;
.source "DataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;
    }
.end annotation


# static fields
.field static final APP_USAGE_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final BATTERY_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_USAGE_DURATION_FOR_INCOMPLETE_INTERVAL:J = 0x7530L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

.field private static final EMPTY_BATTERY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final SELECTED_INDEX_ALL:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static sDebug:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static sTestCurrentTimeMillis:J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static sTestSystemAppsPackageNames:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8Nfxow7Vf17MZQVISG_XAnu-nQY(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$getPeriodBatteryLevelData$10(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MjKMPDY4PNCbExrU69mCAjyfje8(Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;)Ljava/util/stream/Stream;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$getScreenOnTime$12(Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$N_7aO96Jyod90OVaijc5I43TRq4(Landroid/os/BatteryUsageStats;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$convertToBatteryHistEntry$8(Landroid/os/BatteryUsageStats;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ONDnKTObeab3E_BDujH9Rgi-AnE(Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$insertAllUsageDiffData$11(Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OXeGnDtv2yX4Jis6yyGP8eGH1_U(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$loadLabelAndIcon$3(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S3uTDzEjh24pevs3WYUetaA8Dcs(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$addToUsagePeriodMap$6(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W-HOFHY0VElYzWRLPMoKh8BpSGQ(Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$getCurrentBatteryHistoryMapFromStatsService$1(Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X9Esgkkrxf3vwKBreQnxafkLpxc(Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$getCurrentBatteryHistoryMapFromStatsService$0(Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_NPu9qI0ju654ckOfDgoFK7P_pc(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$convertToBatteryHistEntry$7(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eKQ0PfwFY50ps18evf-FkYmoYCk(J[JLjava/lang/Long;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$findNearestTimestamp$2(J[JLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hSZXACnPcqPJKcjriBqlYCHeFB4(Ljava/lang/Long;)Ljava/util/Map;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$addToUsagePeriodMap$5(Ljava/lang/Long;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kYTXrkZgq8MQZ0xz-gVeULbblHk(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$getHourlyPeriodBatteryLevelData$9(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l-jUdW1TnObrXNacFbe5wZN6rXU(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$loadLabelAndIcon$4(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qN9-2yAIaSRChm48mPFItq1NR2s(Landroid/os/UidBatteryConsumer;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$getCoalescedUsageList$14(Landroid/os/UidBatteryConsumer;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vTH5ddSe4JNhfmBqonEIBQbkkyY(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$getScreenOnTime$13(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    .line 87
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Landroid/content/ContentValues;)V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 98
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda7;-><init>()V

    .line 99
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->APP_USAGE_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    .line 102
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda8;-><init>()V

    .line 103
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->BATTERY_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    const/4 v0, 0x0

    .line 106
    sput-boolean v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sDebug:Z

    const-wide/16 v0, 0x0

    .line 109
    sput-wide v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sTestCurrentTimeMillis:J

    const-string/jumbo v0, "usagestats"

    .line 117
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    return-void
.end method

.method private static addToUsagePeriodMap(Ljava/util/Map;Ljava/util/List;JLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;>;>;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 939
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 940
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 941
    new-instance p2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda13;

    invoke-direct {p2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {p0, p4, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 942
    invoke-interface {p0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static buildAppUsagePeriodList(Ljava/util/List;Ljava/util/List;JJ)Ljava/util/Map;
    .locals 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;",
            ">;JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;>;>;"
        }
    .end annotation

    .line 666
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 672
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 674
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    .line 675
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    move-result-object v5

    .line 676
    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->ACTIVITY_RESUMED:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    if-eq v5, v6, :cond_3

    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->ACTIVITY_STOPPED:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 683
    :cond_2
    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->DEVICE_SHUTDOWN:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    if-ne v5, v6, :cond_1

    .line 685
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 678
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getInstanceId()I

    move-result v5

    .line 679
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 680
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 688
    :cond_5
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    return-object v1

    .line 692
    :cond_6
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 694
    :goto_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 697
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_8

    .line 698
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    .line 702
    :cond_7
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    .line 703
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getUserId()J

    move-result-wide v8

    .line 704
    sget-object v10, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 706
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 707
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v7

    .line 704
    invoke-static {v10, v11, v7}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getEffectivePackageName(Landroid/app/usage/IUsageStatsManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 708
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 711
    sget-object v10, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->APP_USAGE_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    .line 717
    invoke-static {v6, v10, v11, v12, v13}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->buildAppUsagePeriodListPerInstance(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v6

    move-object/from16 v14, p1

    .line 716
    invoke-static {v6, v14}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->excludePowerConnectedTimeFromAppUsagePeriodList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 719
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    .line 720
    invoke-static {v3, v6, v8, v9, v7}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->addToUsagePeriodMap(Ljava/util/Map;Ljava/util/List;JLjava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_3
    move-object/from16 v14, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 725
    :cond_a
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 726
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    goto :goto_5

    .line 729
    :cond_c
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 731
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v7, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda6;-><init>()V

    .line 732
    invoke-static {v7}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v7

    .line 730
    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_6

    .line 735
    :cond_d
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_7

    :cond_e
    move-object v1, v3

    :goto_7
    return-object v1
.end method

.method static buildAppUsagePeriodListPerInstance(Ljava/util/List;JJ)Ljava/util/List;
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;JJ)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;"
        }
    .end annotation

    .line 741
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 742
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object v7

    .line 744
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    .line 745
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getTimestamp()J

    move-result-wide v1

    .line 747
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->ACTIVITY_RESUMED:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    if-ne v3, v4, :cond_1

    .line 750
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->hasStartTime()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    invoke-virtual {v7, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setStartTime(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    goto :goto_0

    .line 753
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->ACTIVITY_STOPPED:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    if-ne v3, v4, :cond_3

    .line 754
    invoke-virtual {v7, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setEndTime(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    .line 755
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->hasStartTime()Z

    move-result v0

    if-nez v0, :cond_2

    .line 757
    invoke-static {v7}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getStartTimeForIncompleteUsagePeriod(Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriodOrBuilder;)J

    move-result-wide v0

    .line 756
    invoke-virtual {v7, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setStartTime(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    .line 761
    :cond_2
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    move-object v0, v6

    move-wide v2, p1

    move-wide v4, p3

    .line 760
    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->validateAndAddToPeriodList(Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;JJ)V

    .line 762
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0

    .line 763
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    move-result-object v0

    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->DEVICE_SHUTDOWN:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    if-ne v0, v3, :cond_0

    .line 766
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->hasStartTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    invoke-static {v7, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getEndTimeForIncompleteUsagePeriod(Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriodOrBuilder;J)J

    move-result-wide v0

    .line 767
    invoke-virtual {v7, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setEndTime(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    .line 770
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    move-object v0, v6

    move-wide v2, p1

    move-wide v4, p3

    .line 769
    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->validateAndAddToPeriodList(Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;JJ)V

    .line 771
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0

    .line 777
    :cond_4
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->hasStartTime()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->getStartTime()J

    move-result-wide v0

    cmp-long p0, v0, p3

    if-gez p0, :cond_5

    .line 778
    invoke-virtual {v7, p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setEndTime(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    .line 780
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    move-object v0, v6

    move-wide v2, p1

    move-wide v4, p3

    .line 779
    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->validateAndAddToPeriodList(Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;JJ)V

    .line 781
    invoke-virtual {v7}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    :cond_5
    return-object v6
.end method

.method public static closeBatteryUsageStats(Landroid/os/BatteryUsageStats;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 246
    :try_start_0
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DataProcessor"

    const-string v1, "BatteryUsageStats.close() failed"

    .line 248
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private static computeUsageDiffDataPerEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;)V"
        }
    .end annotation

    .line 1566
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1567
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    if-nez v1, :cond_0

    .line 1570
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clone()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1573
    :cond_0
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    .line 1575
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    .line 1577
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    .line 1579
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    .line 1580
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    .line 1581
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    .line 1583
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    add-double/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    .line 1584
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    iget-wide p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    add-double/2addr v2, p0

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    :goto_0
    return-void
.end method

.method static convertToBatteryHistEntry(Ljava/util/List;Landroid/os/BatteryUsageStats;)Ljava/util/List;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;",
            "Landroid/os/BatteryUsageStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1021
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1025
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda1;-><init>()V

    .line 1026
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda2;-><init>(Landroid/os/BatteryUsageStats;)V

    .line 1033
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1034
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "DataProcessor"

    const-string p1, "batteryEntryList is null or empty in convertToBatteryHistEntry()"

    .line 1022
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static excludePowerConnectedTimeFromAppUsagePeriodList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;"
        }
    .end annotation

    .line 790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 792
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    .line 793
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getStartTime()J

    move-result-wide v3

    .line 794
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const-wide/16 v6, 0x0

    if-ge v1, v5, :cond_6

    .line 795
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;

    .line 796
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getStartTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 801
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    move-result-object v8

    sget-object v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->POWER_CONNECTED:Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    if-ne v8, v9, :cond_1

    :goto_2
    move-wide v3, v6

    goto :goto_3

    .line 803
    :cond_1
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    move-result-object v5

    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->POWER_DISCONNECTED:Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    if-ne v5, v6, :cond_2

    .line 804
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getStartTime()J

    move-result-wide v3

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 809
    :cond_3
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getEndTime()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    goto :goto_4

    .line 815
    :cond_4
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    move-result-object v8

    sget-object v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->POWER_CONNECTED:Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    if-ne v8, v9, :cond_5

    cmp-long v8, v3, v6

    if-eqz v8, :cond_5

    .line 817
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object v8

    .line 818
    invoke-virtual {v8, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setStartTime(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object v3

    .line 819
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setEndTime(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object v3

    .line 820
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    .line 817
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 822
    :cond_5
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    move-result-object v6

    sget-object v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->POWER_DISCONNECTED:Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    if-ne v6, v7, :cond_2

    .line 823
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getTimestamp()J

    move-result-wide v3

    goto :goto_3

    :cond_6
    :goto_4
    cmp-long v5, v3, v6

    if-eqz v5, :cond_0

    .line 828
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object v5

    .line 829
    invoke-virtual {v5, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setStartTime(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object v3

    .line 830
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setEndTime(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object v2

    .line 831
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    .line 828
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method static findNearestTimestamp(Ljava/util/List;J)[J
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)[J"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 549
    fill-array-data v0, :array_0

    .line 551
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;-><init>(J[J)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    aget-wide p1, v0, p0

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, p1, v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide p1, v2

    :cond_0
    aput-wide p1, v0, p0

    const/4 p0, 0x1

    aget-wide p1, v0, p0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, p1, v4

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, p1

    :goto_0
    aput-wide v2, v0, p0

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x8000000000000000L
        0x7fffffffffffffffL
    .end array-data
.end method

.method public static generateAppUsageEventListFromUsageEvents(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/usage/UsageEvents;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    .line 325
    invoke-virtual {v2, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v2

    .line 326
    invoke-interface {v2}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getIgnoreScreenOnTimeTaskRootSet()Ljava/util/Set;

    move-result-object v2

    .line 327
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "DataProcessor"

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 328
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v12, p1

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageEvents;

    .line 329
    :cond_1
    :goto_0
    invoke-virtual {v8}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 330
    new-instance v13, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v13}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 331
    invoke-virtual {v8, v13}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    const-wide/16 v14, 0x1

    add-long/2addr v6, v14

    .line 333
    invoke-virtual {v13}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/16 v15, 0x17

    if-eq v14, v15, :cond_2

    const/16 v15, 0x1a

    if-eq v14, v15, :cond_2

    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {v13}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object v14

    .line 338
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 339
    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 344
    invoke-virtual {v13}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 345
    invoke-virtual {v13}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v14, v15, v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "Ignoring a usage event with task root class name %s, (timestamp=%d, type=%d)"

    .line 340
    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    :cond_3
    sget-object v14, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 349
    invoke-static {v0, v14, v13, v10, v11}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertToAppUsageEvent(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;Landroid/app/usage/UsageEvents$Event;J)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    move-result-object v13

    if-eqz v13, :cond_1

    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    .line 353
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 363
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Read %d relevant events (%d total) from UsageStatsManager"

    .line 361
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static generateAppUsagePeriodMap(JLjava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;",
            ">;)",
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

    .line 278
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "DataProcessor"

    const-string p1, "appUsageEventList is empty"

    .line 279
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->APP_USAGE_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 285
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->BATTERY_EVENT_TIMESTAMP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p4, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 286
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    const/4 p1, 0x0

    move v0, p1

    .line 289
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 290
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 292
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 296
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getTimestamps()Ljava/util/List;

    move-result-object v2

    move v3, p1

    .line 297
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 298
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-int/lit8 v4, v3, 0x1

    .line 299
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 302
    invoke-static {p3, v7, v8, v9, v10}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getAppUsageEventListWithinTimeRangeWithBuffer(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v5

    .line 307
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v6, p4

    .line 308
    invoke-static/range {v5 .. v10}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->buildAppUsagePeriodList(Ljava/util/List;Ljava/util/List;JJ)Ljava/util/Map;

    move-result-object v5

    .line 306
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method static generateBatteryDiffData(Landroid/content/Context;Ljava/util/List;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
    .locals 25
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;)",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 608
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 612
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 613
    const-class v2, Landroid/os/UserManager;

    move-object/from16 v4, p0

    .line 614
    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-static {v2}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 616
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    goto :goto_0

    :cond_1
    const/high16 v2, -0x80000000

    .line 617
    :goto_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 618
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 620
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 621
    invoke-static {v1, v2, v14}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->isConsumedFromOtherUsers(IILcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 627
    :cond_2
    new-instance v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-object v3, v11

    iget-wide v5, v14, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    iget-wide v7, v14, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    const-wide/16 v9, 0x0

    move/from16 v23, v1

    iget-wide v0, v14, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    move-object/from16 p1, v11

    move-wide v11, v0

    iget-wide v0, v14, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageConsumePower:D

    move-object/from16 v24, v13

    move-object v9, v14

    move-wide v13, v0

    iget-wide v0, v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageConsumePower:D

    move-object v10, v15

    move-wide v15, v0

    iget-wide v0, v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageConsumePower:D

    move-wide/from16 v17, v0

    iget-wide v0, v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mCachedUsageConsumePower:D

    move-wide/from16 v19, v0

    move-object/from16 v4, p0

    move-object/from16 v21, v9

    move-object v0, v10

    const-wide/16 v9, 0x0

    invoke-direct/range {v3 .. v21}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJJDDDDDLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 638
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v3, p1

    move-object/from16 v1, v24

    .line 639
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v3, p1

    move-object/from16 v1, v24

    .line 641
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object/from16 v4, p0

    move-object v15, v0

    move-object v13, v1

    move/from16 v1, v23

    goto :goto_1

    :cond_4
    move-object v1, v13

    move-object v0, v15

    .line 647
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    return-object v2

    .line 651
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getSystemAppsPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 652
    invoke-static/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getSystemAppsUids(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v10

    .line 653
    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    const-wide/16 v5, 0x0

    const/4 v11, 0x0

    move-object v3, v2

    move-object/from16 v4, p0

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;-><init>(Landroid/content/Context;JLjava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V

    return-object v2

    :cond_6
    :goto_3
    const-string v0, "DataProcessor"

    const-string v1, "batteryHistEntryList is null or empty in generateBatteryDiffData()"

    .line 609
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static generateBatteryEntryListFromBatteryUsageStats(Landroid/content/Context;Landroid/os/BatteryUsageStats;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/BatteryUsageStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "DataProcessor"

    const-string p1, "batteryUsageStats is null content"

    .line 375
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 378
    :cond_0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->shouldShowBatteryAttributionList(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 381
    :cond_1
    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    .line 382
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getDischargePercentage()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 383
    invoke-static {p0, v0, p1, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getCoalescedUsageList(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryUtils;Landroid/os/BatteryUsageStats;Z)Ljava/util/List;

    move-result-object p0

    .line 385
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v8

    move p1, v2

    .line 386
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 387
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    .line 389
    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v3

    move-object v2, v0

    move-wide v5, v8

    move v7, v1

    .line 388
    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDI)D

    move-result-wide v2

    .line 390
    iput-wide v2, v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPercent:D

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private static getAccumulatedUsageDiffData(Landroid/content/Context;Ljava/util/Collection;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;)",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;"
        }
    .end annotation

    .line 1531
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1532
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1533
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1536
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1540
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getScreenOnTime()J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 1541
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 1542
    invoke-static {v7, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->computeUsageDiffDataPerEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/util/Map;)V

    goto :goto_1

    .line 1544
    :cond_2
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getSystemDiffEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 1545
    invoke-static {v2, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->computeUsageDiffDataPerEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/util/Map;)V

    goto :goto_2

    .line 1549
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 1550
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 1551
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1552
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1554
    :cond_4
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1558
    :cond_5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p0, 0x0

    goto :goto_4

    :cond_6
    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    const/4 v9, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;-><init>(Landroid/content/Context;JLjava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V

    move-object p0, p1

    :goto_4
    return-object p0
.end method

.method private static getAppUsageEventListWithinTimeRangeWithBuffer(Ljava/util/List;JJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;JJ)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;"
        }
    .end annotation

    .line 890
    sget-wide v0, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->USAGE_QUERY_BUFFER_HOURS:J

    sub-long/2addr p1, v0

    add-long/2addr p3, v0

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 893
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    .line 894
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getTimestamp()J

    move-result-wide v2

    cmp-long v4, v2, p3

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v2, v2, p1

    if-ltz v2, :cond_0

    .line 902
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getAppUsageEvents(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/usage/UsageEvents;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 190
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getParentContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    .line 194
    :cond_0
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 195
    const-class v4, Landroid/os/UserManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    if-nez v4, :cond_1

    return-object v2

    .line 200
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getTimestampSixDaysAgo(Ljava/util/Calendar;)J

    move-result-wide v5

    .line 201
    invoke-virtual {v4}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 202
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, v4, v9, v5, v6}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getAppUsageEventsForUser(Landroid/content/Context;Landroid/os/UserManager;IJ)Landroid/app/usage/UsageEvents;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 205
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    int-to-long v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 210
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getAppUsageEvents() for all unlocked users in %d/ms"

    .line 209
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataProcessor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    return-object v2
.end method

.method public static getAppUsageEventsForUser(Landroid/content/Context;IJ)Landroid/app/usage/UsageEvents;
    .locals 6

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 221
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getParentContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    .line 225
    :cond_0
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    if-nez v3, :cond_1

    return-object v2

    .line 230
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getTimestampSixDaysAgo(Ljava/util/Calendar;)J

    move-result-wide v4

    .line 231
    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 232
    invoke-static {p0, v3, p1, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getAppUsageEventsForUser(Landroid/content/Context;Landroid/os/UserManager;IJ)Landroid/app/usage/UsageEvents;

    move-result-object p0

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getAppUsageEventsForUser() for user %d in %d/ms"

    .line 235
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataProcessor"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static getAppUsageEventsForUser(Landroid/content/Context;Landroid/os/UserManager;IJ)Landroid/app/usage/UsageEvents;
    .locals 7

    .line 967
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 971
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 972
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "fail to load app usage event for user :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because locked"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataProcessor"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    int-to-long v0, p2

    .line 975
    invoke-static {p0, v0, v1, p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getAppUsageStartTimestampOfUser(Landroid/content/Context;JJ)J

    move-result-wide v1

    .line 977
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->loadAppUsageEventsForUserFromService(Landroid/app/usage/IUsageStatsManager;JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p0

    return-object p0
.end method

.method private static getBatteryHistListFromFromStatsService(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1004
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryUsageStats(Landroid/content/Context;)Landroid/os/BatteryUsageStats;

    move-result-object v1

    .line 1006
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->generateBatteryEntryListFromBatteryUsageStats(Landroid/content/Context;Landroid/os/BatteryUsageStats;)Ljava/util/List;

    move-result-object p0

    .line 1007
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->convertToBatteryHistEntry(Ljava/util/List;Landroid/os/BatteryUsageStats;)Ljava/util/List;

    move-result-object v0

    .line 1008
    invoke-static {v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->closeBatteryUsageStats(Landroid/os/BatteryUsageStats;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "DataProcessor"

    const-string v2, "load batteryUsageStats:"

    .line 1010
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static getBatteryUsageData(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 146
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getHistoryMapWithExpectedTimestamps(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 149
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getLevelDataThroughProcessedHistoryMap(Landroid/content/Context;Ljava/util/Map;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    move-result-object v1

    .line 152
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getCurrentBatteryHistoryMapFromStatsService(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 155
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "CURRENT_TIME_BATTERY_HISTORY_PLACEHOLDER"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    invoke-interface {v4, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    goto :goto_1

    .line 164
    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->getHourlyBatteryLevelsPerDay()Ljava/util/List;

    move-result-object v1

    .line 162
    invoke-static {p0, v1, p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryUsageMap(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    const-string p0, "DataProcessor"

    const-string p1, "getBatteryLevelData() returns null"

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static getBatteryUsageMap(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
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
            ">;>;>;>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;"
        }
    .end annotation

    .line 584
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 587
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 588
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getSystemAppsPackageNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    .line 589
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getSystemAppsUids(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    .line 591
    invoke-static/range {v2 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->insertHourlyUsageDiffData(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 594
    invoke-static {p0, p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->insertDailyUsageDiffData(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    .line 596
    invoke-static {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->insertAllUsageDiffData(Landroid/content/Context;Ljava/util/Map;)V

    .line 597
    invoke-static {v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->isUsageMapValid(Ljava/util/Map;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method static getBatteryUsageMapFromStatsService(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;"
        }
    .end annotation

    .line 857
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 858
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, -0x1

    .line 860
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 861
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryHistListFromFromStatsService(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->generateBatteryDiffData(Landroid/content/Context;Ljava/util/List;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    move-result-object p0

    .line 860
    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getBatteryUsageStats(Landroid/content/Context;)Landroid/os/BatteryUsageStats;
    .locals 2

    .line 174
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 177
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeBatteryHistory()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    .line 180
    const-class v1, Landroid/os/BatteryStatsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryStatsManager;

    .line 181
    invoke-virtual {p0, v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object p0

    return-object p0
.end method

.method private static getCoalescedUsageList(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryUtils;Landroid/os/BatteryUsageStats;Z)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/fuelgauge/BatteryUtils;",
            "Landroid/os/BatteryUsageStats;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1612
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1613
    const-class v2, Landroid/os/UserManager;

    move-object/from16 v12, p0

    invoke-virtual {v12, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1614
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 1615
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1617
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v15

    .line 1621
    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1624
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    const/4 v10, 0x0

    move v9, v10

    :goto_0
    if-ge v9, v11, :cond_2

    .line 1625
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/os/UidBatteryConsumer;

    .line 1626
    invoke-static {v6}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getRealUid(Landroid/os/UidBatteryConsumer;)I

    move-result v8

    .line 1628
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 1629
    invoke-virtual {v0, v6, v7}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideUidBatteryConsumerUnconditionally(Landroid/os/UidBatteryConsumer;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v20, v9

    move v0, v10

    move/from16 v17, v11

    goto :goto_1

    .line 1633
    :cond_0
    invoke-virtual {v0, v6, v7}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideUidBatteryConsumer(Landroid/os/UidBatteryConsumer;[Ljava/lang/String;)Z

    move-result v16

    .line 1634
    invoke-virtual {v13, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 1637
    new-instance v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    const/16 v17, 0x0

    move-object v3, v5

    move-object/from16 v4, p0

    move-object/from16 v18, v5

    move-object v5, v2

    move-object/from16 v19, v7

    move/from16 v7, v16

    move/from16 v16, v8

    move/from16 v20, v9

    move-object/from16 v9, v19

    move v0, v10

    move-object/from16 v10, v17

    move/from16 v17, v11

    move/from16 v11, p3

    invoke-direct/range {v3 .. v11}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;Z)V

    move/from16 v3, v16

    move-object/from16 v4, v18

    invoke-virtual {v13, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    move/from16 v20, v9

    move v0, v10

    move/from16 v17, v11

    .line 1641
    invoke-virtual {v13, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    .line 1642
    invoke-virtual {v3, v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->add(Landroid/os/BatteryConsumer;)V

    :goto_1
    add-int/lit8 v9, v20, 0x1

    move v10, v0

    move/from16 v11, v17

    move-object/from16 v0, p1

    goto :goto_0

    :cond_2
    move-object/from16 v11, p2

    move v0, v10

    .line 1646
    invoke-virtual {v11, v0}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/AggregateBatteryConsumer;

    move-result-object v1

    move v15, v0

    :goto_2
    const/16 v3, 0x12

    if-ge v15, v3, :cond_5

    .line 1651
    new-instance v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    .line 1652
    invoke-virtual {v1, v15}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v6

    .line 1653
    invoke-virtual {v1, v15}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v8

    const/4 v3, 0x7

    if-eq v15, v3, :cond_4

    const/16 v3, 0xc

    if-ne v15, v3, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v16, v0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v3, 0x1

    move/from16 v16, v3

    :goto_4
    move-object v3, v10

    move-object/from16 v4, p0

    move v5, v15

    move-object v0, v10

    move/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;-><init>(Landroid/content/Context;IDJZ)V

    .line 1651
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/16 v0, 0x3e8

    move v9, v0

    .line 1660
    :goto_5
    invoke-virtual {v1}, Landroid/os/BatteryConsumer;->getCustomPowerComponentCount()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v9, v3, :cond_6

    .line 1662
    new-instance v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    .line 1663
    invoke-virtual {v1, v9}, Landroid/os/BatteryConsumer;->getCustomPowerComponentName(I)Ljava/lang/String;

    move-result-object v6

    .line 1664
    invoke-virtual {v1, v9}, Landroid/os/BatteryConsumer;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v7

    move-object v3, v10

    move-object/from16 v4, p0

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;-><init>(Landroid/content/Context;ILjava/lang/String;D)V

    .line 1662
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1668
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getUserBatteryConsumers()Ljava/util/List;

    move-result-object v0

    .line 1669
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v1, :cond_7

    .line 1670
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/os/UserBatteryConsumer;

    .line 1671
    new-instance v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    move-object/from16 v4, p0

    move-object v5, v2

    move-object/from16 p1, v0

    move-object v0, v11

    move/from16 v11, p3

    invoke-direct/range {v3 .. v11}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/UserManager;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    goto :goto_6

    .line 1675
    :cond_7
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v0, :cond_8

    .line 1678
    invoke-virtual {v13, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1682
    :cond_8
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v14
.end method

.method public static getCurrentBatteryHistoryMapFromStatsService(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;"
        }
    .end annotation

    .line 401
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryHistListFromFromStatsService(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 402
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    goto :goto_0

    .line 403
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda9;-><init>()V

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    :goto_0
    return-object p0
.end method

.method private static getCurrentTimeMillis()J
    .locals 4

    .line 1772
    sget-wide v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sTestCurrentTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method static getDailyTimestamps(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 496
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 497
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    cmp-long p0, v1, v3

    if-gez p0, :cond_1

    .line 500
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-static {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/TimestampUtils;->getNextDayTimestamp(J)J

    move-result-wide v1

    goto :goto_0

    .line 502
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getDiffValue(DD)D
    .locals 1

    .line 0
    cmpl-double v0, p2, p0

    if-lez v0, :cond_0

    sub-double/2addr p2, p0

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :goto_0
    return-wide p2
.end method

.method private static getDiffValue(JJ)J
    .locals 1

    .line 0
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    sub-long/2addr p2, p0

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :goto_0
    return-wide p2
.end method

.method private static getEndTimeForIncompleteUsagePeriod(Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriodOrBuilder;J)J
    .locals 4

    .line 959
    invoke-interface {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriodOrBuilder;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    .line 958
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static getHistoryMapWithExpectedTimestamps(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 417
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 418
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-string v5, "DataProcessor"

    if-eqz v4, :cond_0

    const-string p0, "empty batteryHistoryMap in getHistoryMapWithExpectedTimestamps()"

    .line 419
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 422
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 423
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getCurrentTimeMillis()J

    move-result-wide v6

    .line 424
    invoke-static {v2, v6, v7}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getTimestampSlots(Ljava/util/List;J)Ljava/util/List;

    move-result-object v4

    .line 425
    invoke-static {p0, v2, v4, p1, v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->interpolateHistory(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 428
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getHistoryMapWithExpectedTimestamps() size=%d in %d/ms"

    .line 427
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private static getHourlyPeriodBatteryLevelData(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;"
        }
    .end annotation

    .line 1166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda11;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method static getHourlyTimestamps(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 513
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 514
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 515
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-int/lit8 v1, v1, 0x1

    .line 516
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 518
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-static {v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/TimestampUtils;->getNextEvenHourTimestamp(J)J

    move-result-wide v3

    :goto_1
    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    .line 521
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/32 v7, 0x6ddd00

    add-long/2addr v3, v7

    goto :goto_1

    .line 523
    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getLevel(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;J)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1188
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 1189
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p2, "CURRENT_TIME_BATTERY_HISTORY_PLACEHOLDER"

    .line 1196
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1197
    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getBatteryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    .line 1198
    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->getBatteryLevel(Landroid/content/Intent;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1202
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 1203
    iget p3, p3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryLevel:I

    int-to-float p3, p3

    add-float/2addr p2, p3

    goto :goto_0

    .line 1205
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1190
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "abnormal entry list in the timestamp:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    invoke-static {p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataProcessor"

    .line 1190
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static getLevelDataThroughProcessedHistoryMap(Landroid/content/Context;Ljava/util/Map;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;"
        }
    .end annotation

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 437
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 438
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDailyTimestamps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 441
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 445
    :cond_0
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getHourlyTimestamps(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 447
    invoke-static {p0, p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getPeriodBatteryLevelData(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    move-result-object v0

    .line 449
    invoke-static {p0, p1, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getHourlyPeriodBatteryLevelData(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 451
    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    invoke-direct {p1, v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;Ljava/util/List;)V

    return-object p1
.end method

.method private static getPeriodBatteryLevelData(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;"
        }
    .end annotation

    .line 1178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda14;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1181
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    invoke-direct {p0, p2, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method private static getRealUid(Landroid/os/UidBatteryConsumer;)I
    .locals 2

    .line 1687
    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    .line 1691
    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->isSharedGid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1693
    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    const/4 v1, 0x0

    .line 1692
    invoke-static {v1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1697
    :cond_0
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->isSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "mediaserver"

    .line 1698
    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 v0, 0x3e8

    :cond_1
    return v0
.end method

.method private static getScreenOnTime(Ljava/util/List;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_4

    .line 1477
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1483
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda4;-><init>()V

    .line 1484
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda5;-><init>()V

    .line 1496
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1497
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1503
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v4, v2

    move-wide v2, v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    .line 1504
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->getType()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    move-result-object v6

    sget-object v7, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->START:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    if-ne v6, v7, :cond_3

    add-int/lit8 v6, v4, 0x1

    if-nez v4, :cond_2

    .line 1506
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->getTimestamp()J

    move-result-wide v2

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_1

    .line 1511
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->getTimestamp()J

    move-result-wide v5

    sub-long/2addr v5, v2

    add-long/2addr v0, v5

    goto :goto_0

    :cond_4
    :goto_1
    return-wide v0
.end method

.method static getScreenOnTime(Ljava/util/Map;JLjava/lang/String;)J
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;>;>;J",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 842
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 846
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getScreenOnTime(Ljava/util/List;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static getStartTimeForIncompleteUsagePeriod(Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriodOrBuilder;)J
    .locals 4

    .line 950
    invoke-interface {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriodOrBuilder;->getEndTime()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static getSystemAppsPackageNames(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1756
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sTestSystemAppsPackageNames:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1757
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryUtil;->getSystemPackageNames(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getSystemAppsUids(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1761
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1763
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.uid.shared"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method static getTimestampSlots(Ljava/util/List;J)Ljava/util/List;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 462
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 465
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p0, v1, p1

    if-ltz p0, :cond_1

    return-object v0

    .line 471
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-static {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/TimestampUtils;->getNextHourTimestamp(J)J

    move-result-wide v1

    :goto_0
    cmp-long p0, v1, p1

    if-gez p0, :cond_2

    .line 474
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    goto :goto_0

    .line 476
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static insertAllUsageDiffData(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;)V"
        }
    .end annotation

    .line 1285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda15;-><init>(Ljava/util/List;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 1288
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, -0x1

    .line 1289
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getAccumulatedUsageDiffData(Landroid/content/Context;Ljava/util/Collection;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static insertDailyUsageDiffData(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1270
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1271
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1273
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, -0x1

    .line 1277
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1278
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getAccumulatedUsageDiffData(Landroid/content/Context;Ljava/util/Collection;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    move-result-object v3

    .line 1276
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static insertHourlyUsageDiffData(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
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
            ">;>;>;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 1217
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v12

    .line 1218
    const-class v3, Landroid/os/UserManager;

    move-object/from16 v13, p0

    .line 1219
    invoke-virtual {v13, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-static {v3}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1221
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    goto :goto_0

    :cond_0
    const/high16 v3, -0x80000000

    :goto_0
    move v14, v3

    const/4 v11, 0x0

    .line 1225
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_6

    .line 1226
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 1227
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v9, p6

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    move v15, v11

    goto/16 :goto_6

    .line 1232
    :cond_2
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getTimestamps()Ljava/util/List;

    move-result-object v8

    const/4 v6, 0x0

    .line 1233
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v6, v3, :cond_1

    .line 1234
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    add-int/lit8 v7, v6, 0x1

    .line 1235
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1236
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sub-long v16, v16, v18

    .line 1237
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    sget-object v15, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    .line 1239
    invoke-interface {v1, v3, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    .line 1238
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/android/settings/fuelgauge/batteryusage/TimestampUtils;->getNextHourTimestamp(J)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1241
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v15, v19, v21

    if-gez v15, :cond_3

    .line 1242
    sget-object v15, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    .line 1243
    invoke-interface {v1, v3, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    .line 1242
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1241
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/32 v21, 0x36ee80

    add-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_3

    .line 1245
    :cond_3
    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    .line 1246
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1245
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_5

    .line 1257
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_4

    .line 1259
    :cond_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v3, 0x0

    :goto_5
    move-object v15, v3

    move-object/from16 v3, p0

    move v4, v12

    move-object/from16 v19, v5

    move v5, v14

    move/from16 v21, v6

    move/from16 v20, v7

    move-wide/from16 v6, v16

    move-object/from16 v16, v8

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v0, v10

    move-object v10, v15

    move v15, v11

    move-object/from16 v11, v19

    .line 1249
    invoke-static/range {v3 .. v11}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->insertHourlyUsageDiffDataPerSlot(Landroid/content/Context;IIJLjava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    move-result-object v3

    .line 1261
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, p6

    move-object v10, v0

    move v11, v15

    move-object/from16 v8, v16

    move/from16 v6, v20

    move-object/from16 v0, p3

    goto/16 :goto_2

    :goto_6
    add-int/lit8 v11, v15, 0x1

    move-object/from16 v0, p3

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private static insertHourlyUsageDiffDataPerSlot(Landroid/content/Context;IIJLjava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/List;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;>;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;"
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p7

    if-eqz v4, :cond_5

    .line 1305
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1306
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    int-to-long v11, v0

    cmp-long v11, v9, v11

    if-eqz v11, :cond_1

    int-to-long v11, v1

    cmp-long v11, v9, v11

    if-nez v11, :cond_0

    .line 1308
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_2

    goto :goto_0

    .line 1311
    :cond_2
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1313
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-eqz v12, :cond_3

    .line 1315
    invoke-interface {v7, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1320
    :cond_4
    invoke-static {v7}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getScreenOnTime(Ljava/util/List;)J

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    move-wide v11, v7

    goto :goto_2

    :cond_5
    const-wide/16 v11, 0x0

    .line 1323
    :goto_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1327
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1328
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 1329
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    return-object v10

    .line 1335
    :cond_6
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 1339
    :cond_7
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_8

    goto :goto_4

    .line 1345
    :cond_8
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1346
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_9
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/util/Map;

    .line 1347
    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 1348
    invoke-interface {v5, v8, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 1349
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_9

    if-eq v5, v6, :cond_9

    move-object v10, v5

    goto :goto_5

    :cond_a
    if-nez v10, :cond_b

    :goto_6
    const/4 v10, 0x0

    goto :goto_4

    .line 1359
    :cond_b
    invoke-static {v0, v1, v10}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->isConsumedFromOtherUsers(IILcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    .line 1373
    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v29

    add-int/lit8 v0, v29, -0x1

    if-ge v8, v0, :cond_d

    .line 1374
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    add-int/lit8 v8, v8, 0x1

    .line 1375
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v1, v29

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-object/from16 v35, v7

    move/from16 v29, v8

    .line 1376
    iget-wide v7, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-wide/from16 v36, v11

    iget-wide v11, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    .line 1377
    invoke-static {v7, v8, v11, v12}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(JJ)J

    move-result-wide v7

    add-long/2addr v15, v7

    .line 1380
    iget-wide v7, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v11, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    .line 1381
    invoke-static {v7, v8, v11, v12}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(JJ)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 1384
    iget-wide v7, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    iget-wide v11, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    .line 1385
    invoke-static {v7, v8, v11, v12}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(DD)D

    move-result-wide v7

    add-double v19, v19, v7

    .line 1388
    iget-wide v7, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageConsumePower:D

    iget-wide v11, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageConsumePower:D

    .line 1389
    invoke-static {v7, v8, v11, v12}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(DD)D

    move-result-wide v7

    add-double v21, v21, v7

    .line 1392
    iget-wide v7, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageConsumePower:D

    iget-wide v11, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundServiceUsageConsumePower:D

    .line 1393
    invoke-static {v7, v8, v11, v12}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(DD)D

    move-result-wide v7

    add-double v23, v23, v7

    .line 1396
    iget-wide v7, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageConsumePower:D

    iget-wide v11, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageConsumePower:D

    .line 1397
    invoke-static {v7, v8, v11, v12}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(DD)D

    move-result-wide v7

    add-double v25, v25, v7

    .line 1400
    iget-wide v7, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mCachedUsageConsumePower:D

    iget-wide v0, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mCachedUsageConsumePower:D

    .line 1401
    invoke-static {v7, v8, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(DD)D

    move-result-wide v0

    add-double v27, v27, v0

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v8, v29

    move-object/from16 v7, v35

    move-wide/from16 v11, v36

    goto :goto_7

    :cond_d
    move-object/from16 v35, v7

    move-wide/from16 v36, v11

    .line 1405
    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->isSystemEntry()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    if-nez v0, :cond_e

    move-wide/from16 v0, v36

    goto :goto_8

    :cond_e
    move-wide v0, v15

    :goto_8
    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-nez v9, :cond_f

    cmp-long v9, v5, v7

    if-nez v9, :cond_f

    const-wide/16 v11, 0x0

    cmpl-double v9, v19, v11

    if-nez v9, :cond_f

    :goto_9
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v7, v35

    move-wide/from16 v11, v36

    goto/16 :goto_6

    :cond_f
    add-long v11, v0, v5

    long-to-float v9, v11

    long-to-float v11, v2

    cmpl-float v12, v9, v11

    if-lez v12, :cond_11

    div-float/2addr v11, v9

    .line 1422
    sget-boolean v9, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sDebug:Z

    if-eqz v9, :cond_10

    .line 1424
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v9

    invoke-virtual {v9}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1425
    invoke-static {v5, v6}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v12

    invoke-virtual {v12}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v9, v12, v10}, [Ljava/lang/Object;

    move-result-object v9

    const-string v12, "abnormal usage time %d|%d for:\n%s"

    .line 1423
    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "DataProcessor"

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    long-to-float v0, v0

    mul-float/2addr v0, v11

    .line 1429
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    long-to-float v5, v5

    mul-float/2addr v5, v11

    .line 1431
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v5, v5

    float-to-double v11, v11

    mul-double v19, v19, v11

    mul-double v21, v21, v11

    mul-double v23, v23, v11

    mul-double v25, v25, v11

    mul-double v27, v27, v11

    :cond_11
    move-wide/from16 v30, v25

    move-wide/from16 v32, v27

    move-wide/from16 v26, v21

    move-wide/from16 v28, v23

    move-wide/from16 v24, v19

    move-wide/from16 v18, v0

    .line 1440
    iget-wide v0, v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    iget-object v9, v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    .line 1442
    invoke-static {v4, v0, v1, v9}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getScreenOnTime(Ljava/util/Map;JLjava/lang/String;)J

    move-result-wide v0

    .line 1440
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide/from16 v22, v0

    sub-long v0, v2, v0

    .line 1447
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 1449
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-object/from16 v16, v0

    move-object/from16 v17, p0

    move-object/from16 v34, v10

    invoke-direct/range {v16 .. v34}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJJDDDDDLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 1460
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1461
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 1463
    :cond_12
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_13
    move-wide/from16 v36, v11

    .line 1468
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 1472
    :cond_14
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    const/16 v17, 0x0

    move-object v9, v0

    move-object/from16 v10, p0

    move-wide/from16 v11, v36

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    invoke-direct/range {v9 .. v17}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;-><init>(Landroid/content/Context;JLjava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V

    return-object v0
.end method

.method private static interpolateHistory(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    move-object v0, p2

    move-object/from16 v7, p4

    .line 1047
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1050
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 1051
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    add-int/lit8 v8, v1, -0x1

    .line 1052
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1054
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v11, p3

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v12, v4

    :goto_0
    if-ge v12, v8, :cond_1

    .line 1056
    invoke-interface {p2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->interpolateHistoryForSlot(Landroid/content/Context;JLjava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1059
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "CURRENT_TIME_BATTERY_HISTORY_PLACEHOLDER"

    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 1060
    invoke-static {v1, v2}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 1059
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method private static interpolateHistoryForSlot(Landroid/content/Context;JJJLjava/util/Map;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJJ",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v9, p1

    move-object/from16 v1, p7

    move-object/from16 v11, p8

    .line 1103
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/util/Map;

    .line 1105
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/Map;

    .line 1108
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 1109
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTimestamp:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBootTimestamp:J

    sub-long/2addr v2, v4

    cmp-long v1, p3, v2

    const/4 v2, 0x0

    if-gez v1, :cond_1

    .line 1115
    invoke-static/range {p1 .. p2}, Lcom/android/settings/fuelgauge/batteryusage/TimestampUtils;->isMidnight(J)Z

    move-result v1

    if-nez v1, :cond_1

    sub-long v3, p5, v9

    const-wide/32 v5, 0x927c0

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    const-string v1, "force align into the nearest slot"

    .line 1118
    invoke-static {v0, v1, v9, v10, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 1119
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "in the different booting section"

    .line 1121
    invoke-static {v0, v1, v9, v10, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 1122
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string v1, "apply interpolation arithmetic"

    .line 1126
    invoke-static {v0, v1, v9, v10, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 1127
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    sub-long v1, p5, p3

    long-to-double v7, v1

    sub-long v1, v9, p3

    long-to-double v5, v1

    .line 1131
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 1132
    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 1133
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-object/from16 v16, v12

    move-object/from16 p7, v13

    if-eqz v4, :cond_6

    .line 1136
    iget-wide v12, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-wide/from16 p3, v5

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    cmp-long v2, v12, v5

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 1138
    :goto_2
    iget-wide v12, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    cmp-long v5, v12, v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-nez v2, :cond_5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v5, p3

    goto :goto_5

    .line 1141
    :cond_5
    :goto_4
    invoke-interface {v14, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "abnormal reset condition is found"

    .line 1142
    invoke-static {v0, v2, v9, v10, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    move-wide/from16 v5, p3

    move-object/from16 v13, p7

    move-object/from16 v12, v16

    goto :goto_1

    :cond_6
    :goto_5
    div-double v12, v5, v7

    move-object/from16 p3, v1

    move-wide/from16 v1, p1

    move-object/from16 v17, v4

    move-object/from16 p4, v15

    move-object v15, v3

    move-wide/from16 v3, p5

    move-wide/from16 v18, v5

    move-wide v5, v12

    move-wide v12, v7

    move-object/from16 v7, v17

    move-object/from16 v8, p3

    .line 1147
    invoke-static/range {v1 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->interpolate(JJDLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-result-object v1

    .line 1153
    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v17, :cond_7

    const-string v1, "cannot find lower entry data"

    move-object/from16 v2, p3

    .line 1155
    invoke-static {v0, v1, v9, v10, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    :cond_7
    move-object/from16 v15, p4

    move-wide v7, v12

    move-object/from16 v12, v16

    move-wide/from16 v5, v18

    move-object/from16 v13, p7

    goto :goto_1

    .line 1159
    :cond_8
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static interpolateHistoryForSlot(Landroid/content/Context;JLjava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v8, p5

    .line 1069
    invoke-static {v3, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->findNearestTimestamp(Ljava/util/List;J)[J

    move-result-object v3

    const/4 v4, 0x0

    .line 1070
    aget-wide v4, v3, v4

    const/4 v6, 0x1

    .line 1071
    aget-wide v6, v3, v6

    const-wide/16 v9, 0x0

    cmp-long v3, v6, v9

    const/4 v11, 0x0

    if-nez v3, :cond_0

    const-string v3, "job scheduler is delayed"

    .line 1074
    invoke-static {v0, v3, v1, v2, v11}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 1075
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sub-long v12, v6, v1

    const-wide/16 v14, 0x1388

    cmp-long v3, v12, v14

    if-gez v3, :cond_1

    const-string v3, "force align into the nearest slot"

    .line 1081
    invoke-static {v0, v3, v1, v2, v11}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 1082
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v12, p4

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    move-object/from16 v12, p4

    cmp-long v3, v4, v9

    if-nez v3, :cond_2

    const-string/jumbo v3, "no lower timestamp slot data"

    .line 1087
    invoke-static {v0, v3, v1, v2, v11}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 1088
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide v3, v4

    move-wide v5, v6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 1091
    invoke-static/range {v0 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->interpolateHistoryForSlot(Landroid/content/Context;JJJLjava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private static isConsumedFromOtherUsers(IILcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Z
    .locals 6

    .line 1523
    iget v0, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v2, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    int-to-long p0, p1

    cmp-long p0, v2, p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isFromFullCharge(Ljava/util/Map;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "DataProcessor"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "entryList is null in isFromFullCharge()"

    .line 533
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 536
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 537
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "empty entryList in isFromFullCharge()"

    .line 538
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 543
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 544
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryStatus:I

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryLevel:I

    invoke-static {v0, p0}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isCharged(II)Z

    move-result p0

    return p0
.end method

.method private static isSharedGid(I)Z
    .locals 0

    .line 1708
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSystemUid(I)Z
    .locals 1

    .line 1712
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isUsageMapValid(Ljava/util/Map;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1719
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DataProcessor"

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 1720
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    move v1, v3

    .line 1724
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_6

    .line 1725
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v6, "no ["

    if-eqz v4, :cond_5

    .line 1726
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    .line 1731
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 1734
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getTimestamps()Ljava/util/List;

    move-result-object v4

    move v7, v3

    .line 1736
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    if-ge v7, v8, :cond_4

    .line 1737
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1738
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] in batteryUsageMap, hourly size is: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1738
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1727
    :cond_5
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "][SELECTED_INDEX_ALL] in batteryUsageMap, daily size is: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1728
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1727
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    return v5

    :cond_7
    :goto_4
    const-string/jumbo p0, "no [SELECTED_INDEX_ALL][SELECTED_INDEX_ALL] in batteryUsageMap"

    .line 1721
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private static synthetic lambda$addToUsagePeriodMap$5(Ljava/lang/Long;)Ljava/util/Map;
    .locals 0

    .line 939
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$addToUsagePeriodMap$6(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 941
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$convertToBatteryHistEntry$7(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z
    .locals 8

    .line 1027
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInForegroundMs()J

    move-result-wide v0

    .line 1028
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInBackgroundMs()J

    move-result-wide v2

    .line 1029
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 1030
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v4

    cmpl-double p0, v4, v6

    if-nez p0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-nez p0, :cond_1

    cmp-long p0, v2, v4

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

.method private static synthetic lambda$convertToBatteryHistEntry$8(Landroid/os/BatteryUsageStats;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;
    .locals 0

    .line 1033
    invoke-static {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertToBatteryHistEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$findNearestTimestamp$2(J[JLjava/lang/Long;)V
    .locals 5

    .line 552
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-gtz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    aget-wide v3, p2, v2

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 553
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, p2, v2

    .line 555
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const/4 v0, 0x1

    aget-wide v1, p2, v0

    cmp-long p0, p0, v1

    if-gez p0, :cond_1

    .line 556
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    aput-wide p0, p2, v0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$getCoalescedUsageList$14(Landroid/os/UidBatteryConsumer;)I
    .locals 1

    .line 1622
    invoke-virtual {p0}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getRealUid(Landroid/os/UidBatteryConsumer;)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getCurrentBatteryHistoryMapFromStatsService$0(Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Ljava/lang/String;
    .locals 0

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getCurrentBatteryHistoryMapFromStatsService$1(Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;
    .locals 0

    .line 0
    return-object p0
.end method

.method private static synthetic lambda$getHourlyPeriodBatteryLevelData$9(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 1169
    invoke-static {p1, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getPeriodBatteryLevelData(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    move-result-object p1

    .line 1168
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getPeriodBatteryLevelData$10(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 2

    .line 1180
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getLevel(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getScreenOnTime$12(Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;)Ljava/util/stream/Stream;
    .locals 4

    .line 1487
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;

    move-result-object v0

    .line 1489
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getStartTime()J

    move-result-wide v1

    .line 1488
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;->setTimestamp(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->START:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    .line 1490
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;->setType(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;

    move-result-object v0

    .line 1491
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    .line 1492
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;

    move-result-object v1

    .line 1493
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getEndTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;->setTimestamp(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;

    move-result-object p0

    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;->END:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;

    .line 1494
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;->setType(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPointType;)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint$Builder;

    move-result-object p0

    .line 1495
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    filled-new-array {v0, p0}, [Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;

    move-result-object p0

    .line 1486
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getScreenOnTime$13(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;)I
    .locals 2

    .line 1496
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEndPoint;->getTimestamp()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private static synthetic lambda$insertAllUsageDiffData$11(Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V
    .locals 0

    .line 1287
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$loadLabelAndIcon$3(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    .line 876
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    return-void
.end method

.method private static synthetic lambda$loadLabelAndIcon$4(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    .line 878
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    return-void
.end method

.method private static loadAppUsageEventsForUserFromService(Landroid/app/usage/IUsageStatsManager;JJILjava/lang/String;)Landroid/app/usage/UsageEvents;
    .locals 5

    const-string v0, "DataProcessor"

    .line 985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 988
    :try_start_0
    invoke-interface/range {p0 .. p6}, Landroid/app/usage/IUsageStatsManager;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p6, "Error fetching usage events: "

    .line 991
    invoke-static {v0, p6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 993
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 994
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 995
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p5, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getAppUsageEventsForUser(): %d from %d to %d in %d/ms"

    .line 994
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method static loadLabelAndIcon(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 873
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-eqz p0, :cond_1

    .line 875
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda16;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 877
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getSystemDiffEntryList()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda17;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method private static log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V
    .locals 0

    .line 1777
    sget-boolean p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->sDebug:Z

    if-eqz p0, :cond_1

    if-eqz p4, :cond_0

    const-string p0, "%s %s:\n%s"

    goto :goto_0

    :cond_0
    const-string p0, "%s %s:%s"

    .line 1779
    :goto_0
    invoke-static {p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTimeForLogging(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, p1, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 1778
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataProcessor"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static shouldShowBatteryAttributionList(Landroid/content/Context;)Z
    .locals 6

    .line 1589
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    const-string/jumbo p0, "screen.full.display"

    const/4 v1, 0x0

    .line 1591
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double p0, v2, v4

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    .line 1596
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "shouldShowBatteryAttributionList(): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DataProcessor"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private static trimPeriodTime(JJJ)J
    .locals 0

    .line 929
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 930
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static validateAndAddToPeriodList(Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            ">;",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;",
            "JJ)V"
        }
    .end annotation

    .line 914
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getStartTime()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->trimPeriodTime(JJJ)J

    move-result-wide v0

    .line 915
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->getEndTime()J

    move-result-wide v2

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v2 .. v7}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->trimPeriodTime(JJJ)J

    move-result-wide p1

    cmp-long p3, v0, p1

    if-gez p3, :cond_0

    .line 919
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object p3

    .line 920
    invoke-virtual {p3, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setStartTime(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object p3

    .line 921
    invoke-virtual {p3, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;->setEndTime(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod$Builder;

    move-result-object p1

    .line 922
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/AppUsagePeriod;

    .line 923
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
