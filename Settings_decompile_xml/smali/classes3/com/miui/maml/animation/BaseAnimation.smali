.class public abstract Lcom/miui/maml/animation/BaseAnimation;
.super Ljava/lang/Object;
.source "BaseAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
    }
.end annotation


# static fields
.field private static final INFINITE_TIME:J = 0xe8d4a51000L

.field private static final LOG_TAG:Ljava/lang/String; = "BaseAnimation"

.field public static final PLAY_TO_END:I = -0x1

.field private static final VAR_CURRENT_FRAME:Ljava/lang/String; = "current_frame"


# instance fields
.field private mAnimEndTime:J

.field private mAnimStartTime:J

.field protected mAttrs:[Ljava/lang/String;

.field private mCurValues:[D

.field private mCurrentFrame:Lcom/miui/maml/data/IndexedVariable;

.field private mDelay:Lcom/miui/maml/data/Expression;

.field private mDisable:Z

.field private mEndTime:J

.field private mHasName:Z

.field private mInitPaused:Z

.field private mIsDelay:Z

.field private mIsFirstFrame:Z

.field private mIsFirstReset:Z

.field private mIsLastFrame:Z

.field private mIsLoop:Z

.field private mIsPaused:Z

.field private mIsReverse:Z

.field private mIsTimeInfinite:Z

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/animation/BaseAnimation$AnimationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLoop:Z

.field private mName:Ljava/lang/String;

.field private mPauseTime:J

.field private mPlayTimeRange:J

.field private mRealTimeRange:J

.field private mResetTime:J

.field protected mScreenElement:Lcom/miui/maml/elements/ScreenElement;

.field private mStartTime:J

.field private mTag:Ljava/lang/String;

.field private mTriggers:Lcom/miui/maml/CommandTriggers;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "value"

    .line 184
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    const-string/jumbo v0, "value"

    .line 180
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 0

    .line 174
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mLoop:Z

    .line 167
    iput-object p4, p0, Lcom/miui/maml/animation/BaseAnimation;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 168
    iput-object p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    .line 169
    array-length p3, p3

    new-array p3, p3, [D

    iput-object p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method private getRatio(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;JJJ)F
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p6, v0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    sub-long/2addr p2, p4

    long-to-float p0, p2

    long-to-float p2, p6

    div-float/2addr p0, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 452
    iget-object p1, p1, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    if-eqz p1, :cond_1

    .line 453
    invoke-virtual {p1, p0}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->get(F)F

    move-result p0

    :cond_1
    return p0
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 6

    const-string v0, "name"

    .line 192
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    .line 193
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mHasName:Z

    .line 194
    invoke-virtual {p0}, Lcom/miui/maml/animation/BaseAnimation;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    .line 195
    iget-boolean v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v2, :cond_0

    .line 196
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "current_frame"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurrentFrame:Lcom/miui/maml/data/IndexedVariable;

    :cond_0
    const-string v2, "delay"

    .line 198
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDelay:Lcom/miui/maml/data/Expression;

    const-string v0, "initPause"

    .line 200
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mInitPaused:Z

    const-string v0, "loop"

    .line 201
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mLoop:Z

    const-string/jumbo v0, "tag"

    .line 202
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTag:Ljava/lang/String;

    const-string v0, "Item"

    .line 204
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/miui/maml/animation/BaseAnimation$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/animation/BaseAnimation$1;-><init>(Lcom/miui/maml/animation/BaseAnimation;)V

    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 213
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_1

    const-string p0, "BaseAnimation"

    const-string p1, "empty items"

    .line 214
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_1
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v2, p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    const-wide v4, 0xe8d4a51000L

    cmp-long p2, v2, v4

    if-ltz p2, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    .line 220
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v1, :cond_3

    iget-boolean p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-eqz p2, :cond_3

    .line 221
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v0, p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    goto :goto_1

    .line 223
    :cond_3
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v0, p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    :goto_1
    const-string p2, "Triggers"

    .line 227
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 229
    new-instance p2, Lcom/miui/maml/CommandTriggers;

    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-direct {p2, p1, v0}, Lcom/miui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    iput-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    :cond_4
    return-void
.end method

.method private reevaluate()V
    .locals 11

    .line 485
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_3

    .line 487
    iget-object v7, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 488
    iget-object v8, v7, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lcom/miui/maml/data/Expression;

    if-eqz v8, :cond_1

    .line 489
    invoke-virtual {v8}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    double-to-long v8, v8

    cmp-long v10, v8, v1

    if-gez v10, :cond_0

    move-wide v8, v1

    :cond_0
    add-long/2addr v5, v8

    .line 494
    iput-wide v5, v7, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    goto :goto_1

    .line 495
    :cond_1
    iget-wide v7, v7, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    cmp-long v9, v7, v5

    if-ltz v9, :cond_2

    move-wide v5, v7

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-wide v1, 0xe8d4a51000L

    cmp-long v1, v5, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_4

    move v3, v2

    .line 500
    :cond_4
    iput-boolean v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-le v0, v2, :cond_5

    if-eqz v3, :cond_5

    .line 502
    iget-object v1, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    iget-wide v0, v0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    goto :goto_2

    .line 504
    :cond_5
    iput-wide v5, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    :goto_2
    return-void
.end method

.method private resetTime()V
    .locals 4

    .line 459
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 460
    iput-boolean v1, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    .line 462
    :cond_0
    iput-boolean v1, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 464
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 466
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/animation/BaseAnimation;->reevaluate()V

    .line 471
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mStartTime:J

    invoke-direct {p0, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    .line 472
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mEndTime:J

    invoke-direct {p0, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimEndTime:J

    .line 473
    iget-wide v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    return-void
.end method

.method private transToAnimTime(J)J
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 477
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return-wide p1

    .line 478
    :cond_1
    :goto_0
    iget-wide p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    return-wide p0
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->finish()V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 261
    iget-object v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    invoke-virtual {v3}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 266
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getAttrs()[Ljava/lang/String;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    return-object p0
.end method

.method public getCurValue(I)D
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method protected getDefaultValue()D
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getDelayValue(I)D
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 310
    invoke-virtual {p0, p1}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method protected getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
    .locals 1

    if-ltz p1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method protected final getVariables()Lcom/miui/maml/data/Variables;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz p0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/miui/maml/CommandTriggers;->init()V

    :cond_0
    return-void
.end method

.method public onAction(Ljava/lang/String;)V
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz p0, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Lcom/miui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onCreateItem(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
    .locals 0

    .line 244
    new-instance p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;-><init>(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    return-object p0
.end method

.method protected onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 11

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/animation/BaseAnimation;->getDefaultValue()D

    move-result-wide v0

    .line 410
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    if-nez p1, :cond_1

    move-wide v4, v0

    goto :goto_1

    .line 412
    :cond_1
    invoke-virtual {p1, v3}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v4

    .line 413
    :goto_1
    iget-object v6, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    invoke-virtual {p2, v3}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    move-result-wide v7

    sub-double/2addr v7, v4

    float-to-double v9, p3

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    aput-wide v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz p0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/miui/maml/CommandTriggers;->pause()V

    :cond_0
    return-void
.end method

.method public pauseAnim(J)V
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_0

    return-void

    .line 433
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 434
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 435
    iput-wide p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mPauseTime:J

    :cond_1
    return-void
.end method

.method public playAnim(JJJZZ)V
    .locals 5

    .line 314
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_0

    return-void

    .line 317
    :cond_0
    iput-wide p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    const-wide/16 v3, -0x1

    if-gez v2, :cond_2

    cmp-long v2, p3, v3

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-wide p3, v0

    .line 318
    :cond_2
    :goto_0
    iput-wide p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mStartTime:J

    iput-wide p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    cmp-long v2, p5, v0

    if-gez v2, :cond_4

    cmp-long v2, p5, v3

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-wide p5, v0

    .line 319
    :cond_4
    :goto_1
    iput-wide p5, p0, Lcom/miui/maml/animation/BaseAnimation;->mEndTime:J

    iput-wide p5, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimEndTime:J

    .line 320
    iput-boolean p7, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsLoop:Z

    .line 321
    iput-boolean p8, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsDelay:Z

    cmp-long p7, p3, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p7, :cond_6

    cmp-long p7, p3, p5

    if-ltz p7, :cond_5

    cmp-long p7, p5, v0

    if-ltz p7, :cond_5

    goto :goto_2

    :cond_5
    move p7, v3

    goto :goto_3

    :cond_6
    :goto_2
    move p7, v2

    .line 322
    :goto_3
    iput-boolean p7, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsReverse:Z

    cmp-long p3, p3, p5

    if-nez p3, :cond_7

    .line 324
    iput-boolean v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsLoop:Z

    :cond_7
    if-eqz p8, :cond_8

    .line 327
    iget-object p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mDelay:Lcom/miui/maml/data/Expression;

    if-eqz p3, :cond_8

    long-to-double p1, p1

    .line 328
    invoke-virtual {p3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p3

    add-double/2addr p1, p3

    double-to-long p1, p1

    iput-wide p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 331
    :cond_8
    iput-boolean v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    .line 332
    iput-boolean v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 333
    iput-boolean v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 334
    iput-boolean v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    .line 335
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    return-void
.end method

.method public reset(J)V
    .locals 9

    .line 289
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 294
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    invoke-virtual {p0, v1}, Lcom/miui/maml/animation/BaseAnimation;->getDelayValue(I)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mInitPaused:Z

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 298
    invoke-virtual/range {v0 .. v8}, Lcom/miui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    .line 300
    invoke-virtual/range {v0 .. v8}, Lcom/miui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    .line 302
    :goto_1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurrentFrame:Lcom/miui/maml/data/IndexedVariable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_3
    const-string v0, "init"

    .line 305
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    if-eqz p0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/miui/maml/CommandTriggers;->resume()V

    :cond_0
    return-void
.end method

.method public resumeAnim(J)V
    .locals 4

    .line 440
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_0

    return-void

    .line 443
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 444
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 445
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    iget-wide v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mPauseTime:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    :cond_1
    return-void
.end method

.method public setCurValue(ID)V
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    aput-wide p2, p0, p1

    return-void
.end method

.method public setDisable(Z)V
    .locals 0

    .line 513
    iput-boolean p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    return-void
.end method

.method public final tick(J)V
    .locals 17

    move-object/from16 v8, p0

    .line 339
    iget-boolean v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    if-nez v0, :cond_d

    iget-boolean v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 343
    :cond_0
    iget-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-gez v4, :cond_2

    .line 345
    iget-boolean v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    if-eqz v0, :cond_1

    .line 346
    iput-boolean v5, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    move-wide v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 349
    invoke-virtual {v8, v6, v6, v0}, Lcom/miui/maml/animation/BaseAnimation;->onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V

    return-void

    .line 354
    :cond_2
    :goto_0
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    if-nez v4, :cond_3

    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    if-nez v4, :cond_4

    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mLoop:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLoop:Z

    if-eqz v4, :cond_4

    .line 355
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/animation/BaseAnimation;->resetTime()V

    .line 358
    :cond_4
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    const/4 v7, 0x1

    if-nez v4, :cond_5

    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mLoop:Z

    if-eqz v4, :cond_5

    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLoop:Z

    if-nez v4, :cond_7

    :cond_5
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    if-eqz v4, :cond_7

    .line 360
    iput-boolean v7, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 361
    iget-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    iget-wide v2, v8, Lcom/miui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    add-long/2addr v0, v2

    iput-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mPauseTime:J

    .line 362
    iget-boolean v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mHasName:Z

    if-eqz v0, :cond_6

    .line 363
    iget-object v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mCurrentFrame:Lcom/miui/maml/data/IndexedVariable;

    iget-wide v1, v8, Lcom/miui/maml/animation/BaseAnimation;->mEndTime:J

    long-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_6
    const-string v0, "end"

    .line 365
    invoke-virtual {v8, v0}, Lcom/miui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    return-void

    .line 369
    :cond_7
    iget-wide v9, v8, Lcom/miui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    cmp-long v4, v0, v9

    const-wide/16 v11, 0x1

    if-ltz v4, :cond_8

    add-long v13, v9, v11

    .line 370
    rem-long/2addr v0, v13

    sub-long v0, p1, v0

    iput-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 372
    iput-boolean v7, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    move-wide v0, v9

    .line 375
    :cond_8
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsReverse:Z

    if-eqz v4, :cond_9

    .line 376
    iget-wide v9, v8, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    sub-long/2addr v9, v0

    goto :goto_1

    .line 378
    :cond_9
    iget-wide v9, v8, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    add-long/2addr v9, v0

    .line 381
    :goto_1
    iget-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    add-long/2addr v0, v11

    rem-long/2addr v9, v0

    .line 383
    iget-object v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object v1, v6

    :goto_2
    if-ge v5, v0, :cond_c

    .line 385
    iget-object v1, v8, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 386
    iget-wide v12, v11, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    cmp-long v1, v9, v12

    if-gez v1, :cond_b

    if-nez v5, :cond_a

    move-wide v4, v2

    move-wide v15, v12

    move-object v12, v6

    move-wide v6, v15

    goto :goto_3

    .line 392
    :cond_a
    iget-object v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    sub-int/2addr v5, v7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 393
    iget-wide v0, v11, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    iget-wide v2, v6, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    sub-long/2addr v0, v2

    move-wide v4, v2

    move-object v12, v6

    move-wide v6, v0

    :goto_3
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v9

    .line 396
    invoke-direct/range {v0 .. v7}, Lcom/miui/maml/animation/BaseAnimation;->getRatio(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;JJJ)F

    move-result v0

    invoke-virtual {v8, v12, v11, v0}, Lcom/miui/maml/animation/BaseAnimation;->onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V

    return-void

    :cond_b
    add-int/lit8 v5, v5, 0x1

    move-object v1, v11

    goto :goto_2

    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    .line 400
    invoke-virtual {v8, v6, v1, v0}, Lcom/miui/maml/animation/BaseAnimation;->onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V

    :cond_d
    :goto_4
    return-void
.end method
