.class public Lcom/miui/maml/animation/interpolater/InterpolatorHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final VAR_RATIO:Ljava/lang/String; = "__ratio"


# instance fields
.field private mEaseFunExp:Lcom/miui/maml/data/Expression;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mRatioVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p4}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 5
    move-result-object p4

    .line 8
    invoke-static {p2, p4}, Lcom/miui/maml/animation/interpolater/InterpolatorFactory;->create(Ljava/lang/String;[Lcom/miui/maml/data/Expression;)Landroid/view/animation/Interpolator;

    .line 9
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 13
    invoke-static {p1, p3}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 15
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    .line 19
    if-eqz p2, :cond_0

    .line 21
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 23
    const-string p3, "__ratio"

    .line 25
    const/4 p4, 0x1

    .line 27
    invoke-direct {p2, p3, p1, p4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 28
    iput-object p2, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mRatioVar:Lcom/miui/maml/data/IndexedVariable;

    .line 31
    :cond_0
    return-void
    .line 33
.end method

.method public static create(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/interpolater/InterpolatorHelper;
    .locals 3

    .line 1
    const-string v0, "easeType"

    .line 2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "easeExp"

    .line 8
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 13
    const-string v2, "easeParamsExp"

    .line 14
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_0
    new-instance v2, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 34
    invoke-direct {v2, p0, v0, v1, p1}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-object v2
    .line 39
.end method


# virtual methods
.method public get(F)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mRatioVar:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    float-to-double v1, p1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 9
    iget-object p0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 14
    move-result-wide p0

    .line 17
    double-to-float p0, p0

    .line 18
    return p0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 20
    if-eqz p0, :cond_1

    .line 22
    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    return p1
    .line 29
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mEaseFunExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
    .line 14
.end method
