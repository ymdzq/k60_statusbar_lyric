.class public abstract Lcom/android/systemui/util/animation/AnimationUtil$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static getFrames(I)J
    .locals 2

    .line 1
    if-ltz p0, :cond_1

    .line 2
    int-to-float p0, p0

    .line 4
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 5
    mul-float/2addr p0, v0

    .line 7
    const/high16 v0, 0x42700000    # 60.0f

    .line 8
    div-float/2addr p0, v0

    .line 10
    float-to-double v0, p0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 12
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 18
    move-result-wide v0

    .line 21
    return-wide v0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string v0, "Cannot round NaN value."

    .line 25
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0

    .line 30
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string v0, "numFrames must be >= 0"

    .line 33
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p0
    .line 38
.end method
