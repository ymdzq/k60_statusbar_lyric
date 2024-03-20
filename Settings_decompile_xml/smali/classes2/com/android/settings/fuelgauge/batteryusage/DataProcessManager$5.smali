.class Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;
.super Landroid/os/AsyncTask;
.source "DataProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->loadAndApplyBatteryMapFromServiceOnly()V
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
.method public static synthetic $r8$lambda$GBSTwlvR2rLgS8Asl99yPqkx_kU(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;->lambda$onPostExecute$0(Ljava/util/Map;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPostExecute$0(Ljava/util/Map;)V
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fgetmCallbackFunction(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;->onBatteryCallbackDataLoaded(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 356
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

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

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 360
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fgetmContext(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Landroid/content/Context;

    move-result-object p0

    .line 361
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryUsageMapFromStatsService(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 362
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->loadLabelAndIcon(Ljava/util/Map;)V

    .line 365
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

    const-string v0, "execute loadAndApplyBatteryMapFromServiceOnly size=%d in %d/ms"

    .line 363
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 356
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;->onPostExecute(Ljava/util/Map;)V

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

    .line 373
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fputmContext(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;Landroid/content/Context;)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fgetmHandler(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fgetmCallbackFunction(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;->this$0:Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;->-$$Nest$fgetmHandler(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessManager$5;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
