.class public final synthetic Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$OnScreenOnTimeUpdatedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;

    return-void
.end method


# virtual methods
.method public final onScreenOnTimeUpdated(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/ScreenOnTimeController;->handleSceenOnTimeUpdated(Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method
