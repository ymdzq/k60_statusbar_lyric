.class public final Lcom/miui/utils/animation/PhysicBasedInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final c2:F

.field public final r:F

.field public final w:F


# direct methods
.method public constructor <init>(FF)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    float-to-double v0, p2

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
    const/high16 p2, 0x3f800000    # 1.0f

    .line 18
    float-to-double v4, p2

    .line 20
    mul-double/2addr v2, v4

    .line 21
    double-to-float v2, v2

    .line 22
    const-wide v6, 0x402921fb54442d18L    # 12.566370614359172

    .line 23
    float-to-double v8, p1

    .line 28
    mul-double/2addr v8, v6

    .line 29
    mul-double/2addr v8, v4

    .line 30
    div-double/2addr v8, v0

    .line 31
    double-to-float p1, v8

    .line 32
    const/high16 v0, 0x40800000    # 4.0f

    .line 33
    mul-float/2addr v2, v0

    .line 35
    float-to-double v0, v2

    .line 36
    float-to-double v2, p1

    .line 37
    mul-double/2addr v2, v2

    .line 38
    sub-double/2addr v0, v2

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 40
    move-result-wide v0

    .line 43
    double-to-float v0, v0

    .line 44
    const/high16 v1, 0x40000000    # 2.0f

    .line 45
    div-float/2addr v0, v1

    .line 47
    iput v0, p0, Lcom/miui/utils/animation/PhysicBasedInterpolator;->w:F

    .line 48
    const/4 v1, 0x2

    .line 50
    int-to-float v1, v1

    .line 51
    div-float/2addr p1, v1

    .line 52
    mul-float/2addr p1, p2

    .line 53
    neg-float p1, p1

    .line 54
    iput p1, p0, Lcom/miui/utils/animation/PhysicBasedInterpolator;->r:F

    .line 55
    const/4 p2, 0x0

    .line 57
    int-to-float p2, p2

    .line 58
    const/high16 v1, -0x40800000    # -1.0f

    .line 59
    invoke-static {p1, v1, p2, v0}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 61
    move-result p1

    .line 64
    iput p1, p0, Lcom/miui/utils/animation/PhysicBasedInterpolator;->c2:F

    .line 65
    return-void
    .line 67
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 8

    .line 1
    iget v0, p0, Lcom/miui/utils/animation/PhysicBasedInterpolator;->r:F

    .line 2
    float-to-double v0, v0

    .line 4
    float-to-double v2, p1

    .line 5
    mul-double/2addr v0, v2

    .line 6
    const-wide v4, 0x4005bf0a8b145769L    # Math.E

    .line 7
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 12
    move-result-wide v0

    .line 15
    const/high16 p1, -0x40800000    # -1.0f

    .line 16
    float-to-double v4, p1

    .line 18
    iget p1, p0, Lcom/miui/utils/animation/PhysicBasedInterpolator;->w:F

    .line 19
    float-to-double v6, p1

    .line 21
    mul-double/2addr v6, v2

    .line 22
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    .line 23
    move-result-wide v6

    .line 26
    mul-double/2addr v6, v4

    .line 27
    iget p1, p0, Lcom/miui/utils/animation/PhysicBasedInterpolator;->c2:F

    .line 28
    float-to-double v4, p1

    .line 30
    iget p0, p0, Lcom/miui/utils/animation/PhysicBasedInterpolator;->w:F

    .line 31
    float-to-double p0, p0

    .line 33
    mul-double/2addr p0, v2

    .line 34
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    .line 35
    move-result-wide p0

    .line 38
    mul-double/2addr p0, v4

    .line 39
    add-double/2addr p0, v6

    .line 40
    mul-double/2addr p0, v0

    .line 41
    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    float-to-double v0, v0

    .line 44
    add-double/2addr p0, v0

    .line 45
    double-to-float p0, p0

    .line 46
    return p0
    .line 47
.end method
