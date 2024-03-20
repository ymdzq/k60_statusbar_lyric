.class public abstract Lcom/android/systemui/monet/contrast/Contrast;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static ratioOfTones(DD)D
    .locals 3

    .line 1
    invoke-static {p0, p1}, Lcom/android/systemui/monet/utils/ColorUtils;->yFromLstar(D)D

    .line 2
    move-result-wide p0

    .line 5
    invoke-static {p2, p3}, Lcom/android/systemui/monet/utils/ColorUtils;->yFromLstar(D)D

    .line 6
    move-result-wide p2

    .line 9
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    .line 10
    move-result-wide v0

    .line 13
    cmpl-double v2, v0, p2

    .line 14
    if-nez v2, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    move-wide p0, p2

    .line 19
    :goto_0
    const-wide/high16 p2, 0x4014000000000000L    # 5.0

    .line 20
    add-double/2addr v0, p2

    .line 22
    add-double/2addr p0, p2

    .line 23
    div-double/2addr v0, p0

    .line 24
    return-wide v0
    .line 25
.end method
