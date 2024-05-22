.class public Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    return-void
.end method

.method public constructor <init>([Lcom/miui/maml/data/Expression;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fd9cd60

    .line 4
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    if-eqz p1, :cond_0

    .line 5
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactorExp:Lcom/miui/maml/data/Expression;

    :cond_0
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactorExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 9
    double-to-float v0, v0

    .line 10
    iput v0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    .line 11
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    sub-float/2addr p1, v0

    .line 15
    mul-float v1, p1, p1

    .line 16
    iget p0, p0, Lcom/miui/maml/animation/interpolater/BackEaseOutInterpolater;->mFactor:F

    .line 18
    add-float v2, p0, v0

    .line 20
    mul-float/2addr v2, p1

    .line 22
    add-float/2addr v2, p0

    .line 23
    mul-float/2addr v2, v1

    .line 24
    add-float/2addr v2, v0

    .line 25
    return v2
    .line 26
.end method
