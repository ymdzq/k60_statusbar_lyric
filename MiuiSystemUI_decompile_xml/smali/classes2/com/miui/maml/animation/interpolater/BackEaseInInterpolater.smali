.class public Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mFactor:F

.field private mFactorExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    .line 2
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    .line 4
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;->mFactor:F

    if-eqz p1, :cond_0

    .line 5
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;->mFactorExp:Lcom/miui/maml/data/Expression;

    :cond_0
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;->mFactorExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 9
    double-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;->mFactor:F

    .line 11
    :cond_0
    mul-float v0, p1, p1

    .line 13
    iget p0, p0, Lcom/miui/maml/animation/interpolater/BackEaseInInterpolater;->mFactor:F

    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 17
    add-float/2addr v1, p0

    .line 19
    mul-float/2addr v1, p1

    .line 20
    sub-float/2addr v1, p0

    .line 21
    mul-float/2addr v1, v0

    .line 22
    return v1
    .line 23
.end method
