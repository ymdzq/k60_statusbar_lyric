.class public final Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final VISCOUS_FLUID_NORMALIZE:F

.field public static final VISCOUS_FLUID_OFFSET:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->viscousFluid(F)F

    .line 4
    move-result v1

    .line 7
    div-float v1, v0, v1

    .line 8
    sput v1, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    .line 10
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->viscousFluid(F)F

    .line 12
    move-result v2

    .line 15
    mul-float/2addr v2, v1

    .line 16
    sub-float/2addr v0, v2

    .line 17
    sput v0, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    .line 18
    return-void
    .line 20
.end method

.method public static viscousFluid(F)F
    .locals 3

    .line 1
    const/high16 v0, 0x41000000    # 8.0f

    .line 2
    mul-float/2addr p0, v0

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    cmpg-float v1, p0, v0

    .line 7
    if-gez v1, :cond_0

    .line 9
    neg-float v1, p0

    .line 11
    float-to-double v1, v1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    .line 13
    move-result-wide v1

    .line 16
    double-to-float v1, v1

    .line 17
    sub-float/2addr v0, v1

    .line 18
    sub-float/2addr p0, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sub-float p0, v0, p0

    .line 21
    float-to-double v1, p0

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    .line 24
    move-result-wide v1

    .line 27
    double-to-float p0, v1

    .line 28
    const v1, 0x3f21d2a7

    .line 29
    const v2, 0x3ebc5ab2

    .line 32
    invoke-static {v0, p0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 35
    move-result p0

    .line 38
    :goto_0
    return p0
    .line 39
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 0

    .line 1
    sget p0, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    .line 2
    invoke-static {p1}, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->viscousFluid(F)F

    .line 4
    move-result p1

    .line 7
    mul-float/2addr p1, p0

    .line 8
    const/4 p0, 0x0

    .line 9
    cmpl-float p0, p1, p0

    .line 10
    if-lez p0, :cond_0

    .line 12
    sget p0, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    .line 14
    add-float/2addr p1, p0

    .line 16
    :cond_0
    return p1
    .line 17
.end method
