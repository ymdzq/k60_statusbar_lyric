.class Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;
.super Ljava/lang/Object;
.source "PowerUsageAdvanced.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryHistoryLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mRefreshType:I

.field final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;


# direct methods
.method private constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;>;"
        }
    .end annotation

    const-string/jumbo p1, "refresh_type"

    .line 215
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;->mRefreshType:I

    .line 216
    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 207
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/Map;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 222
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;->this$0:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;

    iput-object p2, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryHistoryMap:Ljava/util/Map;

    .line 223
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;->mRefreshType:I

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->onLoadFinished(I)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;>;)V"
        }
    .end annotation

    .line 0
    return-void
.end method
