.class public final Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field public final mClearsTag:I

.field public mDpositionDt:F

.field public final mHoldAt100:Z

.field public final mInterpolator:Landroid/view/animation/Interpolator;

.field public mLastRender:J

.field public final mMC:Landroidx/constraintlayout/motion/widget/MotionController;

.field public mPosition:F

.field public mReverse:Z

.field public final mSetsTag:I

.field public final mTempRec:Landroid/graphics/Rect;

.field public final mUpDuration:I

.field public final mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionController;IIILandroid/view/animation/Interpolator;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 5
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mReverse:Z

    .line 13
    new-instance v1, Landroid/graphics/Rect;

    .line 15
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mTempRec:Landroid/graphics/Rect;

    .line 20
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mHoldAt100:Z

    .line 22
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 24
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 26
    iput p4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mUpDuration:I

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 30
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 34
    iget-object p2, p1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 36
    if-nez p2, :cond_0

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    .line 40
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iput-object p2, p1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 45
    :cond_0
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mAnimations:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iput-object p6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 52
    iput p7, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    .line 54
    iput p8, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    .line 56
    const/4 p1, 0x3

    .line 58
    if-ne p5, p1, :cond_1

    .line 59
    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mHoldAt100:Z

    .line 62
    :cond_1
    if-nez p3, :cond_2

    .line 64
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 66
    goto :goto_0

    .line 69
    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 70
    int-to-float p2, p3

    .line 72
    div-float/2addr p1, p2

    .line 73
    :goto_0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    .line 74
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutate()V

    .line 76
    return-void
    .line 79
.end method


# virtual methods
.method public final mutate()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mReverse:Z

    .line 4
    const/4 v2, 0x0

    .line 6
    iget v3, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mClearsTag:I

    .line 7
    iget v4, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mSetsTag:I

    .line 9
    const/4 v5, -0x1

    .line 11
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 12
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 14
    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 16
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mMC:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 21
    if-eqz v1, :cond_6

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 25
    move-result-wide v12

    .line 28
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 29
    sub-long v10, v12, v10

    .line 31
    iput-wide v12, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 33
    iget v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 35
    long-to-double v10, v10

    .line 37
    mul-double/2addr v10, v8

    .line 38
    double-to-float v8, v10

    .line 39
    iget v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    .line 40
    mul-float/2addr v8, v9

    .line 42
    sub-float/2addr v1, v8

    .line 43
    iput v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 44
    const/4 v8, 0x0

    .line 46
    cmpg-float v1, v1, v8

    .line 47
    if-gez v1, :cond_0

    .line 49
    iput v8, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 51
    :cond_0
    if-nez v7, :cond_1

    .line 53
    iget v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    iget v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 58
    invoke-interface {v7, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 60
    move-result v1

    .line 63
    :goto_0
    move v11, v1

    .line 64
    iget-object v14, v15, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 65
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 67
    move-object v10, v15

    .line 69
    move-object v7, v15

    .line 70
    move-object v15, v1

    .line 71
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    .line 72
    move-result v1

    .line 75
    iget v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 76
    cmpg-float v9, v9, v8

    .line 78
    if-gtz v9, :cond_4

    .line 80
    if-eq v4, v5, :cond_2

    .line 82
    iget-object v9, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 86
    move-result-wide v10

    .line 89
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    move-result-object v10

    .line 93
    invoke-virtual {v9, v4, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 94
    :cond_2
    if-eq v3, v5, :cond_3

    .line 97
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 99
    invoke-virtual {v4, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 101
    :cond_3
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRemoveList:Ljava/util/ArrayList;

    .line 104
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_4
    iget v0, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 109
    cmpl-float v0, v0, v8

    .line 111
    if-gtz v0, :cond_5

    .line 113
    if-eqz v1, :cond_d

    .line 115
    :cond_5
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 117
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 119
    goto :goto_2

    .line 122
    :cond_6
    move-object v1, v15

    .line 123
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 124
    move-result-wide v12

    .line 127
    iget-wide v10, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 128
    sub-long v10, v12, v10

    .line 130
    iput-wide v12, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 132
    iget v14, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 134
    long-to-double v10, v10

    .line 136
    mul-double/2addr v10, v8

    .line 137
    double-to-float v8, v10

    .line 138
    iget v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    .line 139
    mul-float/2addr v8, v9

    .line 141
    add-float/2addr v8, v14

    .line 142
    iput v8, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 143
    const/high16 v9, 0x3f800000    # 1.0f

    .line 145
    cmpl-float v8, v8, v9

    .line 147
    if-ltz v8, :cond_7

    .line 149
    iput v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 151
    :cond_7
    if-nez v7, :cond_8

    .line 153
    iget v7, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 155
    goto :goto_1

    .line 157
    :cond_8
    iget v8, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 158
    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    .line 160
    move-result v7

    .line 163
    :goto_1
    move v11, v7

    .line 164
    iget-object v14, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 165
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    .line 167
    move-object v10, v1

    .line 169
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    .line 170
    move-result v7

    .line 173
    iget v8, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 174
    cmpl-float v8, v8, v9

    .line 176
    if-ltz v8, :cond_b

    .line 178
    if-eq v4, v5, :cond_9

    .line 180
    iget-object v8, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 182
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 184
    move-result-wide v10

    .line 187
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    move-result-object v10

    .line 191
    invoke-virtual {v8, v4, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 192
    :cond_9
    if-eq v3, v5, :cond_a

    .line 195
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 197
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 199
    :cond_a
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mHoldAt100:Z

    .line 202
    if-nez v1, :cond_b

    .line 204
    iget-object v1, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRemoveList:Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_b
    iget v0, v0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mPosition:F

    .line 211
    cmpg-float v0, v0, v9

    .line 213
    if-ltz v0, :cond_c

    .line 215
    if-eqz v7, :cond_d

    .line 217
    :cond_c
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 219
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 221
    :cond_d
    :goto_2
    return-void
    .line 224
.end method

.method public final reverse()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mReverse:Z

    .line 3
    const/4 v0, -0x1

    .line 5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mUpDuration:I

    .line 6
    if-eq v1, v0, :cond_1

    .line 8
    if-nez v1, :cond_0

    .line 10
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    int-to-float v1, v1

    .line 18
    div-float/2addr v0, v1

    .line 19
    :goto_0
    iput v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mDpositionDt:F

    .line 20
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mVtController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    .line 22
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 29
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mLastRender:J

    .line 33
    return-void
    .line 35
.end method
