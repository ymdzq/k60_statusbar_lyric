.class public final Lcom/android/settingslib/fuelgauge/BatteryStatus;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final chargingStatus:I

.field public final level:I

.field public final maxChargingWattage:I

.field public final plugged:I

.field public final present:Z

.field public final status:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Z)V
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    move-result-object p2

    .line 5
    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string/jumbo p2, "status"

    .line 12
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    move-result p2

    .line 19
    iput p2, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    .line 20
    const-string p2, "plugged"

    .line 22
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    move-result p2

    .line 28
    iput p2, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    .line 29
    const-string p2, "level"

    .line 31
    const/4 v2, -0x1

    .line 33
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 34
    move-result p2

    .line 37
    const-string/jumbo v3, "scale"

    .line 38
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 41
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    move p2, v2

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    int-to-float p2, p2

    .line 49
    int-to-float v1, v1

    .line 50
    div-float/2addr p2, v1

    .line 51
    const/high16 v1, 0x42c80000    # 100.0f

    .line 52
    mul-float/2addr p2, v1

    .line 54
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 55
    move-result p2

    .line 58
    :goto_0
    iput p2, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    .line 59
    const-string p2, "android.os.extra.CHARGING_STATUS"

    .line 61
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 63
    move-result p2

    .line 66
    iput p2, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->chargingStatus:I

    .line 67
    const-string p2, "present"

    .line 69
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 71
    move-result p2

    .line 74
    iput-boolean p2, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->present:Z

    .line 75
    const-string p2, "max_charging_current"

    .line 77
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 79
    move-result p2

    .line 82
    const-string v0, "max_charging_voltage"

    .line 83
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 85
    move-result p1

    .line 88
    if-gtz p1, :cond_1

    .line 89
    const p1, 0x4c4b40

    .line 91
    :cond_1
    if-lez p2, :cond_2

    .line 94
    div-int/lit16 p2, p2, 0x3e8

    .line 96
    div-int/lit16 p1, p1, 0x3e8

    .line 98
    mul-int/2addr p1, p2

    .line 100
    iput p1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    .line 101
    goto :goto_1

    .line 103
    :cond_2
    iput v2, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    .line 104
    :goto_1
    return-void
    .line 106
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "BatteryStatus{status="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ",level="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ",plugged="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ",chargingStatus="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->chargingStatus:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ",maxChargingWattage="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    .line 49
    const-string/jumbo v1, "}"

    .line 51
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 57
    return-object p0
    .line 58
.end method
