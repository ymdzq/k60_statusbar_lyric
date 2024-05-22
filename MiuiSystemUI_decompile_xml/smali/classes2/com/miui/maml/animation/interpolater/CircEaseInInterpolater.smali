.class public Lcom/miui/maml/animation/interpolater/CircEaseInInterpolater;
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
    .locals 2

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    mul-float/2addr p1, p1

    .line 4
    sub-float/2addr p0, p1

    .line 5
    float-to-double p0, p0

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 7
    move-result-wide p0

    .line 10
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 11
    sub-double/2addr p0, v0

    .line 13
    double-to-float p0, p0

    .line 14
    neg-float p0, p0

    .line 15
    return p0
    .line 16
.end method
