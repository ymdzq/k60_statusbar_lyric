.class public Lmiuix/animation/utils/EaseManager$SpringInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private c:F

.field private c1:F

.field private c2:F

.field private damping:F

.field private duration:J

.field private initial:F

.field private k:F

.field private m:F

.field private r:F

.field private response:F

.field private w:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const v0, 0x3f733333    # 0.95f

    .line 5
    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->damping:F

    .line 8
    const v0, 0x3f19999a    # 0.6f

    .line 10
    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->response:F

    .line 13
    const/high16 v0, -0x40800000    # -1.0f

    .line 15
    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->initial:F

    .line 17
    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->c1:F

    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->m:F

    .line 23
    const-wide/16 v0, 0x3e8

    .line 25
    iput-wide v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->duration:J

    .line 27
    invoke-direct {p0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->updateParameters()V

    .line 29
    return-void
    .line 32
.end method

.method private updateParameters()V
    .locals 7

    .line 1
    iget v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->response:F

    .line 2
    float-to-double v0, v0

    .line 4
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 5
    div-double/2addr v2, v0

    .line 10
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 11
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 13
    move-result-wide v0

    .line 16
    iget v2, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->m:F

    .line 17
    float-to-double v3, v2

    .line 19
    mul-double/2addr v0, v3

    .line 20
    double-to-float v0, v0

    .line 21
    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->k:F

    .line 22
    iget v1, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->damping:F

    .line 24
    float-to-double v3, v1

    .line 26
    const-wide v5, 0x402921fb54442d18L    # 12.566370614359172

    .line 27
    mul-double/2addr v3, v5

    .line 32
    float-to-double v5, v2

    .line 33
    mul-double/2addr v3, v5

    .line 34
    iget v1, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->response:F

    .line 35
    float-to-double v5, v1

    .line 37
    div-double/2addr v3, v5

    .line 38
    double-to-float v1, v3

    .line 39
    iput v1, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->c:F

    .line 40
    const/high16 v3, 0x40800000    # 4.0f

    .line 42
    mul-float/2addr v2, v3

    .line 44
    mul-float/2addr v2, v0

    .line 45
    mul-float/2addr v1, v1

    .line 46
    sub-float/2addr v2, v1

    .line 47
    float-to-double v0, v2

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 49
    move-result-wide v0

    .line 52
    double-to-float v0, v0

    .line 53
    iget v1, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->m:F

    .line 54
    const/high16 v2, 0x40000000    # 2.0f

    .line 56
    mul-float v3, v1, v2

    .line 58
    div-float/2addr v0, v3

    .line 60
    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->w:F

    .line 61
    iget v3, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->c:F

    .line 63
    div-float/2addr v3, v2

    .line 65
    mul-float/2addr v3, v1

    .line 66
    neg-float v1, v3

    .line 67
    iput v1, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->r:F

    .line 68
    iget v2, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->initial:F

    .line 70
    const/4 v3, 0x0

    .line 72
    invoke-static {v1, v2, v3, v0}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 73
    move-result v0

    .line 76
    iput v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->c2:F

    .line 77
    return-void
    .line 79
.end method


# virtual methods
.method public getDamping()F
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->damping:F

    .line 2
    return p0
    .line 4
.end method

.method public getInterpolation(F)F
    .locals 6

    .line 1
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 2
    div-float/2addr p1, v0

    .line 4
    iget-wide v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->duration:J

    .line 5
    long-to-float v0, v0

    .line 7
    mul-float/2addr p1, v0

    .line 8
    iget v0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->r:F

    .line 9
    mul-float/2addr v0, p1

    .line 11
    float-to-double v0, v0

    .line 12
    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    .line 13
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 18
    move-result-wide v0

    .line 21
    iget v2, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->c1:F

    .line 22
    float-to-double v2, v2

    .line 24
    iget v4, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->w:F

    .line 25
    mul-float/2addr v4, p1

    .line 27
    float-to-double v4, v4

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 29
    move-result-wide v4

    .line 32
    mul-double/2addr v4, v2

    .line 33
    iget v2, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->c2:F

    .line 34
    float-to-double v2, v2

    .line 36
    iget p0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->w:F

    .line 37
    mul-float/2addr p0, p1

    .line 39
    float-to-double p0, p0

    .line 40
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    .line 41
    move-result-wide p0

    .line 44
    mul-double/2addr p0, v2

    .line 45
    add-double/2addr p0, v4

    .line 46
    mul-double/2addr p0, v0

    .line 47
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 48
    add-double/2addr p0, v0

    .line 50
    double-to-float p0, p0

    .line 51
    return p0
    .line 52
.end method

.method public getResponse()F
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->response:F

    .line 2
    return p0
    .line 4
.end method

.method public setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->damping:F

    .line 2
    invoke-direct {p0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->updateParameters()V

    .line 4
    return-object p0
    .line 7
.end method

.method public setDuration(J)Lmiuix/animation/utils/EaseManager$SpringInterpolator;
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->duration:J

    .line 2
    return-object p0
    .line 4
.end method

.method public setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->response:F

    .line 2
    invoke-direct {p0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->updateParameters()V

    .line 4
    return-object p0
    .line 7
.end method
