.class public Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mAmplitudeExp:Lcom/miui/maml/data/Expression;

.field private mPriod:F

.field private mPriodExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    const v0, 0x3e99999a    # 0.3f

    .line 3
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    .line 13
    iput p2, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    const v0, 0x3e99999a    # 0.3f

    .line 6
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    if-eqz p1, :cond_1

    .line 7
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 8
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

    .line 9
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 10
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

    :cond_1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 9
    double-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v0

    .line 20
    double-to-float v0, v0

    .line 21
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    .line 22
    :cond_1
    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mAmplitude:F

    .line 24
    const/4 v1, 0x0

    .line 26
    cmpl-float v2, p1, v1

    .line 27
    if-nez v2, :cond_2

    .line 29
    return v1

    .line 31
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    cmpl-float v2, p1, v1

    .line 34
    if-nez v2, :cond_3

    .line 36
    return v1

    .line 38
    :cond_3
    cmpg-float v2, v0, v1

    .line 39
    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    .line 41
    if-gez v2, :cond_4

    .line 46
    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    .line 48
    const/high16 v2, 0x40800000    # 4.0f

    .line 50
    div-float/2addr v0, v2

    .line 52
    move v11, v1

    .line 53
    move v1, v0

    .line 54
    move v0, v11

    .line 55
    goto :goto_0

    .line 56
    :cond_4
    iget v2, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    .line 57
    float-to-double v5, v2

    .line 59
    div-double/2addr v5, v3

    .line 60
    div-float/2addr v1, v0

    .line 61
    float-to-double v1, v1

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    .line 63
    move-result-wide v1

    .line 66
    mul-double/2addr v1, v5

    .line 67
    double-to-float v1, v1

    .line 68
    :goto_0
    float-to-double v5, v0

    .line 69
    const/high16 v0, -0x3ee00000    # -10.0f

    .line 70
    mul-float/2addr v0, p1

    .line 72
    float-to-double v7, v0

    .line 73
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 74
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 76
    move-result-wide v7

    .line 79
    mul-double/2addr v7, v5

    .line 80
    sub-float/2addr p1, v1

    .line 81
    float-to-double v0, p1

    .line 82
    mul-double/2addr v0, v3

    .line 83
    iget p0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseOutInterpolater;->mPriod:F

    .line 84
    float-to-double p0, p0

    .line 86
    div-double/2addr v0, p0

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 88
    move-result-wide p0

    .line 91
    mul-double/2addr p0, v7

    .line 92
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 93
    add-double/2addr p0, v0

    .line 95
    double-to-float p0, p0

    .line 96
    return p0
    .line 97
.end method
