.class public Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private c:F

.field private c1:F

.field private c2:F

.field private k:F

.field private m:F

.field private mDamping:F

.field private mDampingExp:Lcom/miui/maml/data/Expression;

.field private mInitial:F

.field private mNeedEvaluate:Z

.field private mResponse:F

.field private mResponseExp:Lcom/miui/maml/data/Expression;

.field private r:F

.field private w:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666    # 0.9f

    .line 2
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    const v0, 0x3e99999a    # 0.3f

    .line 3
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 6
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 20
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 22
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 24
    iput p1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 25
    iput p2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666    # 0.9f

    .line 9
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    const v0, 0x3e99999a    # 0.3f

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 11
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 13
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    if-eqz p1, :cond_1

    .line 15
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 16
    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDampingExp:Lcom/miui/maml/data/Expression;

    .line 17
    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 18
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponseExp:Lcom/miui/maml/data/Expression;

    :cond_1
    return-void
.end method

.method private evaluate()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    .line 6
    float-to-double v0, v0

    .line 8
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    .line 9
    div-double/2addr v2, v0

    .line 14
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 15
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 17
    move-result-wide v0

    .line 20
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 21
    float-to-double v3, v2

    .line 23
    mul-double/2addr v0, v3

    .line 24
    double-to-float v0, v0

    .line 25
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->k:F

    .line 26
    iget v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 28
    float-to-double v3, v1

    .line 30
    const-wide v5, 0x402921fb54442d18L    # 12.566370614359172

    .line 31
    mul-double/2addr v3, v5

    .line 36
    float-to-double v5, v2

    .line 37
    mul-double/2addr v3, v5

    .line 38
    iget v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    .line 39
    float-to-double v5, v1

    .line 41
    div-double/2addr v3, v5

    .line 42
    double-to-float v1, v3

    .line 43
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c:F

    .line 44
    const/high16 v3, 0x40800000    # 4.0f

    .line 46
    mul-float/2addr v2, v3

    .line 48
    mul-float/2addr v2, v0

    .line 49
    mul-float/2addr v1, v1

    .line 50
    sub-float/2addr v2, v1

    .line 51
    float-to-double v0, v2

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 53
    move-result-wide v0

    .line 56
    double-to-float v0, v0

    .line 57
    iget v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->m:F

    .line 58
    const/high16 v2, 0x40000000    # 2.0f

    .line 60
    mul-float v3, v1, v2

    .line 62
    div-float/2addr v0, v3

    .line 64
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    .line 65
    iget v3, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c:F

    .line 67
    div-float/2addr v3, v2

    .line 69
    mul-float/2addr v3, v1

    .line 70
    neg-float v1, v3

    .line 71
    iput v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->r:F

    .line 72
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mInitial:F

    .line 74
    const/4 v3, 0x0

    .line 76
    invoke-static {v1, v2, v3, v0}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 77
    move-result v0

    .line 80
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c2:F

    .line 81
    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 84
    :cond_0
    return-void
    .line 86
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDampingExp:Lcom/miui/maml/data/Expression;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 7
    move-result-wide v2

    .line 10
    double-to-float v0, v2

    .line 11
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 12
    cmpl-float v2, v2, v0

    .line 14
    if-eqz v2, :cond_0

    .line 16
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mDamping:F

    .line 18
    iput-boolean v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponseExp:Lcom/miui/maml/data/Expression;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 26
    move-result-wide v2

    .line 29
    double-to-float v0, v2

    .line 30
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    .line 31
    cmpl-float v2, v2, v0

    .line 33
    if-eqz v2, :cond_1

    .line 35
    iput v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mResponse:F

    .line 37
    iput-boolean v1, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->mNeedEvaluate:Z

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->evaluate()V

    .line 41
    iget v0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->r:F

    .line 44
    mul-float/2addr v0, p1

    .line 46
    float-to-double v0, v0

    .line 47
    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    .line 48
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 53
    move-result-wide v0

    .line 56
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c1:F

    .line 57
    float-to-double v2, v2

    .line 59
    iget v4, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    .line 60
    mul-float/2addr v4, p1

    .line 62
    float-to-double v4, v4

    .line 63
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 64
    move-result-wide v4

    .line 67
    mul-double/2addr v4, v2

    .line 68
    iget v2, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->c2:F

    .line 69
    float-to-double v2, v2

    .line 71
    iget p0, p0, Lcom/miui/maml/animation/interpolater/PhysicBasedInterpolator;->w:F

    .line 72
    mul-float/2addr p0, p1

    .line 74
    float-to-double p0, p0

    .line 75
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    .line 76
    move-result-wide p0

    .line 79
    mul-double/2addr p0, v2

    .line 80
    add-double/2addr p0, v4

    .line 81
    mul-double/2addr p0, v0

    .line 82
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 83
    add-double/2addr p0, v0

    .line 85
    double-to-float p0, p0

    .line 86
    return p0
    .line 87
.end method
