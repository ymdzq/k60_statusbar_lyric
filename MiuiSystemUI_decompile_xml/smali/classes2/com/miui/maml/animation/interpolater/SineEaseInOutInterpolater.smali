.class public Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;
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
    .locals 2

    .line 1
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 2
    float-to-double p0, p1

    .line 7
    mul-double/2addr p0, v0

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    .line 9
    move-result-wide p0

    .line 12
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 13
    sub-double/2addr p0, v0

    .line 15
    double-to-float p0, p0

    .line 16
    const/high16 p1, -0x41000000    # -0.5f

    .line 17
    mul-float/2addr p0, p1

    .line 19
    return p0
    .line 20
.end method
