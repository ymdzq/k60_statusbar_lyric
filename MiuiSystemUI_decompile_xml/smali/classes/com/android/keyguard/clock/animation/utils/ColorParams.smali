.class public Lcom/android/keyguard/clock/animation/utils/ColorParams;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private fraction:F

.field mColorDataEvaluator:Landroid/animation/ArgbEvaluator;

.field private mCurrentColor:I

.field private mEndColor:I

.field private mStartColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/keyguard/clock/animation/utils/ColorParams;->mColorDataEvaluator:Landroid/animation/ArgbEvaluator;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public getCurrentColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/ColorParams;->mCurrentColor:I

    .line 2
    return p0
    .line 4
.end method

.method public getEndColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/ColorParams;->mEndColor:I

    .line 2
    return p0
    .line 4
.end method

.method public getFraction()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/ColorParams;->fraction:F

    .line 2
    return p0
    .line 4
.end method

.method public getStartColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/clock/animation/utils/ColorParams;->mStartColor:I

    .line 2
    return p0
    .line 4
.end method

.method public setEndColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/clock/animation/utils/ColorParams;->mEndColor:I

    .line 2
    return-void
    .line 4
.end method

.method public setFraction(F)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-ltz v0, :cond_1

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    cmpl-float v0, p1, v0

    .line 9
    if-lez v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/utils/ColorParams;->mColorDataEvaluator:Landroid/animation/ArgbEvaluator;

    .line 14
    iget v1, p0, Lcom/android/keyguard/clock/animation/utils/ColorParams;->mStartColor:I

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 21
    iget v2, p0, Lcom/android/keyguard/clock/animation/utils/ColorParams;->mEndColor:I

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 27
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Integer;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v0

    .line 37
    iput v0, p0, Lcom/android/keyguard/clock/animation/utils/ColorParams;->mCurrentColor:I

    .line 38
    iput p1, p0, Lcom/android/keyguard/clock/animation/utils/ColorParams;->fraction:F

    .line 40
    :cond_1
    :goto_0
    return-void
    .line 42
.end method

.method public setStartColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/clock/animation/utils/ColorParams;->mStartColor:I

    .line 2
    return-void
    .line 4
.end method
