.class public Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;
.super Ljava/lang/Object;
.source "MiuiBatteryStatus.java"


# instance fields
.field public chargeDeviceType:I

.field public chargeSpeed:I

.field public health:I

.field public level:I

.field public maxChargingWattage:I

.field public plugged:I

.field public status:I

.field public wireState:I


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->status:I

    .line 31
    iput p2, p0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->plugged:I

    .line 32
    iput p3, p0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->level:I

    .line 33
    iput p4, p0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->wireState:I

    .line 34
    iput p5, p0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->chargeSpeed:I

    .line 35
    iput p6, p0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->chargeDeviceType:I

    .line 36
    iput p7, p0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->health:I

    .line 37
    iput p8, p0, Lsrc/com/android/settings/deviceinfo/aboutphone/MiuiBatteryStatus;->maxChargingWattage:I

    return-void
.end method

.method public static getMaxChargingWattage(Landroid/content/Intent;)I
    .locals 3

    const-string v0, "max_charging_current"

    const/4 v1, -0x1

    .line 102
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "max_charging_voltage"

    .line 103
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-gtz p0, :cond_0

    const p0, 0x4c4b40

    :cond_0
    if-lez v0, :cond_1

    .line 108
    div-int/lit16 v0, v0, 0x3e8

    div-int/lit16 p0, p0, 0x3e8

    mul-int v1, v0, p0

    :cond_1
    return v1
.end method
