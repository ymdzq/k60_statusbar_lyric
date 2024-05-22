.class public Lcom/miui/utils/animation/SpringInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public c:F

.field public final c1:F

.field public c2:F

.field public final damping:F

.field public final initial:F

.field public final m:F

.field public r:F

.field public final response:F

.field public w:F


# direct methods
.method public constructor <init>(FF)V
    .locals 12

    .line 1
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    const v0, 0x3f733333    # 0.95f

    .line 2
    iput v0, p0, Lcom/miui/utils/animation/SpringInterpolator;->damping:F

    const v1, 0x3f19999a    # 0.6f

    .line 3
    iput v1, p0, Lcom/miui/utils/animation/SpringInterpolator;->response:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 4
    iput v2, p0, Lcom/miui/utils/animation/SpringInterpolator;->initial:F

    const/high16 v3, 0x3f800000    # 1.0f

    .line 5
    iput v3, p0, Lcom/miui/utils/animation/SpringInterpolator;->m:F

    float-to-double v4, v1

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 6
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    float-to-double v8, v3

    mul-double/2addr v6, v8

    double-to-float v1, v6

    const-wide v6, 0x402921fb54442d18L    # 12.566370614359172

    float-to-double v10, v0

    mul-double/2addr v10, v6

    mul-double/2addr v10, v8

    div-double/2addr v10, v4

    double-to-float v0, v10

    .line 7
    iput v0, p0, Lcom/miui/utils/animation/SpringInterpolator;->c:F

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v1, v4

    mul-float/2addr v0, v0

    sub-float/2addr v1, v0

    float-to-double v0, v1

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/utils/animation/SpringInterpolator;->w:F

    .line 9
    iget v4, p0, Lcom/miui/utils/animation/SpringInterpolator;->c:F

    div-float/2addr v4, v1

    mul-float/2addr v4, v3

    neg-float v1, v4

    iput v1, p0, Lcom/miui/utils/animation/SpringInterpolator;->r:F

    .line 10
    iput v2, p0, Lcom/miui/utils/animation/SpringInterpolator;->c1:F

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v0

    .line 11
    iput v0, p0, Lcom/miui/utils/animation/SpringInterpolator;->c2:F

    .line 12
    iput p1, p0, Lcom/miui/utils/animation/SpringInterpolator;->damping:F

    .line 13
    iput p2, p0, Lcom/miui/utils/animation/SpringInterpolator;->response:F

    .line 14
    invoke-virtual {p0}, Lcom/miui/utils/animation/SpringInterpolator;->refreshParams()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 16
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    const p1, 0x3f733333    # 0.95f

    .line 17
    iput p1, p0, Lcom/miui/utils/animation/SpringInterpolator;->damping:F

    const p2, 0x3f19999a    # 0.6f

    .line 18
    iput p2, p0, Lcom/miui/utils/animation/SpringInterpolator;->response:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 19
    iput v0, p0, Lcom/miui/utils/animation/SpringInterpolator;->initial:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 20
    iput v1, p0, Lcom/miui/utils/animation/SpringInterpolator;->m:F

    float-to-double v2, p2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 21
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, v1

    mul-double/2addr v4, v6

    double-to-float p2, v4

    const-wide v4, 0x402921fb54442d18L    # 12.566370614359172

    float-to-double v8, p1

    mul-double/2addr v8, v4

    mul-double/2addr v8, v6

    div-double/2addr v8, v2

    double-to-float p1, v8

    .line 22
    iput p1, p0, Lcom/miui/utils/animation/SpringInterpolator;->c:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr p2, v2

    mul-float/2addr p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    .line 23
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/utils/animation/SpringInterpolator;->w:F

    .line 24
    iget v2, p0, Lcom/miui/utils/animation/SpringInterpolator;->c:F

    div-float/2addr v2, p2

    mul-float/2addr v2, v1

    neg-float p2, v2

    iput p2, p0, Lcom/miui/utils/animation/SpringInterpolator;->r:F

    .line 25
    iput v0, p0, Lcom/miui/utils/animation/SpringInterpolator;->c1:F

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p1}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result p1

    .line 26
    iput p1, p0, Lcom/miui/utils/animation/SpringInterpolator;->c2:F

    .line 27
    invoke-virtual {p0}, Lcom/miui/utils/animation/SpringInterpolator;->refreshParams()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 6

    .line 1
    iget v0, p0, Lcom/miui/utils/animation/SpringInterpolator;->r:F

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
    iget v2, p0, Lcom/miui/utils/animation/SpringInterpolator;->c1:F

    .line 15
    float-to-double v2, v2

    .line 17
    iget v4, p0, Lcom/miui/utils/animation/SpringInterpolator;->w:F

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
    iget v2, p0, Lcom/miui/utils/animation/SpringInterpolator;->c2:F

    .line 27
    float-to-double v2, v2

    .line 29
    iget p0, p0, Lcom/miui/utils/animation/SpringInterpolator;->w:F

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
    return p0
    .line 45
.end method

.method public final refreshParams()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/miui/utils/animation/SpringInterpolator;->response:F

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
    iget v2, p0, Lcom/miui/utils/animation/SpringInterpolator;->m:F

    .line 17
    float-to-double v3, v2

    .line 19
    mul-double/2addr v0, v3

    .line 20
    double-to-float v0, v0

    .line 21
    iget v1, p0, Lcom/miui/utils/animation/SpringInterpolator;->damping:F

    .line 22
    float-to-double v5, v1

    .line 24
    const-wide v7, 0x402921fb54442d18L    # 12.566370614359172

    .line 25
    mul-double/2addr v5, v7

    .line 30
    mul-double/2addr v5, v3

    .line 31
    iget v1, p0, Lcom/miui/utils/animation/SpringInterpolator;->response:F

    .line 32
    float-to-double v3, v1

    .line 34
    div-double/2addr v5, v3

    .line 35
    double-to-float v1, v5

    .line 36
    iput v1, p0, Lcom/miui/utils/animation/SpringInterpolator;->c:F

    .line 37
    const/high16 v3, 0x40800000    # 4.0f

    .line 39
    mul-float/2addr v2, v3

    .line 41
    mul-float/2addr v2, v0

    .line 42
    mul-float/2addr v1, v1

    .line 43
    sub-float/2addr v2, v1

    .line 44
    float-to-double v0, v2

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 46
    move-result-wide v0

    .line 49
    double-to-float v0, v0

    .line 50
    iget v1, p0, Lcom/miui/utils/animation/SpringInterpolator;->m:F

    .line 51
    const/high16 v2, 0x40000000    # 2.0f

    .line 53
    mul-float v3, v1, v2

    .line 55
    div-float/2addr v0, v3

    .line 57
    iput v0, p0, Lcom/miui/utils/animation/SpringInterpolator;->w:F

    .line 58
    iget v3, p0, Lcom/miui/utils/animation/SpringInterpolator;->c:F

    .line 60
    div-float/2addr v3, v2

    .line 62
    mul-float/2addr v3, v1

    .line 63
    neg-float v1, v3

    .line 64
    iput v1, p0, Lcom/miui/utils/animation/SpringInterpolator;->r:F

    .line 65
    iget v2, p0, Lcom/miui/utils/animation/SpringInterpolator;->initial:F

    .line 67
    const/4 v3, 0x0

    .line 69
    invoke-static {v1, v2, v3, v0}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 70
    move-result v0

    .line 73
    iput v0, p0, Lcom/miui/utils/animation/SpringInterpolator;->c2:F

    .line 74
    return-void
    .line 76
.end method
