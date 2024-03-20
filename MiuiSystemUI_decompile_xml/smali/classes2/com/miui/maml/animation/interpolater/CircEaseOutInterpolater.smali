.class public Lcom/miui/maml/animation/interpolater/CircEaseOutInterpolater;
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
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    sub-float/2addr p1, p0

    .line 4
    mul-float/2addr p1, p1

    .line 5
    sub-float/2addr p0, p1

    .line 6
    float-to-double p0, p0

    .line 7
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 8
    move-result-wide p0

    .line 11
    double-to-float p0, p0

    .line 12
    return p0
    .line 13
.end method
