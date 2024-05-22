.class public Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
    const/high16 p0, 0x40000000    # 2.0f

    .line 2
    mul-float/2addr p1, p0

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    cmpg-float v1, p1, v0

    .line 7
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 9
    if-gez v1, :cond_0

    .line 11
    mul-float/2addr p1, p1

    .line 13
    sub-float/2addr v0, p1

    .line 14
    float-to-double p0, v0

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 16
    move-result-wide p0

    .line 19
    sub-double/2addr p0, v2

    .line 20
    double-to-float p0, p0

    .line 21
    const/high16 p1, -0x41000000    # -0.5f

    .line 22
    :goto_0
    mul-float/2addr p0, p1

    .line 24
    return p0

    .line 25
    :cond_0
    sub-float/2addr p1, p0

    .line 26
    mul-float/2addr p1, p1

    .line 27
    sub-float/2addr v0, p1

    .line 28
    float-to-double p0, v0

    .line 29
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 30
    move-result-wide p0

    .line 33
    add-double/2addr p0, v2

    .line 34
    double-to-float p0, p0

    .line 35
    const/high16 p1, 0x3f000000    # 0.5f

    .line 36
    goto :goto_0
    .line 38
.end method
