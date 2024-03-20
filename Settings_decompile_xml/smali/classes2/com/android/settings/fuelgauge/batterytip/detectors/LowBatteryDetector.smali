.class public Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;
.super Ljava/lang/Object;
.source "LowBatteryDetector.java"


# instance fields
.field private final mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field private final mIsPowerSaveMode:Z

.field private final mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

.field private final mWarningLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settings/fuelgauge/BatteryInfo;Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    .line 41
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00a6    # @android:integer/config_maxShortcutTargetsPerApp

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mWarningLevel:I

    .line 44
    iput-boolean p4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mIsPowerSaveMode:Z

    return-void
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    iget v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mWarningLevel:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_1

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-eqz v1, :cond_0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-eqz v2, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget v5, v5, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->lowBatteryHour:I

    int-to-long v5, v5

    .line 51
    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 52
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v2, v1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->lowBatteryEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mIsPowerSaveMode:Z

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    .line 53
    :goto_2
    iget-boolean v1, v1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testLowBatteryTip:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-boolean v1, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x2

    .line 64
    :goto_4
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->mIsPowerSaveMode:Z

    invoke-direct {v0, v4, p0}, Lcom/android/settings/fuelgauge/batterytip/tips/LowBatteryTip;-><init>(IZ)V

    return-object v0
.end method
