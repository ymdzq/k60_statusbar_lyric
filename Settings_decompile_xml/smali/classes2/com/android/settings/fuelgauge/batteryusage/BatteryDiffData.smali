.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
.super Ljava/lang/Object;
.source "BatteryDiffData.java"


# instance fields
.field private final mAppEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenOnTime:J

.field private final mSystemEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/util/List;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mScreenOnTime:J

    .line 51
    iput-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    .line 52
    iput-object p5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    if-nez p8, :cond_0

    .line 56
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p2

    .line 57
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->purgeBatteryDiffData(Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;)V

    .line 58
    invoke-direct {p0, p1, p2, p6, p7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->combineBatteryDiffEntry(Landroid/content/Context;Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Ljava/util/Set;Ljava/util/Set;)V

    .line 62
    :cond_0
    invoke-static {p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->processAndSortEntries(Ljava/util/List;)V

    .line 63
    invoke-static {p5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->processAndSortEntries(Ljava/util/List;)V

    return-void
.end method

.method private combineBatteryDiffEntry(Landroid/content/Context;Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->combineIntoSystemApps(Landroid/content/Context;Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V

    .line 92
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    invoke-static {p1, p2, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->combineSystemItemsIntoOthers(Landroid/content/Context;Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Ljava/util/List;)V

    return-void
.end method

.method private static combineIntoSystemApps(Landroid/content/Context;Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-interface {p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getSystemAppsAllowlist()Ljava/util/List;

    move-result-object p1

    .line 134
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 137
    invoke-static {v2, p1, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->needsCombineInSystemApp(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 140
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$SystemAppsBatteryDiffEntry;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$SystemAppsBatteryDiffEntry;-><init>(Landroid/content/Context;)V

    .line 142
    :cond_1
    iget-wide v3, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-wide v5, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v3, v5

    iput-wide v3, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    .line 143
    iget-wide v3, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v5, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    .line 146
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getTotalConsumePower()D

    move-result-wide v2

    .line 145
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->setTotalConsumePower(D)V

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 151
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private static combineSystemItemsIntoOthers(Landroid/content/Context;Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;)V"
        }
    .end annotation

    .line 159
    invoke-interface {p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getOthersSystemComponentSet()Ljava/util/Set;

    move-result-object v0

    .line 161
    invoke-interface {p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getOthersCustomComponentNameSet()Ljava/util/Set;

    move-result-object p1

    .line 163
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 164
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 166
    iget-object v4, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget v4, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    .line 170
    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    if-nez v2, :cond_2

    .line 172
    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$OthersBatteryDiffEntry;

    invoke-direct {v2, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry$OthersBatteryDiffEntry;-><init>(Landroid/content/Context;)V

    .line 174
    :cond_2
    iget-wide v4, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-wide v6, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    .line 176
    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getTotalConsumePower()D

    move-result-wide v3

    .line 175
    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->setTotalConsumePower(D)V

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 181
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method static needsCombineInSystemApp(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mIsHidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 200
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    .line 204
    :cond_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget-wide p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    long-to-int p0, p0

    .line 205
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    return v2
.end method

.method static processAndSortEntries(Ljava/util/List;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;)V"
        }
    .end annotation

    .line 214
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 221
    iget-wide v3, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v1, v3

    goto :goto_0

    .line 223
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 224
    invoke-virtual {v3, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->setTotalConsumePower(D)V

    goto :goto_1

    .line 232
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 233
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPercentage()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 236
    :cond_3
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPercentage()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v3, v4

    goto :goto_2

    :cond_4
    const/16 v0, 0x64

    if-gt v2, v0, :cond_5

    if-ge v3, v0, :cond_7

    .line 242
    :cond_5
    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v4, v1

    :goto_3
    add-int/lit8 v5, v2, -0x64

    if-ge v4, v5, :cond_6

    .line 243
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 244
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->setAdjustPercentageOffset(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    rsub-int/lit8 v2, v3, 0x64

    if-ge v1, v2, :cond_7

    .line 246
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 247
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->setAdjustPercentageOffset(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 252
    :cond_7
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private purgeBatteryDiffData(Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->purgeBatteryDiffData(Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Ljava/util/List;)V

    .line 81
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->purgeBatteryDiffData(Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Ljava/util/List;)V

    return-void
.end method

.method private static purgeBatteryDiffData(Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-interface {p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getBatteryUsageListScreenOnTimeThresholdInMs()D

    move-result-wide v0

    .line 101
    invoke-interface {p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getBatteryUsageListConsumePowerThreshold()D

    move-result-wide v2

    .line 102
    invoke-interface {p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getHideSystemComponentSet()Ljava/util/Set;

    move-result-object v4

    .line 104
    invoke-interface {p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getHideBackgroundUsageTimeSet()Ljava/util/Set;

    move-result-object v5

    .line 105
    invoke-interface {p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getHideApplicationSet()Ljava/util/Set;

    move-result-object p0

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 107
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 109
    iget-wide v7, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mScreenOnTimeInMs:J

    .line 110
    iget-wide v9, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    .line 111
    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 112
    iget-object v12, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    iget v12, v12, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mDrainType:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    long-to-double v7, v7

    cmpg-double v7, v7, v0

    if-gez v7, :cond_1

    cmpg-double v7, v9, v2

    if-ltz v7, :cond_2

    :cond_1
    const-string v7, "fake_package"

    .line 115
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 116
    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v11, :cond_3

    .line 117
    invoke-interface {p0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 118
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_3
    if-eqz v11, :cond_0

    .line 120
    invoke-interface {v5, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-wide/16 v7, 0x0

    .line 121
    iput-wide v7, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getAppDiffEntryList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mAppEntries:Ljava/util/List;

    return-object p0
.end method

.method public getScreenOnTime()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mScreenOnTime:J

    return-wide v0
.end method

.method public getSystemDiffEntryList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->mSystemEntries:Ljava/util/List;

    return-object p0
.end method
