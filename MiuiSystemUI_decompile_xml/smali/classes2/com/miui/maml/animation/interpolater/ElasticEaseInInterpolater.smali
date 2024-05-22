.class public Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    const v0, 0x3e99999a    # 0.3f

    .line 3
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    .line 13
    iput p2, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    const v0, 0x3e99999a    # 0.3f

    .line 6
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    if-eqz p1, :cond_1

    .line 7
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 8
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

    .line 9
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 10
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

    :cond_1
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitudeExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 9
    double-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriodExp:Lcom/miui/maml/data/Expression;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v0

    .line 20
    double-to-float v0, v0

    .line 21
    iput v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    .line 22
    :cond_1
    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mAmplitude:F

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
    iget v0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    .line 48
    const/high16 v2, 0x40800000    # 4.0f

    .line 50
    div-float/2addr v0, v2

    .line 52
    move v2, v0

    .line 53
    move v0, v1

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    iget v2, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    .line 56
    float-to-double v5, v2

    .line 58
    div-double/2addr v5, v3

    .line 59
    div-float v2, v1, v0

    .line 60
    float-to-double v7, v2

    .line 62
    invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D

    .line 63
    move-result-wide v7

    .line 66
    mul-double/2addr v7, v5

    .line 67
    double-to-float v2, v7

    .line 68
    :goto_0
    float-to-double v5, v0

    .line 69
    sub-float/2addr p1, v1

    .line 70
    const/high16 v0, 0x41200000    # 10.0f

    .line 71
    mul-float/2addr v0, p1

    .line 73
    float-to-double v0, v0

    .line 74
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 75
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 77
    move-result-wide v0

    .line 80
    mul-double/2addr v0, v5

    .line 81
    sub-float/2addr p1, v2

    .line 82
    float-to-double v5, p1

    .line 83
    mul-double/2addr v5, v3

    .line 84
    iget p0, p0, Lcom/miui/maml/animation/interpolater/ElasticEaseInInterpolater;->mPriod:F

    .line 85
    float-to-double p0, p0

    .line 87
    div-double/2addr v5, p0

    .line 88
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    .line 89
    move-result-wide p0

    .line 92
    mul-double/2addr p0, v0

    .line 93
    double-to-float p0, p0

    .line 94
    neg-float p0, p0

    .line 95
    return p0
    .line 96
.end method
