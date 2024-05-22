.class public Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;
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

.method public static getInterpolationImp(F)F
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    sub-float p0, v0, p0

    .line 4
    invoke-static {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;->getInterpolationImp(F)F

    .line 6
    move-result p0

    .line 9
    sub-float/2addr v0, p0

    .line 10
    return v0
    .line 11
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;->getInterpolationImp(F)F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method
