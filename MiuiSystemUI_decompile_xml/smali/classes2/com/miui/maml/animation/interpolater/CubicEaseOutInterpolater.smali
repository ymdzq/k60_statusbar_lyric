.class public Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;
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
    .locals 0

    .line 1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2
    sub-float/2addr p1, p0

    .line 4
    invoke-static {p1, p1, p1, p0}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method
