.class public Lcom/android/settings/fuelgauge/BatteryWifiParser;
.super Lcom/android/settings/fuelgauge/BatteryFlagParser;
.source "BatteryWifiParser.java"


# virtual methods
.method protected isSet(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 2

    .line 28
    iget p0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 p0, p0, 0xf

    const/4 p1, 0x0

    shr-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    return p1
.end method
