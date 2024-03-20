.class public final Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# direct methods
.method private static constructBatteryInformation(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;IIIJ)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;
    .locals 1

    .line 408
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState$Builder;

    move-result-object v0

    .line 409
    invoke-virtual {v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState$Builder;->setBatteryLevel(I)Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState$Builder;

    move-result-object p2

    .line 410
    invoke-virtual {p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState$Builder;->setBatteryStatus(I)Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState$Builder;

    move-result-object p2

    .line 411
    invoke-virtual {p2, p4}, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState$Builder;->setBatteryHealth(I)Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState$Builder;

    move-result-object p2

    .line 412
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;

    .line 415
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p3

    .line 416
    invoke-virtual {p3, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setDeviceBatteryState(Lcom/android/settings/fuelgauge/batteryusage/DeviceBatteryState;)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p2

    .line 417
    invoke-virtual {p2, p5, p6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setBootTimestamp(J)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p2

    .line 418
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setZoneId(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->isHidden()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setIsHidden(Z)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p3

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string p4, ""

    :goto_0
    invoke-virtual {p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setAppLabel(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p3

    .line 423
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setTotalPower(D)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p1

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setConsumePower(D)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p1

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPowerInForeground()D

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setForegroundUsageConsumePower(D)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p1

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPowerInForegroundService()D

    move-result-wide p3

    .line 426
    invoke-virtual {p1, p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setForegroundServiceUsageConsumePower(D)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p1

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPowerInBackground()D

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setBackgroundUsageConsumePower(D)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p1

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPowerInCached()D

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setCachedUsageConsumePower(D)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p1

    iget-wide p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPercent:D

    .line 430
    invoke-virtual {p1, p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setPercentOfTotal(D)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p1

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getPowerComponentId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setDrainType(I)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p1

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInForegroundMs()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setForegroundUsageTimeInMs(J)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    move-result-object p1

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInBackgroundMs()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;->setBackgroundUsageTimeInMs(J)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation$Builder;

    .line 435
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    return-object p0
.end method

.method public static convertAppUsageEventToContentValues(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;)Landroid/content/ContentValues;
    .locals 3

    .line 118
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getUid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appUsageEventType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "packageName"

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getInstanceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "instanceId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "taskRootPackageName"

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static convertBatteryEntryToContentValues(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;IIIJJZ)Landroid/content/ContentValues;
    .locals 4

    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "packageName"

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getUid()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "userId"

    .line 86
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumerType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "consumerType"

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const-string v2, "fake_package"

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v1, "timestamp"

    .line 95
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p7, "isFullChargeCycleStart"

    .line 97
    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p8

    .line 96
    invoke-virtual {v0, p7, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 99
    invoke-static/range {p0 .. p6}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->constructBatteryInformation(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;IIIJ)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    move-result-object p0

    const-string p1, "batteryInformation"

    .line 107
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertBatteryInformationToString(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;)Ljava/lang/String;

    move-result-object p2

    .line 106
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo p2, "userdebug"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "batteryInformationDebug"

    .line 111
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toString()Ljava/lang/String;

    move-result-object p0

    .line 110
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static convertBatteryEventToContentValues(Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;)Landroid/content/ContentValues;
    .locals 3

    .line 131
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getType()Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "batteryEventType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->getBatteryLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "batteryLevel"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static convertBatteryInformationToString(Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;)Ljava/lang/String;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertToAppUsageEvent(Landroid/content/Context;Landroid/app/usage/IUsageStatsManager;Landroid/app/usage/UsageEvents$Event;J)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;
    .locals 6

    .line 186
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "ConvertUtils"

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Ignoring a usage event with null package name (timestamp=%d, type=%d)"

    .line 191
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 197
    :cond_0
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    move-result-object v3

    .line 199
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setTimestamp(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    move-result-object v4

    .line 200
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getAppUsageEventType(I)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setType(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    move-result-object v4

    .line 201
    invoke-virtual {v4, v0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    move-result-object v4

    .line 202
    invoke-virtual {v4, p3, p4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setUserId(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    .line 204
    invoke-static {p2}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getTaskRootPackageName(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 206
    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setTaskRootPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    .line 210
    :cond_1
    invoke-static {p1, v0, v4}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getEffectivePackageName(Landroid/app/usage/IUsageStatsManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    long-to-int v0, p3

    .line 214
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    int-to-long p0, p0

    .line 215
    invoke-virtual {v3, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setUid(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :try_start_1
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getInstanceId()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setInstanceId(I)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "UsageEvent instance ID API error"

    .line 225
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    return-object p0

    .line 218
    :catch_1
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Fail to get uid for package %s of user %d)"

    .line 217
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static convertToAppUsageEventFromCursor(Landroid/database/Cursor;)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;
    .locals 3

    .line 232
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    .line 233
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setTimestamp(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    const-string v1, "appUsageEventType"

    .line 236
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getIntegerFromCursor(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 235
    invoke-static {v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->forNumber(I)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setType(Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    const-string/jumbo v1, "packageName"

    .line 239
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    const-string v1, "instanceId"

    .line 241
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getIntegerFromCursor(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 240
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setInstanceId(I)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    const-string/jumbo v1, "taskRootPackageName"

    .line 243
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setTaskRootPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    const-string/jumbo v1, "userId"

    .line 244
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setUserId(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    const-string/jumbo v1, "uid"

    .line 245
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;->setUid(J)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent$Builder;

    .line 246
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;

    return-object p0
.end method

.method public static convertToBatteryEvent(JLcom/android/settings/fuelgauge/batteryusage/BatteryEventType;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;
    .locals 1

    .line 252
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;->setTimestamp(J)Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;

    .line 254
    invoke-virtual {v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;->setType(Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;)Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;

    .line 255
    invoke-virtual {v0, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;->setBatteryLevel(I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;

    .line 256
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;

    return-object p0
.end method

.method public static convertToBatteryEventFromCursor(Landroid/database/Cursor;)Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;
    .locals 3

    .line 261
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;->newBuilder()Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    .line 262
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;->setTimestamp(J)Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;

    const-string v1, "batteryEventType"

    .line 265
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getIntegerFromCursor(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 264
    invoke-static {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;->forNumber(I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;->setType(Lcom/android/settings/fuelgauge/batteryusage/BatteryEventType;)Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;

    const-string v1, "batteryLevel"

    .line 268
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getIntegerFromCursor(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p0

    .line 267
    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;->setBatteryLevel(I)Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent$Builder;

    .line 269
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEvent;

    return-object p0
.end method

.method public static convertToBatteryHistEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;
    .locals 11

    .line 169
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 170
    invoke-static/range {v1 .. v10}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertBatteryEntryToContentValues(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;IIIJJZ)Landroid/content/ContentValues;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Landroid/content/ContentValues;)V

    return-object v0
.end method

.method private static getAppUsageEventType(I)Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    .line 395
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->UNKNOWN:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    return-object p0

    .line 393
    :cond_0
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->DEVICE_SHUTDOWN:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    return-object p0

    .line 391
    :cond_1
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->ACTIVITY_STOPPED:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    return-object p0

    .line 389
    :cond_2
    sget-object p0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;->ACTIVITY_RESUMED:Lcom/android/settings/fuelgauge/batteryusage/AppUsageEventType;

    return-object p0
.end method

.method public static getBatteryInformation(Landroid/content/ContentValues;Ljava/lang/String;)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;
    .locals 2

    .line 147
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->parseProtoFromString(Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getBatteryInformation(Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;
    .locals 1

    .line 156
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;->getDefaultInstance()Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    move-result-object v0

    .line 157
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 160
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-static {p0, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->parseProtoFromString(Ljava/lang/String;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryInformation;

    return-object p0

    :cond_0
    return-object v0
.end method

.method static getEffectivePackageName(Landroid/app/usage/IUsageStatsManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 327
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getUsageSource(Landroid/app/usage/IUsageStatsManager;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p2, 0x2

    if-eq p0, p2, :cond_0

    .line 336
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected usage source: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ConvertUtils"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1

    .line 330
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    move-object p1, p2

    :cond_2
    return-object p1
.end method

.method private static getIntegerFromCursor(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 0

    .line 439
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 441
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    if-nez p0, :cond_0

    .line 304
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 308
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    .line 309
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 0

    .line 447
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 449
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 455
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 457
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static getTaskRootPackageName(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;
    .locals 8

    const-string v0, "ConvertUtils"

    .line 352
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/16 v4, 0x17

    if-eq v1, v4, :cond_0

    return-object v2

    .line 359
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "Null task root in event with timestamp %d, type=%d, package %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 363
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x2

    aput-object p0, v5, v3

    .line 361
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    const-string p0, "Failed to call Event#getTaskRootPackageName()"

    .line 367
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static getUsageSource(Landroid/app/usage/IUsageStatsManager;)I
    .locals 2

    .line 379
    :try_start_0
    invoke-interface {p0}, Landroid/app/usage/IUsageStatsManager;->getUsageSource()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ConvertUtils"

    const-string v1, "Failed to getUsageSource"

    .line 381
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x2

    return p0
.end method

.method public static utcToLocalTimeDayOfWeek(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 0

    .line 295
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    if-eqz p3, :cond_0

    const-string p3, "E"

    goto :goto_0

    :cond_0
    const-string p3, "EEEE"

    .line 296
    :goto_0
    invoke-static {p0, p3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 298
    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utcToLocalTimeForLogging(J)Ljava/lang/String;
    .locals 2

    .line 275
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "MMM dd,yyyy HH:mm:ss"

    .line 277
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utcToLocalTimeHour(Landroid/content/Context;JZZ)Ljava/lang/String;
    .locals 0

    .line 284
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    if-eqz p3, :cond_0

    const-string p3, "HHm"

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    const-string p3, "hma"

    goto :goto_0

    :cond_1
    const-string p3, "ha"

    .line 288
    :goto_0
    invoke-static {p0, p3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
