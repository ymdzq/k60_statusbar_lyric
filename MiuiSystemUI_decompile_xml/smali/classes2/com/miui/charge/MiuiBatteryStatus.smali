.class public final Lcom/miui/charge/MiuiBatteryStatus;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public carChargeMode:I

.field public chargeDeviceType:I

.field public chargeSpeed:I

.field public chargingStatus:I

.field public incompatibleCharger:Ljava/util/Optional;

.field public level:I

.field public maxChargingWattage:I

.field public plugged:I

.field public final present:Z

.field public status:I

.field public wireState:I


# direct methods
.method public constructor <init>(IIIIIIIIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/miui/charge/MiuiBatteryStatus;->status:I

    .line 3
    iput p2, p0, Lcom/miui/charge/MiuiBatteryStatus;->plugged:I

    .line 4
    iput p3, p0, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 5
    iput p4, p0, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 6
    iput p5, p0, Lcom/miui/charge/MiuiBatteryStatus;->chargeSpeed:I

    .line 7
    iput p6, p0, Lcom/miui/charge/MiuiBatteryStatus;->chargeDeviceType:I

    .line 8
    iput p7, p0, Lcom/miui/charge/MiuiBatteryStatus;->chargingStatus:I

    .line 9
    iput p8, p0, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 10
    iput p9, p0, Lcom/miui/charge/MiuiBatteryStatus;->carChargeMode:I

    .line 11
    iput-boolean p10, p0, Lcom/miui/charge/MiuiBatteryStatus;->present:Z

    .line 12
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/charge/MiuiBatteryStatus;->incompatibleCharger:Ljava/util/Optional;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/fuelgauge/BatteryStatus;Z)V
    .locals 3

    .line 13
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget v0, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    iput v0, p0, Lcom/miui/charge/MiuiBatteryStatus;->status:I

    .line 16
    iget v1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    iput v1, p0, Lcom/miui/charge/MiuiBatteryStatus;->plugged:I

    .line 17
    iget v2, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    iput v2, p0, Lcom/miui/charge/MiuiBatteryStatus;->level:I

    .line 18
    iget-boolean v2, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->present:Z

    iput-boolean v2, p0, Lcom/miui/charge/MiuiBatteryStatus;->present:Z

    .line 19
    iget p1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    iput p1, p0, Lcom/miui/charge/MiuiBatteryStatus;->maxChargingWattage:I

    .line 20
    invoke-static {v1, v0}, Lcom/miui/charge/MiuiBatteryStatus;->checkWireState(II)I

    move-result p1

    iput p1, p0, Lcom/miui/charge/MiuiBatteryStatus;->wireState:I

    .line 21
    iput-object p2, p0, Lcom/miui/charge/MiuiBatteryStatus;->incompatibleCharger:Ljava/util/Optional;

    return-void
.end method

.method public static checkWireState(II)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x4

    .line 4
    if-ne p0, v2, :cond_0

    .line 5
    move v3, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v3, v0

    .line 9
    :goto_0
    const/4 v4, 0x2

    .line 10
    if-eq p0, v1, :cond_1

    .line 11
    if-ne p0, v4, :cond_2

    .line 13
    :cond_1
    move v0, v1

    .line 15
    :cond_2
    if-eq p1, v4, :cond_3

    .line 16
    const/4 p0, 0x5

    .line 18
    if-eq p1, p0, :cond_3

    .line 19
    if-ne p1, v2, :cond_5

    .line 21
    :cond_3
    if-eqz v3, :cond_4

    .line 23
    const/16 p0, 0xa

    .line 25
    return p0

    .line 27
    :cond_4
    if-eqz v0, :cond_5

    .line 28
    const/16 p0, 0xb

    .line 30
    return p0

    .line 32
    :cond_5
    const/4 p0, -0x1

    .line 33
    return p0
    .line 34
.end method


# virtual methods
.method public final isCharging()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/charge/MiuiBatteryStatus;->isPluggedIn()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    iget p0, p0, Lcom/miui/charge/MiuiBatteryStatus;->status:I

    .line 9
    const/4 v0, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p0, v0, :cond_1

    .line 13
    const/4 v0, 0x5

    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    move p0, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move p0, v2

    .line 21
    :goto_1
    if-eqz p0, :cond_2

    .line 22
    move v1, v2

    .line 24
    :cond_2
    return v1
    .line 25
.end method

.method public final isPluggedIn()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/miui/charge/MiuiBatteryStatus;->plugged:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v1, 0x2

    .line 7
    if-eq p0, v1, :cond_1

    .line 8
    const/4 v1, 0x4

    .line 10
    if-ne p0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :cond_1
    :goto_0
    return v0
    .line 15
.end method
