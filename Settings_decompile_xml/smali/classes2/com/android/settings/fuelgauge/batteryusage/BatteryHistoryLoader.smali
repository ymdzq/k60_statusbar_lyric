.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "BatteryHistoryLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;->loadInBackground()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/DatabaseUtils;->getHistoryMapSinceLastFullCharge(Landroid/content/Context;Ljava/util/Calendar;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;->onDiscardResult(Ljava/util/Map;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 0
    return-void
.end method
