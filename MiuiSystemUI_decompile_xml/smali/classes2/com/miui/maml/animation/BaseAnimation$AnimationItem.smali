.class public Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mAni:Lcom/miui/maml/animation/BaseAnimation;

.field private mAttrsValue:[D

.field public mDeltaTimeExp:Lcom/miui/maml/data/Expression;

.field public mExps:[Lcom/miui/maml/data/Expression;

.field public mInitTime:J

.field public mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

.field private mName:Ljava/lang/String;

.field private mNeedEvaluate:Z

.field public mTime:J


# direct methods
.method public constructor <init>(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 6
    iput-object p1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    .line 8
    invoke-direct {p0, p2}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->load(Lorg/w3c/dom/Element;)V

    .line 10
    return-void
    .line 13
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/animation/BaseAnimation;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "name"

    .line 8
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mName:Ljava/lang/String;

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    .line 22
    iget-object v1, v1, Lcom/miui/maml/animation/BaseAnimation;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 24
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 26
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mName:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v2, p0}, Lcom/miui/maml/ScreenElementRoot;->addAnimationItem(Ljava/lang/String;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;)V

    .line 32
    :cond_0
    invoke-static {v0, p1}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->create(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 35
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 39
    const-string/jumbo v1, "time"

    .line 41
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 54
    move-result-wide v1

    .line 57
    iput-wide v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    :cond_1
    const-string v1, "dtime"

    .line 60
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 66
    move-result-object v1

    .line 69
    iput-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lcom/miui/maml/data/Expression;

    .line 70
    iget-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    .line 72
    invoke-virtual {v1}, Lcom/miui/maml/animation/BaseAnimation;->getAttrs()[Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    array-length v2, v1

    .line 80
    new-array v2, v2, [D

    .line 81
    iput-object v2, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    .line 83
    array-length v2, v1

    .line 85
    new-array v2, v2, [Lcom/miui/maml/data/Expression;

    .line 86
    iput-object v2, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lcom/miui/maml/data/Expression;

    .line 88
    array-length v2, v1

    .line 90
    const/4 v3, 0x0

    .line 91
    move v4, v3

    .line 92
    :goto_0
    if-ge v3, v2, :cond_3

    .line 93
    aget-object v5, v1, v3

    .line 95
    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v6

    .line 100
    invoke-static {v0, v6}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 101
    move-result-object v6

    .line 104
    if-nez v6, :cond_2

    .line 105
    if-nez v4, :cond_2

    .line 107
    const-string/jumbo v7, "value"

    .line 109
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v5

    .line 115
    if-nez v5, :cond_2

    .line 116
    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v5

    .line 121
    invoke-static {v0, v5}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 122
    move-result-object v6

    .line 125
    :cond_2
    iget-object v5, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lcom/miui/maml/data/Expression;

    .line 126
    add-int/lit8 v7, v4, 0x1

    .line 128
    aput-object v6, v5, v4

    .line 130
    add-int/lit8 v3, v3, 0x1

    .line 132
    move v4, v7

    .line 134
    goto :goto_0

    .line 135
    :cond_3
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 136
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    .line 138
    return-void
    .line 140
.end method

.method private reevaluate()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lcom/miui/maml/data/Expression;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v2, v1, :cond_2

    .line 10
    aget-object v4, v0, v2

    .line 12
    iget-object v5, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    .line 14
    add-int/lit8 v6, v3, 0x1

    .line 16
    if-nez v4, :cond_1

    .line 18
    const-wide/16 v7, 0x0

    .line 20
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 23
    move-result-wide v7

    .line 26
    :goto_1
    aput-wide v7, v5, v3

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 29
    move v3, v6

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    return-void
    .line 33
.end method


# virtual methods
.method public attrExists(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mExps:[Lcom/miui/maml/data/Expression;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    if-ltz p1, :cond_1

    .line 7
    array-length v1, p0

    .line 9
    if-lt p1, v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    aget-object p0, p0, p1

    .line 13
    if-eqz p0, :cond_1

    .line 15
    const/4 v0, 0x1

    .line 17
    :cond_1
    :goto_0
    return v0
    .line 18
.end method

.method public changeInterpolator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAni:Lcom/miui/maml/animation/BaseAnimation;

    .line 4
    invoke-virtual {v1}, Lcom/miui/maml/animation/BaseAnimation;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v1

    .line 9
    invoke-direct {v0, v1, p1, p3, p2}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 13
    return-void
    .line 15
.end method

.method public get(I)D
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    .line 2
    if-eqz v0, :cond_2

    .line 4
    if-ltz p1, :cond_2

    .line 6
    array-length v0, v0

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->reevaluate()V

    .line 16
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 20
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mAttrsValue:[D

    .line 22
    aget-wide p0, p0, p1

    .line 24
    return-wide p0

    .line 26
    :cond_2
    :goto_0
    const-string p0, "fail to get number in AnimationItem:"

    .line 27
    const-string v0, "BaseAnimation"

    .line 29
    invoke-static {p0, p1, v0}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    const-wide/16 p0, 0x0

    .line 34
    return-wide p0
    .line 36
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mNeedEvaluate:Z

    .line 3
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInitTime:J

    .line 5
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 7
    return-void
    .line 9
.end method
