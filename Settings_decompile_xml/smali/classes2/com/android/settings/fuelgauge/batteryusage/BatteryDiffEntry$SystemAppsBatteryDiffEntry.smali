.class Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$SystemAppsBatteryDiffEntry;
.super Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
.source "BatteryDiffEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemAppsBatteryDiffEntry"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    .line 417
    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-object/from16 v18, v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Landroid/content/ContentValues;)V

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJJDDDDDLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
    .locals 3

    .line 462
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$SystemAppsBatteryDiffEntry;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$SystemAppsBatteryDiffEntry;-><init>(Landroid/content/Context;)V

    .line 463
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    .line 464
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    .line 465
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    .line 466
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    .line 467
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageConsumePower:D

    .line 468
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundServiceUsageConsumePower:D

    .line 469
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageConsumePower:D

    .line 470
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mCachedUsageConsumePower:D

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$SystemAppsBatteryDiffEntry;->clone()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object p0

    return-object p0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 441
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$drawable;->ic_power_system:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .line 436
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->battery_usage_system_apps:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "A|SystemApps"

    return-object p0
.end method

.method public getSortingKey()D
    .locals 2

    .line 0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public isSystemEntry()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public validForRestriction()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
