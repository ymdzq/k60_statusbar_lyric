.class public Lcom/miui/maml/animation/interpolater/ExpoEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    cmpl-float v0, p1, p0

    .line 3
    if-nez v0, :cond_0

    .line 5
    return p0

    .line 7
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 8
    cmpl-float v0, p1, p0

    .line 10
    if-nez v0, :cond_1

    .line 12
    return p0

    .line 14
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 15
    mul-float/2addr p1, v0

    .line 17
    cmpg-float v0, p1, p0

    .line 18
    const/high16 v1, 0x3f000000    # 0.5f

    .line 20
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 22
    if-gez v0, :cond_2

    .line 24
    const/high16 v0, 0x41200000    # 10.0f

    .line 26
    sub-float/2addr p1, p0

    .line 28
    mul-float/2addr p1, v0

    .line 29
    float-to-double p0, p1

    .line 30
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 31
    move-result-wide p0

    .line 34
    :goto_0
    double-to-float p0, p0

    .line 35
    mul-float/2addr p0, v1

    .line 36
    return p0

    .line 37
    :cond_2
    const/high16 v0, -0x3ee00000    # -10.0f

    .line 38
    sub-float/2addr p1, p0

    .line 40
    mul-float/2addr p1, v0

    .line 41
    float-to-double p0, p1

    .line 42
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    .line 43
    move-result-wide p0

    .line 46
    neg-double p0, p0

    .line 47
    add-double/2addr p0, v2

    .line 48
    goto :goto_0
    .line 49
.end method
