.class Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;
.super Landroid/os/AsyncTask;
.source "DataProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->generateFinalDataAndApplyCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;


# direct methods
.method public static synthetic $r8$lambda$dBgXEjI1_APNwYG_LlHppwMRKsI(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->lambda$onPostExecute$0(Ljava/util/Map;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPostExecute$0(Ljava/util/Map;)V
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fgetmCallbackFunction(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;->onBatteryCallbackDataLoaded(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 416
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;"
        }
    .end annotation

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 420
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fgetmContext(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fgetmHourlyBatteryLevelsPerDay(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fgetmBatteryHistoryMap(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/Map;

    move-result-object v3

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fgetmAppUsagePeriodMap(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Ljava/util/Map;

    move-result-object p0

    .line 421
    invoke-static {p1, v2, v3, p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryUsageMap(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 424
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->loadLabelAndIcon(Ljava/util/Map;)V

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "execute generateFinalDataAndApplyCallback in %d/ms"

    .line 425
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 416
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
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

    .line 434
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fputmContext(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;Landroid/content/Context;)V

    .line 435
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fputmHourlyBatteryLevelsPerDay(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;Ljava/util/List;)V

    .line 436
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fputmBatteryHistoryMap(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;Ljava/util/Map;)V

    .line 438
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fgetmHandler(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fgetmCallbackFunction(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fgetmHandler(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$6;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
