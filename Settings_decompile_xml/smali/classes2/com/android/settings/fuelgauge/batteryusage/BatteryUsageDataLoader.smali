.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDataLoader;
.super Ljava/lang/Object;
.source "BatteryUsageDataLoader.java"


# static fields
.field static sFakeBatteryEntryListSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4hcmKfAgEJXevc7erUeL6LOSkTI(Landroid/content/Context;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDataLoader;->lambda$enqueueWork$0(Landroid/content/Context;Z)V

    return-void
.end method

.method static enqueueWork(Landroid/content/Context;Z)V
    .locals 1

    .line 41
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDataLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDataLoader$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$enqueueWork$0(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "BatteryUsageDataLoader"

    const-string v1, "loadUsageDataSafely() in the AsyncTask"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDataLoader;->loadUsageDataSafely(Landroid/content/Context;Z)V

    return-void
.end method

.method static loadUsageData(Landroid/content/Context;Z)V
    .locals 7

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 50
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryUsageStats(Landroid/content/Context;)Landroid/os/BatteryUsageStats;

    move-result-object v2

    .line 52
    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDataLoader;->sFakeBatteryEntryListSupplier:Ljava/util/function/Supplier;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->generateBatteryEntryListFromBatteryUsageStats(Landroid/content/Context;Landroid/os/BatteryUsageStats;)Ljava/util/List;

    move-result-object v3

    :goto_0
    const-string v4, "BatteryUsageDataLoader"

    if-eqz v3, :cond_1

    .line 55
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "getBatteryEntryList() returns null or empty content"

    .line 56
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 59
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getBatteryUsageStats() in %d/ms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const-string v0, "last_load_full_charge_time"

    .line 61
    invoke-static {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->recordDateTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    :cond_3
    invoke-static {p0, v3, v2, p1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->sendBatteryEntryData(Landroid/content/Context;Ljava/util/List;Landroid/os/BatteryUsageStats;Z)Ljava/util/List;

    .line 68
    invoke-static {v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->closeBatteryUsageStats(Landroid/os/BatteryUsageStats;)V

    return-void
.end method

.method private static loadUsageDataSafely(Landroid/content/Context;Z)V
    .locals 1

    .line 74
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDataLoader;->loadUsageData(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadUsageData:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryUsageDataLoader"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
