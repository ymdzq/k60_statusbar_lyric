.class public abstract Lcom/android/systemui/animation/LaunchAnimator$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/animation/LaunchAnimator$Timings;->totalDuration:J

    .line 2
    long-to-float p0, v0

    .line 4
    mul-float/2addr p1, p0

    .line 5
    long-to-float p0, p2

    .line 6
    sub-float/2addr p1, p0

    .line 7
    long-to-float p0, p4

    .line 8
    div-float/2addr p1, p0

    .line 9
    const/4 p0, 0x0

    .line 10
    const/high16 p2, 0x3f800000    # 1.0f

    .line 11
    invoke-static {p1, p0, p2}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method
