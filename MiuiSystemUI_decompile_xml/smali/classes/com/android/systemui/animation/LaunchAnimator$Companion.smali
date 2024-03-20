.class public abstract Lcom/android/systemui/animation/LaunchAnimator$Companion;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
