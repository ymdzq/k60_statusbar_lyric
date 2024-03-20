.class public Lcom/android/settings/fuelgauge/BatteryFlagParser;
.super Ljava/lang/Object;
.source "BatteryFlagParser.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;
.implements Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;


# instance fields
.field private final mAccentColor:I

.field private final mData:Landroid/util/SparseBooleanArray;

.field private final mFlag:I

.field private mLastSet:Z

.field private mLastTime:J

.field private mLength:J

.field private final mState2:Z


# direct methods
.method private getColor(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 96
    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mAccentColor:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getColorArray()Landroid/util/SparseIntArray;
    .locals 4

    .line 87
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x0

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/fuelgauge/BatteryFlagParser;->getColor(Z)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPeriod()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLength:J

    return-wide v0
.end method

.method protected isSet(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mState2:Z

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    :goto_0
    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mFlag:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public onDataGap()V
    .locals 3

    .line 61
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastTime:J

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 63
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    :cond_0
    return-void
.end method

.method public onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V
    .locals 2

    .line 51
    invoke-virtual {p0, p3}, Lcom/android/settings/fuelgauge/BatteryFlagParser;->isSet(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result p3

    .line 52
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    if-eq p3, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    long-to-int v1, p1

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 54
    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    .line 56
    :cond_0
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastTime:J

    return-void
.end method

.method public onParsingDone()V
    .locals 3

    .line 69
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mData:Landroid/util/SparseBooleanArray;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastTime:J

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 71
    iput-boolean v2, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLastSet:Z

    :cond_0
    return-void
.end method

.method public onParsingStarted(JJ)V
    .locals 0

    sub-long/2addr p3, p1

    .line 46
    iput-wide p3, p0, Lcom/android/settings/fuelgauge/BatteryFlagParser;->mLength:J

    return-void
.end method
