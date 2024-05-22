.class public final Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl$WifiPickerTrackerFactory$1;
.super Landroid/os/SimpleClock;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final millis()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    move-result-wide v0

    .line 5
    return-wide v0
    .line 6
.end method
