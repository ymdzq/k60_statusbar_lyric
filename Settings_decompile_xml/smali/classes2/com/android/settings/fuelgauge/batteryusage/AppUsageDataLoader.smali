.class public final Lcom/android/settings/fuelgauge/batteryusage/AppUsageDataLoader;
.super Ljava/lang/Object;
.source "AppUsageDataLoader.java"


# static fields
.field static sFakeAppUsageEventsSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/usage/UsageEvents;",
            ">;>;"
        }
    .end annotation
.end field

.field static sFakeUsageEventsListSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/AppUsageEvent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6eH82ij5vU_A1FnkUsh1-HicAIo(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageDataLoader;->lambda$enqueueWork$0(Landroid/content/Context;)V

    return-void
.end method

.method static enqueueWork(Landroid/content/Context;)V
    .locals 1

    .line 43
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/AppUsageDataLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageDataLoader$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$enqueueWork$0(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AppUsageDataLoader"

    const-string v1, "loadAppUsageDataSafely() in the AsyncTask"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageDataLoader;->loadAppUsageDataSafely(Landroid/content/Context;)V

    return-void
.end method

.method static loadAppUsageData(Landroid/content/Context;)V
    .locals 6

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/AppUsageDataLoader;->sFakeAppUsageEventsSupplier:Ljava/util/function/Supplier;

    if-eqz v2, :cond_0

    .line 54
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getAppUsageEvents(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    :goto_0
    const-string v3, "AppUsageDataLoader"

    if-nez v2, :cond_1

    const-string p0, "loadAppUsageData() returns null"

    .line 57
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 61
    :cond_1
    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/AppUsageDataLoader;->sFakeUsageEventsListSupplier:Ljava/util/function/Supplier;

    if-eqz v4, :cond_2

    .line 62
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_1

    .line 63
    :cond_2
    invoke-static {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->generateAppUsageEventListFromUsageEvents(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    .line 65
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 69
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 70
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 71
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "loadAppUsageData() size=%d in %d/ms"

    .line 70
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->sendAppUsageEventData(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    return-void

    :cond_4
    :goto_2
    const-string p0, "loadAppUsageData() returns null or empty content"

    .line 66
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loadAppUsageDataSafely(Landroid/content/Context;)V
    .locals 2

    .line 78
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageDataLoader;->loadAppUsageData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAppUsageData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppUsageDataLoader"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
