.class public final Lcom/android/settingslib/applications/InterestingConfigChanges;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mFlags:I

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public mLastDensity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/content/res/Configuration;

    .line 5
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 10
    iput p1, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mFlags:I

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final applyNewConfig(Landroid/content/res/Resources;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 6
    invoke-static {v1, v0}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 12
    move-result v0

    .line 15
    iget v1, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    .line 16
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    move-result-object v2

    .line 21
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 22
    const/4 v3, 0x1

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eq v1, v2, :cond_0

    .line 26
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v4

    .line 30
    :goto_0
    if-nez v1, :cond_2

    .line 31
    iget v1, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mFlags:I

    .line 33
    and-int/2addr v0, v1

    .line 35
    if-eqz v0, :cond_1

    .line 36
    goto :goto_1

    .line 38
    :cond_1
    return v4

    .line 39
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 40
    move-result-object p1

    .line 43
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 44
    iput p1, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    .line 46
    return v3
    .line 48
.end method
