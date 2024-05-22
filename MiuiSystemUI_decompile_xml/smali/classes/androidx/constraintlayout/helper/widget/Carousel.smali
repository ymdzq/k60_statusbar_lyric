.class public Landroidx/constraintlayout/helper/widget/Carousel;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mBackwardTransition:I

.field public mDampening:F

.field public mEmptyViewBehavior:I

.field public mFirstViewReference:I

.field public mForwardTransition:I

.field public mIndex:I

.field public mInfiniteCarousel:Z

.field public final mList:Ljava/util/ArrayList;

.field public mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public mNextState:I

.field public mPreviousState:I

.field public mTouchUpMode:I

.field public final mUpdateRunnable:Landroidx/constraintlayout/helper/widget/Carousel$1;

.field public mVelocityThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mFirstViewReference:I

    .line 5
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mInfiniteCarousel:Z

    .line 6
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mBackwardTransition:I

    .line 7
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mForwardTransition:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousState:I

    .line 9
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mNextState:I

    const p1, 0x3f666666    # 0.9f

    .line 10
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mDampening:F

    const/4 p1, 0x4

    .line 11
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mEmptyViewBehavior:I

    const/4 p1, 0x1

    .line 12
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTouchUpMode:I

    const/high16 p1, 0x40000000    # 2.0f

    .line 13
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mVelocityThreshold:F

    .line 14
    new-instance p1, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Landroidx/constraintlayout/helper/widget/Carousel$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    const/4 v1, -0x1

    .line 18
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mFirstViewReference:I

    .line 19
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mInfiniteCarousel:Z

    .line 20
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mBackwardTransition:I

    .line 21
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mForwardTransition:I

    .line 22
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousState:I

    .line 23
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mNextState:I

    const v0, 0x3f666666    # 0.9f

    .line 24
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mDampening:F

    const/4 v0, 0x4

    .line 25
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mEmptyViewBehavior:I

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTouchUpMode:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 27
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mVelocityThreshold:F

    .line 28
    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Landroidx/constraintlayout/helper/widget/Carousel$1;

    .line 29
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 32
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mFirstViewReference:I

    .line 34
    iput-boolean p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mInfiniteCarousel:Z

    .line 35
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mBackwardTransition:I

    .line 36
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mForwardTransition:I

    .line 37
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousState:I

    .line 38
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mNextState:I

    const p3, 0x3f666666    # 0.9f

    .line 39
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mDampening:F

    const/4 p3, 0x4

    .line 40
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mEmptyViewBehavior:I

    const/4 p3, 0x1

    .line 41
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTouchUpMode:I

    const/high16 p3, 0x40000000    # 2.0f

    .line 42
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mVelocityThreshold:F

    .line 43
    new-instance p3, Landroidx/constraintlayout/helper/widget/Carousel$1;

    invoke-direct {p3, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Landroidx/constraintlayout/helper/widget/Carousel$1;

    .line 44
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getCurrentIndex()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 2
    return p0
    .line 4
.end method

.method public final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_b

    .line 2
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Carousel:[I

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 10
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, p2, :cond_a

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 17
    move-result v1

    .line 20
    const/4 v2, 0x2

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mFirstViewReference:I

    .line 24
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 26
    move-result v1

    .line 29
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mFirstViewReference:I

    .line 30
    goto/16 :goto_1

    .line 32
    :cond_0
    if-nez v1, :cond_1

    .line 34
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mBackwardTransition:I

    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 38
    move-result v1

    .line 41
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mBackwardTransition:I

    .line 42
    goto :goto_1

    .line 44
    :cond_1
    const/4 v2, 0x3

    .line 45
    if-ne v1, v2, :cond_2

    .line 46
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mForwardTransition:I

    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 50
    move-result v1

    .line 53
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mForwardTransition:I

    .line 54
    goto :goto_1

    .line 56
    :cond_2
    const/4 v2, 0x1

    .line 57
    if-ne v1, v2, :cond_3

    .line 58
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mEmptyViewBehavior:I

    .line 60
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 62
    move-result v1

    .line 65
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mEmptyViewBehavior:I

    .line 66
    goto :goto_1

    .line 68
    :cond_3
    const/4 v2, 0x6

    .line 69
    if-ne v1, v2, :cond_4

    .line 70
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousState:I

    .line 72
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 74
    move-result v1

    .line 77
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousState:I

    .line 78
    goto :goto_1

    .line 80
    :cond_4
    const/4 v2, 0x5

    .line 81
    if-ne v1, v2, :cond_5

    .line 82
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mNextState:I

    .line 84
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 86
    move-result v1

    .line 89
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mNextState:I

    .line 90
    goto :goto_1

    .line 92
    :cond_5
    const/16 v2, 0x8

    .line 93
    if-ne v1, v2, :cond_6

    .line 95
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mDampening:F

    .line 97
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 99
    move-result v1

    .line 102
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mDampening:F

    .line 103
    goto :goto_1

    .line 105
    :cond_6
    const/4 v2, 0x7

    .line 106
    if-ne v1, v2, :cond_7

    .line 107
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTouchUpMode:I

    .line 109
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 111
    move-result v1

    .line 114
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTouchUpMode:I

    .line 115
    goto :goto_1

    .line 117
    :cond_7
    const/16 v2, 0x9

    .line 118
    if-ne v1, v2, :cond_8

    .line 120
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mVelocityThreshold:F

    .line 122
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 124
    move-result v1

    .line 127
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mVelocityThreshold:F

    .line 128
    goto :goto_1

    .line 130
    :cond_8
    const/4 v2, 0x4

    .line 131
    if-ne v1, v2, :cond_9

    .line 132
    iget-boolean v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mInfiniteCarousel:Z

    .line 134
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 136
    move-result v1

    .line 139
    iput-boolean v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mInfiniteCarousel:Z

    .line 140
    :cond_9
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 142
    goto/16 :goto_0

    .line 144
    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    :cond_b
    return-void
    .line 149
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    move-result-object v0

    .line 8
    instance-of v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 9
    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 21
    const/4 v1, 0x0

    .line 24
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 25
    if-ge v1, v2, :cond_0

    .line 27
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 29
    aget v2, v2, v1

    .line 31
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    .line 33
    move-result-object v2

    .line 36
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 45
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTouchUpMode:I

    .line 47
    const/4 v2, 0x2

    .line 49
    if-ne v1, v2, :cond_2

    .line 50
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mForwardTransition:I

    .line 52
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 54
    move-result-object v0

    .line 57
    const/4 v1, 0x5

    .line 58
    if-eqz v0, :cond_1

    .line 59
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 61
    if-eqz v0, :cond_1

    .line 63
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 65
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 67
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mBackwardTransition:I

    .line 69
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 71
    move-result-object p0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;

    .line 77
    if-eqz p0, :cond_2

    .line 79
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 81
    :cond_2
    return-void
    .line 83
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 7
    return-void
    .line 10
.end method

.method public final onTransitionChange()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTransitionCompleted(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 2
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mNextState:I

    .line 4
    if-ne p1, v1, :cond_0

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousState:I

    .line 13
    if-ne p1, v1, :cond_1

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 17
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    .line 19
    :cond_1
    :goto_0
    iget-boolean p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mInfiniteCarousel:Z

    .line 21
    const/4 p1, 0x0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    throw p1

    .line 26
    :cond_2
    throw p1
    .line 27
.end method

.method public setAdapter(Landroidx/constraintlayout/helper/widget/Carousel$Adapter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
