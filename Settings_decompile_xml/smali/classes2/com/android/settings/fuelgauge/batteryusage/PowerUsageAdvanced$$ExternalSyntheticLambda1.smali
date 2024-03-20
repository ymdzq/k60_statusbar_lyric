.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnBatteryUsageUpdatedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

    return-void
.end method


# virtual methods
.method public final onBatteryUsageUpdated(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryUsageBreakdownController;->handleBatteryUsageUpdated(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;Ljava/lang/String;Z)V

    return-void
.end method
