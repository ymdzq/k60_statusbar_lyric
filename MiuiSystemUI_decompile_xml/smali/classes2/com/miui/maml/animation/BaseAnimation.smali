.class public abstract Lcom/miui/maml/animation/BaseAnimation;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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

    .line 10
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    const-string/jumbo v0, "value"

    .line 9
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 0

    .line 8
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/animation/BaseAnimation;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mLoop:Z

    .line 4
    iput-object p4, p0, Lcom/miui/maml/animation/BaseAnimation;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 5
    iput-object p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    .line 6
    array-length p3, p3

    new-array p3, p3, [D

    iput-object p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method private getRatio(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;JJJ)F
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    cmp-long p0, p6, v0

    .line 4
    if-nez p0, :cond_0

    .line 6
    const/high16 p0, 0x3f800000    # 1.0f

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    sub-long/2addr p2, p4

    .line 11
    long-to-float p0, p2

    .line 12
    long-to-float p2, p6

    .line 13
    div-float/2addr p0, p2

    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p1, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mInterpolator:Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 17
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1, p0}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->get(F)F

    .line 21
    move-result p0

    .line 24
    :cond_1
    return p0
    .line 25
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "name"

    .line 2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    xor-int/2addr v0, v1

    .line 15
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mHasName:Z

    .line 16
    invoke-virtual {p0}, Lcom/miui/maml/animation/BaseAnimation;->getVariables()Lcom/miui/maml/data/Variables;

    .line 18
    move-result-object v0

    .line 21
    iget-boolean v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mHasName:Z

    .line 22
    if-eqz v2, :cond_0

    .line 24
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    iget-object v4, p0, Lcom/miui/maml/animation/BaseAnimation;->mName:Ljava/lang/String;

    .line 33
    const-string v5, ".current_frame"

    .line 35
    invoke-static {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 40
    invoke-direct {v2, v3, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 41
    iput-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurrentFrame:Lcom/miui/maml/data/IndexedVariable;

    .line 44
    :cond_0
    const-string v2, "delay"

    .line 46
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 51
    invoke-static {v0, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 52
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDelay:Lcom/miui/maml/data/Expression;

    .line 56
    const-string v0, "initPause"

    .line 58
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 64
    move-result v0

    .line 67
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mInitPaused:Z

    .line 68
    const-string v0, "loop"

    .line 70
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 75
    const-string v2, "false"

    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 78
    move-result v0

    .line 81
    xor-int/2addr v0, v1

    .line 82
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mLoop:Z

    .line 83
    const-string/jumbo v0, "tag"

    .line 85
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTag:Ljava/lang/String;

    .line 92
    const-string v0, "Item"

    .line 94
    filled-new-array {p2, v0}, [Ljava/lang/String;

    .line 96
    move-result-object p2

    .line 99
    new-instance v0, Lcom/miui/maml/animation/BaseAnimation$1;

    .line 100
    invoke-direct {v0, p0}, Lcom/miui/maml/animation/BaseAnimation$1;-><init>(Lcom/miui/maml/animation/BaseAnimation;)V

    .line 102
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 105
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 110
    move-result p2

    .line 113
    if-gtz p2, :cond_1

    .line 114
    const-string p0, "BaseAnimation"

    .line 116
    const-string p1, "empty items"

    .line 118
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 123
    :cond_1
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 124
    invoke-static {p2, v1}, Landroidx/appcompat/view/menu/CascadingMenuPopup$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 126
    move-result-object p2

    .line 129
    check-cast p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 130
    iget-wide v2, p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 132
    const-wide v4, 0xe8d4a51000L

    .line 134
    cmp-long p2, v2, v4

    .line 139
    if-ltz p2, :cond_2

    .line 141
    move p2, v1

    .line 143
    goto :goto_0

    .line 144
    :cond_2
    const/4 p2, 0x0

    .line 145
    :goto_0
    iput-boolean p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    .line 146
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 150
    move-result p2

    .line 153
    if-le p2, v1, :cond_3

    .line 154
    iget-boolean p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    .line 156
    if-eqz p2, :cond_3

    .line 158
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 162
    move-result v0

    .line 165
    add-int/lit8 v0, v0, -0x2

    .line 166
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    move-result-object p2

    .line 171
    check-cast p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 172
    iget-wide v0, p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 174
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 176
    goto :goto_1

    .line 178
    :cond_3
    iget-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 179
    invoke-static {p2, v1}, Landroidx/appcompat/view/menu/CascadingMenuPopup$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 181
    move-result-object p2

    .line 184
    check-cast p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 185
    iget-wide v0, p2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 187
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 189
    :goto_1
    const-string p2, "Triggers"

    .line 191
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 193
    move-result-object p1

    .line 196
    if-eqz p1, :cond_4

    .line 197
    new-instance p2, Lcom/miui/maml/CommandTriggers;

    .line 199
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 201
    invoke-direct {p2, p1, v0}, Lcom/miui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 203
    iput-object p2, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 206
    :cond_4
    return-void
    .line 208
.end method

.method private reevaluate()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    const/4 v3, 0x0

    .line 10
    move-wide v5, v1

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge v4, v0, :cond_3

    .line 13
    iget-object v7, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v7

    .line 20
    check-cast v7, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 21
    iget-object v8, v7, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mDeltaTimeExp:Lcom/miui/maml/data/Expression;

    .line 23
    if-eqz v8, :cond_1

    .line 25
    invoke-virtual {v8}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 27
    move-result-wide v8

    .line 30
    double-to-long v8, v8

    .line 31
    cmp-long v10, v8, v1

    .line 32
    if-gez v10, :cond_0

    .line 34
    move-wide v8, v1

    .line 36
    :cond_0
    add-long/2addr v5, v8

    .line 37
    iput-wide v5, v7, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 38
    goto :goto_1

    .line 40
    :cond_1
    iget-wide v7, v7, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 41
    cmp-long v9, v7, v5

    .line 43
    if-ltz v9, :cond_2

    .line 45
    move-wide v5, v7

    .line 47
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_3
    const-wide v1, 0xe8d4a51000L

    .line 51
    cmp-long v1, v5, v1

    .line 56
    const/4 v2, 0x1

    .line 58
    if-ltz v1, :cond_4

    .line 59
    move v3, v2

    .line 61
    :cond_4
    iput-boolean v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    .line 62
    if-le v0, v2, :cond_5

    .line 64
    if-eqz v3, :cond_5

    .line 66
    iget-object v1, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 68
    add-int/lit8 v0, v0, -0x2

    .line 70
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 75
    check-cast v0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 76
    iget-wide v0, v0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 78
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 80
    goto :goto_2

    .line 82
    :cond_5
    iput-wide v5, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 83
    :goto_2
    return-void
    .line 85
.end method

.method private resetTime()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 9
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 25
    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->reset()V

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/animation/BaseAnimation;->reevaluate()V

    .line 33
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mStartTime:J

    .line 36
    invoke-direct {p0, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    .line 38
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    .line 42
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mEndTime:J

    .line 44
    invoke-direct {p0, v0, v1}, Lcom/miui/maml/animation/BaseAnimation;->transToAnimTime(J)J

    .line 46
    move-result-wide v0

    .line 49
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimEndTime:J

    .line 50
    iget-wide v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    .line 52
    sub-long/2addr v0, v2

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 55
    move-result-wide v0

    .line 58
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    .line 59
    return-void
    .line 61
.end method

.method private transToAnimTime(J)J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    cmp-long v0, p1, v0

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 8
    cmp-long v0, p1, v0

    .line 10
    if-lez v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    return-wide p1

    .line 15
    :cond_1
    :goto_0
    iget-wide p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 16
    return-wide p0
    .line 18
.end method


# virtual methods
.method public finish()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->finish()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_0
    if-ge v2, v0, :cond_1

    .line 17
    iget-object v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 24
    check-cast v3, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 25
    invoke-virtual {v3}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->reset()V

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 33
    array-length v0, v0

    .line 35
    :goto_1
    if-ge v1, v0, :cond_2

    .line 36
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 38
    const-wide/16 v3, 0x0

    .line 40
    aput-wide v3, v2, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_1

    .line 46
    :cond_2
    return-void
    .line 47
.end method

.method public getAttrs()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getCurValue(I)D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 2
    aget-wide p0, p0, p1

    .line 4
    return-wide p0
    .line 6
.end method

.method public getDefaultValue()D
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    return-wide v0
    .line 4
.end method

.method public getDelayValue(I)D
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 3
    move-result-object p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 9
    move-result-wide p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-wide/16 p0, 0x0

    .line 14
    :goto_0
    return-wide p0
    .line 16
.end method

.method public getItem(I)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 18
    check-cast p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 19
    return-object p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return-object p0
    .line 23
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTag:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getVariables()Lcom/miui/maml/data/Variables;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public init()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/CommandTriggers;->init()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public onAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public onCreateItem(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;
    .locals 0

    .line 1
    new-instance p0, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;-><init>(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    if-nez p2, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/animation/BaseAnimation;->getDefaultValue()D

    .line 7
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    .line 11
    array-length v2, v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_2

    .line 15
    if-nez p1, :cond_1

    .line 17
    move-wide v4, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p1, v3}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 21
    move-result-wide v4

    .line 24
    :goto_1
    iget-object v6, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 25
    invoke-virtual {p2, v3}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->get(I)D

    .line 27
    move-result-wide v7

    .line 30
    sub-double/2addr v7, v4

    .line 31
    float-to-double v9, p3

    .line 32
    mul-double/2addr v7, v9

    .line 33
    add-double/2addr v7, v4

    .line 34
    aput-wide v7, v6, v3

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    return-void
    .line 40
.end method

.method public pause()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/CommandTriggers;->pause()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public pauseAnim(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 7
    if-nez v0, :cond_1

    .line 9
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 12
    iput-wide p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mPauseTime:J

    .line 14
    :cond_1
    return-void
    .line 16
.end method

.method public playAnim(JJJZZ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-wide p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 7
    const-wide/16 v0, 0x0

    .line 9
    cmp-long v2, p3, v0

    .line 11
    const-wide/16 v3, -0x1

    .line 13
    if-gez v2, :cond_2

    .line 15
    cmp-long v2, p3, v3

    .line 17
    if-nez v2, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    move-wide p3, v0

    .line 22
    :cond_2
    :goto_0
    iput-wide p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mStartTime:J

    .line 23
    iput-wide p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    .line 25
    cmp-long v2, p5, v0

    .line 27
    if-gez v2, :cond_4

    .line 29
    cmp-long v2, p5, v3

    .line 31
    if-nez v2, :cond_3

    .line 33
    goto :goto_1

    .line 35
    :cond_3
    move-wide p5, v0

    .line 36
    :cond_4
    :goto_1
    iput-wide p5, p0, Lcom/miui/maml/animation/BaseAnimation;->mEndTime:J

    .line 37
    iput-wide p5, p0, Lcom/miui/maml/animation/BaseAnimation;->mAnimEndTime:J

    .line 39
    iput-boolean p7, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsLoop:Z

    .line 41
    iput-boolean p8, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsDelay:Z

    .line 43
    cmp-long p7, p3, v3

    .line 45
    const/4 v2, 0x1

    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz p7, :cond_6

    .line 49
    cmp-long p7, p3, p5

    .line 51
    if-ltz p7, :cond_5

    .line 53
    cmp-long p7, p5, v0

    .line 55
    if-ltz p7, :cond_5

    .line 57
    goto :goto_2

    .line 59
    :cond_5
    move p7, v3

    .line 60
    goto :goto_3

    .line 61
    :cond_6
    :goto_2
    move p7, v2

    .line 62
    :goto_3
    iput-boolean p7, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsReverse:Z

    .line 63
    cmp-long p3, p3, p5

    .line 65
    if-nez p3, :cond_7

    .line 67
    iput-boolean v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsLoop:Z

    .line 69
    :cond_7
    if-eqz p8, :cond_8

    .line 71
    iget-object p3, p0, Lcom/miui/maml/animation/BaseAnimation;->mDelay:Lcom/miui/maml/data/Expression;

    .line 73
    if-eqz p3, :cond_8

    .line 75
    long-to-double p1, p1

    .line 77
    invoke-virtual {p3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 78
    move-result-wide p3

    .line 81
    add-double/2addr p3, p1

    .line 82
    double-to-long p1, p3

    .line 83
    iput-wide p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 84
    :cond_8
    iput-boolean v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    .line 86
    iput-boolean v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 88
    iput-boolean v3, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 90
    iput-boolean v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    .line 92
    iput-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    .line 94
    return-void
    .line 96
.end method

.method public reset(J)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mAttrs:[Ljava/lang/String;

    .line 7
    array-length v0, v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    iget-object v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 13
    invoke-virtual {p0, v1}, Lcom/miui/maml/animation/BaseAnimation;->getDelayValue(I)D

    .line 15
    move-result-wide v3

    .line 18
    aput-wide v3, v2, v1

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mInitPaused:Z

    .line 24
    if-eqz v0, :cond_2

    .line 26
    const-wide/16 v3, 0x0

    .line 28
    const-wide/16 v5, 0x0

    .line 30
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v0, p0

    .line 34
    move-wide v1, p1

    .line 35
    invoke-virtual/range {v0 .. v8}, Lcom/miui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    .line 36
    goto :goto_1

    .line 39
    :cond_2
    const-wide/16 v3, 0x0

    .line 40
    const-wide/16 v5, -0x1

    .line 42
    const/4 v7, 0x1

    .line 44
    const/4 v8, 0x1

    .line 45
    move-object v0, p0

    .line 46
    move-wide v1, p1

    .line 47
    invoke-virtual/range {v0 .. v8}, Lcom/miui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    .line 48
    :goto_1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mHasName:Z

    .line 51
    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurrentFrame:Lcom/miui/maml/data/IndexedVariable;

    .line 55
    const-wide/16 v1, 0x0

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 59
    :cond_3
    const-string v0, "init"

    .line 62
    invoke-virtual {p0, v0}, Lcom/miui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    .line 64
    return-void
    .line 67
.end method

.method public resume()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/CommandTriggers;->resume()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public resumeAnim(J)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 7
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 13
    iget-wide v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 15
    iget-wide v2, p0, Lcom/miui/maml/animation/BaseAnimation;->mPauseTime:J

    .line 17
    sub-long/2addr p1, v2

    .line 19
    add-long/2addr p1, v0

    .line 20
    iput-wide p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 21
    :cond_1
    return-void
    .line 23
.end method

.method public setCurValue(ID)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation;->mCurValues:[D

    .line 2
    aput-wide p2, p0, p1

    .line 4
    return-void
    .line 6
.end method

.method public setDisable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    .line 2
    return-void
    .line 4
.end method

.method public final tick(J)V
    .locals 17

    .line 1
    move-object/from16 v8, p0

    .line 2
    iget-boolean v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 4
    if-nez v0, :cond_d

    .line 6
    iget-boolean v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mDisable:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    goto/16 :goto_4

    .line 12
    :cond_0
    iget-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 14
    sub-long v0, p1, v0

    .line 16
    const-wide/16 v2, 0x0

    .line 18
    cmp-long v4, v0, v2

    .line 20
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    if-gez v4, :cond_2

    .line 24
    iget-boolean v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    .line 26
    if-eqz v0, :cond_1

    .line 28
    iput-boolean v5, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstFrame:Z

    .line 30
    move-wide v0, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    invoke-virtual {v8, v6, v6, v0}, Lcom/miui/maml/animation/BaseAnimation;->onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V

    .line 35
    return-void

    .line 38
    :cond_2
    :goto_0
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsFirstReset:Z

    .line 39
    if-nez v4, :cond_3

    .line 41
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 43
    if-eqz v4, :cond_4

    .line 45
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    .line 47
    if-nez v4, :cond_4

    .line 49
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mLoop:Z

    .line 51
    if-eqz v4, :cond_4

    .line 53
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLoop:Z

    .line 55
    if-eqz v4, :cond_4

    .line 57
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/animation/BaseAnimation;->resetTime()V

    .line 59
    :cond_4
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsTimeInfinite:Z

    .line 62
    const/4 v7, 0x1

    .line 64
    if-nez v4, :cond_5

    .line 65
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mLoop:Z

    .line 67
    if-eqz v4, :cond_5

    .line 69
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLoop:Z

    .line 71
    if-nez v4, :cond_7

    .line 73
    :cond_5
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 75
    if-eqz v4, :cond_7

    .line 77
    iput-boolean v7, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsPaused:Z

    .line 79
    iget-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 81
    iget-wide v2, v8, Lcom/miui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    .line 83
    add-long/2addr v0, v2

    .line 85
    iput-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mPauseTime:J

    .line 86
    iget-boolean v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mHasName:Z

    .line 88
    if-eqz v0, :cond_6

    .line 90
    iget-object v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mCurrentFrame:Lcom/miui/maml/data/IndexedVariable;

    .line 92
    iget-wide v1, v8, Lcom/miui/maml/animation/BaseAnimation;->mEndTime:J

    .line 94
    long-to-double v1, v1

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 97
    :cond_6
    const-string v0, "end"

    .line 100
    invoke-virtual {v8, v0}, Lcom/miui/maml/animation/BaseAnimation;->onAction(Ljava/lang/String;)V

    .line 102
    return-void

    .line 105
    :cond_7
    iget-wide v9, v8, Lcom/miui/maml/animation/BaseAnimation;->mPlayTimeRange:J

    .line 106
    cmp-long v4, v0, v9

    .line 108
    const-wide/16 v11, 0x1

    .line 110
    if-ltz v4, :cond_8

    .line 112
    add-long v13, v9, v11

    .line 114
    rem-long/2addr v0, v13

    .line 116
    sub-long v0, p1, v0

    .line 117
    iput-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mResetTime:J

    .line 119
    iput-boolean v7, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsLastFrame:Z

    .line 121
    move-wide v0, v9

    .line 123
    :cond_8
    iget-boolean v4, v8, Lcom/miui/maml/animation/BaseAnimation;->mIsReverse:Z

    .line 124
    if-eqz v4, :cond_9

    .line 126
    iget-wide v9, v8, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    .line 128
    sub-long/2addr v9, v0

    .line 130
    goto :goto_1

    .line 131
    :cond_9
    iget-wide v9, v8, Lcom/miui/maml/animation/BaseAnimation;->mAnimStartTime:J

    .line 132
    add-long/2addr v9, v0

    .line 134
    :goto_1
    iget-wide v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mRealTimeRange:J

    .line 135
    add-long/2addr v0, v11

    .line 137
    rem-long/2addr v9, v0

    .line 138
    iget-object v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 141
    move-result v0

    .line 144
    move-object v1, v6

    .line 145
    :goto_2
    if-ge v5, v0, :cond_c

    .line 146
    iget-object v1, v8, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v1

    .line 153
    move-object v11, v1

    .line 154
    check-cast v11, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 155
    iget-wide v12, v11, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 157
    cmp-long v1, v9, v12

    .line 159
    if-gez v1, :cond_b

    .line 161
    if-nez v5, :cond_a

    .line 163
    move-wide v4, v2

    .line 165
    move-wide v15, v12

    .line 166
    move-object v12, v6

    .line 167
    move-wide v6, v15

    .line 168
    goto :goto_3

    .line 169
    :cond_a
    iget-object v0, v8, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 170
    sub-int/2addr v5, v7

    .line 172
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    move-result-object v0

    .line 176
    move-object v6, v0

    .line 177
    check-cast v6, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 178
    iget-wide v0, v11, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 180
    iget-wide v2, v6, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->mTime:J

    .line 182
    sub-long/2addr v0, v2

    .line 184
    move-wide v4, v2

    .line 185
    move-object v12, v6

    .line 186
    move-wide v6, v0

    .line 187
    :goto_3
    move-object/from16 v0, p0

    .line 188
    move-object v1, v12

    .line 190
    move-wide v2, v9

    .line 191
    invoke-direct/range {v0 .. v7}, Lcom/miui/maml/animation/BaseAnimation;->getRatio(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;JJJ)F

    .line 192
    move-result v0

    .line 195
    invoke-virtual {v8, v12, v11, v0}, Lcom/miui/maml/animation/BaseAnimation;->onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V

    .line 196
    return-void

    .line 199
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 200
    move-object v1, v11

    .line 202
    goto :goto_2

    .line 203
    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    .line 204
    invoke-virtual {v8, v6, v1, v0}, Lcom/miui/maml/animation/BaseAnimation;->onTick(Lcom/miui/maml/animation/BaseAnimation$AnimationItem;Lcom/miui/maml/animation/BaseAnimation$AnimationItem;F)V

    .line 206
    :cond_d
    :goto_4
    return-void
    .line 209
.end method
