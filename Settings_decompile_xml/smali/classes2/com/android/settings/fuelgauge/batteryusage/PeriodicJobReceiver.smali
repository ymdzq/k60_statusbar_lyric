.class public final Lcom/android/settings/fuelgauge/batteryusage/PeriodicJobReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PeriodicJobReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p2, "com.android.settings.battery.action.PERIODIC_JOB_UPDATE"

    .line 34
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "PeriodicJobReceiver"

    if-nez p2, :cond_1

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "receive unexpected action="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 38
    :cond_1
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->isWorkProfile(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "do not refresh job for work profile action="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 42
    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageDataLoader;->enqueueWork(Landroid/content/Context;Z)V

    .line 43
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/AppUsageDataLoader;->enqueueWork(Landroid/content/Context;)V

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refresh periodic job from action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/PeriodicJobManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/PeriodicJobManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/PeriodicJobManager;->refreshJob(Z)V

    .line 46
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->clearExpiredDataIfNeeded(Landroid/content/Context;)V

    return-void
.end method
