.class public Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;
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
    .locals 6

    .line 1
    float-to-double v0, p0

    .line 2
    const-wide v2, 0x3fd745d1745d1746L    # 0.36363636363636365

    .line 3
    cmpg-double v2, v0, v2

    .line 8
    const/high16 v3, 0x40f20000    # 7.5625f

    .line 10
    if-gez v2, :cond_0

    .line 12
    mul-float/2addr v3, p0

    .line 14
    mul-float/2addr v3, p0

    .line 15
    return v3

    .line 16
    :cond_0
    const-wide v4, 0x3fe745d1745d1746L    # 0.7272727272727273

    .line 17
    cmpg-double p0, v0, v4

    .line 22
    if-gez p0, :cond_1

    .line 24
    const-wide v4, 0x3fe1745d1745d174L    # 0.5454545454545454

    .line 26
    sub-double/2addr v0, v4

    .line 31
    double-to-float p0, v0

    .line 32
    const/high16 v0, 0x3f400000    # 0.75f

    .line 33
    :goto_0
    invoke-static {p0, v3, p0, v0}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 35
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_1
    const-wide v4, 0x3fed1745d1745d17L    # 0.9090909090909091

    .line 40
    cmpg-double p0, v0, v4

    .line 45
    if-gez p0, :cond_2

    .line 47
    const-wide v4, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    .line 49
    sub-double/2addr v0, v4

    .line 54
    double-to-float p0, v0

    .line 55
    const/high16 v0, 0x3f700000    # 0.9375f

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    const-wide v4, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    .line 59
    sub-double/2addr v0, v4

    .line 64
    double-to-float p0, v0

    .line 65
    const/high16 v0, 0x3f7c0000    # 0.984375f

    .line 66
    goto :goto_0
    .line 68
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;->getInterpolationImp(F)F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method
