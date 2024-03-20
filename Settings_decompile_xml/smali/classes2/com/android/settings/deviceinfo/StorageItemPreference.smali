.class public Lcom/android/settings/deviceinfo/StorageItemPreference;
.super Lcom/android/settingslib/miuisettings/preference/IconPreference;
.source "StorageItemPreference.java"


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressPercent:I

.field private mStorageSize:J


# direct methods
.method public static synthetic $r8$lambda$QVT92ldPcX3QWfnTfSpzQ-ZCP6o(Lcom/android/settings/deviceinfo/StorageItemPreference;JLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->lambda$setStorageSize$1(JLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S6_7RuVDkO9didILylqGngm4Fqc(FLjava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->lambda$setStorageSize$0(FLjava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/miuisettings/preference/IconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    .line 59
    sget p1, Lcom/android/settings/R$string;->memory_calculating_size:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private static synthetic lambda$setStorageSize$0(FLjava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 74
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-object p2

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr v2, p1

    long-to-float p1, v2

    mul-float/2addr p0, p1

    float-to-long p0, p0

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setStorageSize$1(JLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 83
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/settings/deviceinfo/StorageItemPreference;->updateProgressBarAndSizeInfo(JJ)V

    return-void
.end method

.method private updateProgressBarAndSizeInfo(JJ)V
    .locals 2

    .line 106
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->getStorageSizeLabel(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    .line 107
    div-long/2addr p1, p3

    long-to-int p1, p1

    :goto_0
    iput p1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->updateProgressBar()V

    return-void
.end method


# virtual methods
.method public getStorageSize()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mStorageSize:J

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    const v0, 0x102000d    # @android:id/progress

    .line 113
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->updateProgressBar()V

    .line 115
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setStorageSize(JJZ)V
    .locals 2

    if-eqz p5, :cond_0

    .line 71
    new-instance p5, Lcom/android/settings/deviceinfo/StorageItemPreference$$ExternalSyntheticLambda0;

    invoke-direct {p5}, Lcom/android/settings/deviceinfo/StorageItemPreference$$ExternalSyntheticLambda0;-><init>()V

    .line 79
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mStorageSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p5

    const-wide/16 v0, 0x3e8

    .line 80
    invoke-virtual {p5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 81
    new-instance v0, Lcom/android/settings/deviceinfo/StorageItemPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/settings/deviceinfo/StorageItemPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/deviceinfo/StorageItemPreference;J)V

    invoke-virtual {p5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/deviceinfo/StorageItemPreference;->updateProgressBarAndSizeInfo(JJ)V

    .line 89
    :goto_0
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mStorageSize:J

    return-void
.end method

.method protected updateProgressBar()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    iget p0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method
