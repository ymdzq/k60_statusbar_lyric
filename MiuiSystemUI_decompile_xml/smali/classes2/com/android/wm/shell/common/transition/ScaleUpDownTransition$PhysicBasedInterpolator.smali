.class public final Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final c2:F

.field public final r:F

.field public final w:F


# direct methods
.method public constructor <init>(F)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    float-to-double v0, p1

    .line 5
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 6
    div-double/2addr v2, v0

    .line 11
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 12
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 14
    move-result-wide v2

    .line 17
    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    float-to-double v4, p1

    .line 20
    mul-double/2addr v2, v4

    .line 21
    double-to-float v2, v2

    .line 22
    const-wide v6, 0x402921fb54442d18L    # 12.566370614359172

    .line 23
    const v3, 0x3f733333    # 0.95f

    .line 28
    float-to-double v8, v3

    .line 31
    mul-double/2addr v8, v6

    .line 32
    mul-double/2addr v8, v4

    .line 33
    div-double/2addr v8, v0

    .line 34
    double-to-float v0, v8

    .line 35
    const/high16 v1, 0x40800000    # 4.0f

    .line 36
    mul-float/2addr v2, v1

    .line 38
    mul-float v1, v0, v0

    .line 39
    sub-float/2addr v2, v1

    .line 41
    float-to-double v1, v2

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 43
    move-result-wide v1

    .line 46
    double-to-float v1, v1

    .line 47
    const/high16 v2, 0x40000000    # 2.0f

    .line 48
    div-float/2addr v1, v2

    .line 50
    iput v1, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;->w:F

    .line 51
    div-float/2addr v0, v2

    .line 53
    mul-float/2addr v0, p1

    .line 54
    neg-float p1, v0

    .line 55
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;->r:F

    .line 56
    const/4 v0, 0x0

    .line 58
    const/high16 v2, -0x40800000    # -1.0f

    .line 59
    invoke-static {p1, v2, v0, v1}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 61
    move-result p1

    .line 64
    iput p1, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;->c2:F

    .line 65
    return-void
    .line 67
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;->r:F

    .line 2
    mul-float/2addr v0, p1

    .line 4
    float-to-double v0, v0

    .line 5
    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    .line 6
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 11
    move-result-wide v0

    .line 14
    const/high16 v2, -0x40800000    # -1.0f

    .line 15
    float-to-double v2, v2

    .line 17
    iget v4, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;->w:F

    .line 18
    mul-float/2addr v4, p1

    .line 20
    float-to-double v4, v4

    .line 21
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 22
    move-result-wide v4

    .line 25
    mul-double/2addr v4, v2

    .line 26
    iget v2, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;->c2:F

    .line 27
    float-to-double v2, v2

    .line 29
    iget p0, p0, Lcom/android/wm/shell/common/transition/ScaleUpDownTransition$PhysicBasedInterpolator;->w:F

    .line 30
    mul-float/2addr p0, p1

    .line 32
    float-to-double p0, p0

    .line 33
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    .line 34
    move-result-wide p0

    .line 37
    mul-double/2addr p0, v2

    .line 38
    add-double/2addr p0, v4

    .line 39
    mul-double/2addr p0, v0

    .line 40
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 41
    add-double/2addr p0, v0

    .line 43
    double-to-float p0, p0

    .line 44
    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    cmpl-float v0, p0, p1

    .line 47
    if-lez v0, :cond_0

    .line 49
    move p0, p1

    .line 51
    :cond_0
    return p0
    .line 52
.end method
