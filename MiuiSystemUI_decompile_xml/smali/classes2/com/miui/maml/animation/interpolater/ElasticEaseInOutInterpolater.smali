.class public Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;
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
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    const v0, 0x3ee66667    # 0.45000002f

    .line 3
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    .line 13
    iput p2, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    const v0, 0x3ee66667    # 0.45000002f

    .line 6
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    if-eqz p1, :cond_1

    .line 7
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 8
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

    .line 9
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 10
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

    :cond_1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 9
    double-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v0

    .line 20
    double-to-float v0, v0

    .line 21
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    .line 22
    :cond_1
    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mAmplitude:F

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
    const/high16 v1, 0x3f000000    # 0.5f

    .line 32
    div-float/2addr p1, v1

    .line 34
    const/high16 v1, 0x40000000    # 2.0f

    .line 35
    cmpl-float v1, p1, v1

    .line 37
    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    if-nez v1, :cond_3

    .line 41
    return v2

    .line 43
    :cond_3
    cmpg-float v1, v0, v2

    .line 44
    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    .line 46
    if-gez v1, :cond_4

    .line 51
    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    .line 53
    const/high16 v1, 0x40800000    # 4.0f

    .line 55
    div-float/2addr v0, v1

    .line 57
    move v1, v0

    .line 58
    move v0, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_4
    iget v1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    .line 61
    float-to-double v5, v1

    .line 63
    div-double/2addr v5, v3

    .line 64
    div-float v1, v2, v0

    .line 65
    float-to-double v7, v1

    .line 67
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    .line 68
    move-result-wide v7

    .line 71
    mul-double/2addr v7, v5

    .line 72
    double-to-float v1, v7

    .line 73
    :goto_0
    cmpg-float v5, p1, v2

    .line 74
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 76
    if-gez v5, :cond_5

    .line 78
    float-to-double v8, v0

    .line 80
    sub-float/2addr p1, v2

    .line 81
    const/high16 v0, 0x41200000    # 10.0f

    .line 82
    mul-float/2addr v0, p1

    .line 84
    float-to-double v10, v0

    .line 85
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 86
    move-result-wide v5

    .line 89
    mul-double/2addr v5, v8

    .line 90
    sub-float/2addr p1, v1

    .line 91
    float-to-double v0, p1

    .line 92
    mul-double/2addr v0, v3

    .line 93
    iget p0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    .line 94
    float-to-double p0, p0

    .line 96
    div-double/2addr v0, p0

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 98
    move-result-wide p0

    .line 101
    mul-double/2addr p0, v5

    .line 102
    double-to-float p0, p0

    .line 103
    const/high16 p1, -0x41000000    # -0.5f

    .line 104
    mul-float/2addr p0, p1

    .line 106
    return p0

    .line 107
    :cond_5
    float-to-double v8, v0

    .line 108
    sub-float/2addr p1, v2

    .line 109
    const/high16 v0, -0x3ee00000    # -10.0f

    .line 110
    mul-float/2addr v0, p1

    .line 112
    float-to-double v10, v0

    .line 113
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 114
    move-result-wide v5

    .line 117
    mul-double/2addr v5, v8

    .line 118
    sub-float/2addr p1, v1

    .line 119
    float-to-double v0, p1

    .line 120
    mul-double/2addr v0, v3

    .line 121
    iget p0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInOutInterpolater;->mPriod:F

    .line 122
    float-to-double p0, p0

    .line 124
    div-double/2addr v0, p0

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 126
    move-result-wide p0

    .line 129
    mul-double/2addr p0, v5

    .line 130
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 131
    mul-double/2addr p0, v0

    .line 133
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 134
    add-double/2addr p0, v0

    .line 136
    double-to-float p0, p0

    .line 137
    return p0
    .line 138
.end method
