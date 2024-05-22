.class public Lcom/miui/maml/animation/interpolater/BounceEaseInOutInterpolater;
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
    const/high16 p0, 0x3f000000    # 0.5f

    .line 2
    cmpg-float v0, p1, p0

    .line 4
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    if-gez v0, :cond_0

    .line 8
    mul-float/2addr p1, v1

    .line 10
    invoke-static {p1}, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;->getInterpolationImp(F)F

    .line 11
    move-result p1

    .line 14
    mul-float/2addr p1, p0

    .line 15
    return p1

    .line 16
    :cond_0
    mul-float/2addr p1, v1

    .line 17
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    sub-float/2addr p1, v0

    .line 20
    invoke-static {p1}, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;->getInterpolationImp(F)F

    .line 21
    move-result p1

    .line 24
    mul-float/2addr p1, p0

    .line 25
    add-float/2addr p1, p0

    .line 26
    return p1
    .line 27
.end method
