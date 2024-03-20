.class public final Landroidx/constraintlayout/motion/widget/KeyTrigger;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCollisionRect:Landroid/graphics/RectF;

.field public mCross:Ljava/lang/String;

.field public mFireCrossReset:Z

.field public mFireLastPos:F

.field public mFireNegativeReset:Z

.field public mFirePositiveReset:Z

.field public mFireThreshold:F

.field public mMethodHashMap:Ljava/util/HashMap;

.field public mNegativeCross:Ljava/lang/String;

.field public mPositiveCross:Ljava/lang/String;

.field public mPostLayout:Z

.field public mTargetRect:Landroid/graphics/RectF;

.field public mTriggerCollisionId:I

.field public mTriggerCollisionView:Landroid/view/View;

.field public mTriggerID:I

.field public mTriggerReceiver:I

.field public mTriggerSlack:F

.field public mViewTransitionOnCross:I

.field public mViewTransitionOnNegativeCross:I

.field public mViewTransitionOnPositiveCross:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    .line 2
    const v0, 0x3dcccccd    # 0.1f

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    .line 8
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    .line 11
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    .line 15
    new-instance v1, Landroid/graphics/RectF;

    .line 17
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 19
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    .line 22
    new-instance v1, Landroid/graphics/RectF;

    .line 24
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 26
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    .line 29
    new-instance v1, Ljava/util/HashMap;

    .line 31
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    .line 36
    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    .line 39
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    .line 41
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 45
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    .line 47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    .line 49
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 51
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 54
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 56
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 58
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 60
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    .line 62
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    .line 65
    new-instance v0, Ljava/util/HashMap;

    .line 67
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 72
    return-void
    .line 74
.end method

.method public static setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 9
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 16
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 23
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 28
    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 32
    move-result-object p1

    .line 35
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 36
    :cond_0
    return-void
    .line 39
.end method


# virtual methods
.method public final addValues(Ljava/util/HashMap;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final clone()Landroidx/constraintlayout/motion/widget/Key;
    .locals 2

    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;-><init>()V

    .line 3
    invoke-super {v0, p0}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    .line 5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    .line 9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    .line 10
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 11
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    .line 12
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 13
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 14
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 15
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    .line 16
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    .line 17
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    .line 18
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    .line 19
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    .line 20
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    iput-object p0, v0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object p0

    return-object p0
.end method

.method public final conditionallyFire(FLandroid/view/View;)V
    .locals 10

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, -0x1

    .line 6
    if-eq v0, v3, :cond_6

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    .line 19
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 24
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 25
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    .line 27
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 29
    iget-boolean v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    .line 31
    invoke-static {v0, v4, v5}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 33
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    .line 36
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    .line 38
    invoke-static {v0, p2, v4}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    .line 43
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    .line 45
    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 53
    if-eqz v0, :cond_1

    .line 55
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 57
    move v0, v1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v0, v2

    .line 61
    :goto_0
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 62
    if-eqz v4, :cond_2

    .line 64
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 66
    move v4, v1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move v4, v2

    .line 70
    :goto_1
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 71
    move v9, v4

    .line 73
    move v4, v2

    .line 74
    move v2, v9

    .line 75
    goto/16 :goto_7

    .line 76
    :cond_3
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 78
    if-nez v0, :cond_4

    .line 80
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 82
    move v0, v1

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    move v0, v2

    .line 86
    :goto_2
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 87
    if-eqz v4, :cond_5

    .line 89
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 91
    move v4, v1

    .line 93
    goto :goto_3

    .line 94
    :cond_5
    move v4, v2

    .line 95
    :goto_3
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 96
    goto/16 :goto_7

    .line 98
    :cond_6
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 100
    const/4 v4, 0x0

    .line 102
    if-eqz v0, :cond_7

    .line 103
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    .line 105
    sub-float v5, p1, v0

    .line 107
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    .line 109
    sub-float/2addr v6, v0

    .line 111
    mul-float/2addr v6, v5

    .line 112
    cmpg-float v0, v6, v4

    .line 113
    if-gez v0, :cond_8

    .line 115
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 117
    move v0, v1

    .line 119
    goto :goto_4

    .line 120
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    .line 121
    sub-float v0, p1, v0

    .line 123
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 125
    move-result v0

    .line 128
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    .line 129
    cmpl-float v0, v0, v5

    .line 131
    if-lez v0, :cond_8

    .line 133
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireCrossReset:Z

    .line 135
    :cond_8
    move v0, v2

    .line 137
    :goto_4
    iget-boolean v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 138
    if-eqz v5, :cond_9

    .line 140
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    .line 142
    sub-float v6, p1, v5

    .line 144
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    .line 146
    sub-float/2addr v7, v5

    .line 148
    mul-float/2addr v7, v6

    .line 149
    cmpg-float v5, v7, v4

    .line 150
    if-gez v5, :cond_a

    .line 152
    cmpg-float v5, v6, v4

    .line 154
    if-gez v5, :cond_a

    .line 156
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 158
    move v5, v1

    .line 160
    goto :goto_5

    .line 161
    :cond_9
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    .line 162
    sub-float v5, p1, v5

    .line 164
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 166
    move-result v5

    .line 169
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    .line 170
    cmpl-float v5, v5, v6

    .line 172
    if-lez v5, :cond_a

    .line 174
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireNegativeReset:Z

    .line 176
    :cond_a
    move v5, v2

    .line 178
    :goto_5
    iget-boolean v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 179
    if-eqz v6, :cond_b

    .line 181
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    .line 183
    sub-float v7, p1, v6

    .line 185
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    .line 187
    sub-float/2addr v8, v6

    .line 189
    mul-float/2addr v8, v7

    .line 190
    cmpg-float v6, v8, v4

    .line 191
    if-gez v6, :cond_c

    .line 193
    cmpl-float v4, v7, v4

    .line 195
    if-lez v4, :cond_c

    .line 197
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 199
    goto :goto_6

    .line 201
    :cond_b
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    .line 202
    sub-float v4, p1, v4

    .line 204
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 206
    move-result v4

    .line 209
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    .line 210
    cmpl-float v4, v4, v6

    .line 212
    if-lez v4, :cond_c

    .line 214
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFirePositiveReset:Z

    .line 216
    :cond_c
    move v1, v2

    .line 218
    :goto_6
    move v2, v1

    .line 219
    move v4, v5

    .line 220
    :goto_7
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireLastPos:F

    .line 221
    if-nez v4, :cond_d

    .line 223
    if-nez v0, :cond_d

    .line 225
    if-eqz v2, :cond_e

    .line 227
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 229
    move-result-object p1

    .line 232
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 233
    iget-object v1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 235
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 237
    if-eqz p1, :cond_e

    .line 239
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 241
    move-result-object p1

    .line 244
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    move-result v1

    .line 248
    if-eqz v1, :cond_e

    .line 249
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    move-result-object v1

    .line 254
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    .line 255
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    goto :goto_8

    .line 260
    :cond_e
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    .line 261
    if-ne p1, v3, :cond_f

    .line 263
    move-object p1, p2

    .line 265
    goto :goto_9

    .line 266
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 267
    move-result-object p1

    .line 270
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 271
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    .line 273
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 275
    move-result-object p1

    .line 278
    :goto_9
    if-eqz v4, :cond_11

    .line 279
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 281
    if-eqz v1, :cond_10

    .line 283
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fire(Landroid/view/View;Ljava/lang/String;)V

    .line 285
    :cond_10
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    .line 288
    if-eq v1, v3, :cond_11

    .line 290
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 292
    move-result-object v1

    .line 295
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 296
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    .line 298
    filled-new-array {p1}, [Landroid/view/View;

    .line 300
    move-result-object v5

    .line 303
    invoke-virtual {v1, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    .line 304
    :cond_11
    if-eqz v2, :cond_13

    .line 307
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 309
    if-eqz v1, :cond_12

    .line 311
    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fire(Landroid/view/View;Ljava/lang/String;)V

    .line 313
    :cond_12
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    .line 316
    if-eq v1, v3, :cond_13

    .line 318
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 320
    move-result-object v1

    .line 323
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 324
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    .line 326
    filled-new-array {p1}, [Landroid/view/View;

    .line 328
    move-result-object v4

    .line 331
    invoke-virtual {v1, v2, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    .line 332
    :cond_13
    if-eqz v0, :cond_15

    .line 335
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    .line 337
    if-eqz v0, :cond_14

    .line 339
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->fire(Landroid/view/View;Ljava/lang/String;)V

    .line 341
    :cond_14
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    .line 344
    if-eq v0, v3, :cond_15

    .line 346
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 348
    move-result-object p2

    .line 351
    check-cast p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 352
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    .line 354
    filled-new-array {p1}, [Landroid/view/View;

    .line 356
    move-result-object p1

    .line 359
    invoke-virtual {p2, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->viewTransition(I[Landroid/view/View;)V

    .line 360
    :cond_15
    return-void
    .line 363
.end method

.method public final fire(Landroid/view/View;Ljava/lang/String;)V
    .locals 13

    .line 1
    if-nez p2, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    const-string v0, "."

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v0, v2, :cond_1

    .line 19
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :goto_0
    if-nez v0, :cond_2

    .line 24
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 29
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 30
    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 32
    move-result-object p2

    .line 35
    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 36
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 38
    move-result-object v3

    .line 41
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v3

    .line 45
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v4

    .line 49
    if-eqz v4, :cond_6

    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 55
    check-cast v4, Ljava/lang/String;

    .line 56
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 60
    move-result-object v5

    .line 63
    if-nez v0, :cond_4

    .line 64
    invoke-virtual {v5, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 66
    move-result v5

    .line 69
    if-eqz v5, :cond_3

    .line 70
    :cond_4
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    .line 72
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v4

    .line 77
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 78
    if-eqz v4, :cond_3

    .line 80
    const-string v5, "\" not found on "

    .line 82
    const-string v6, " Custom Attribute \""

    .line 84
    const-string v7, "TransitionLayout"

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    move-result-object v8

    .line 91
    iget-boolean v9, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    .line 92
    iget-object v10, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 94
    if-nez v9, :cond_5

    .line 96
    const-string/jumbo v9, "set"

    .line 98
    invoke-static {v9, v10}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v9

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    move-object v9, v10

    .line 106
    :goto_2
    :try_start_0
    iget-object v11, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 107
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 109
    move-result v11

    .line 112
    packed-switch v11, :pswitch_data_0

    .line 113
    goto :goto_1

    .line 116
    :pswitch_0
    new-array v11, v2, [Ljava/lang/Class;

    .line 117
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 119
    aput-object v12, v11, v1

    .line 121
    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 123
    move-result-object v11

    .line 126
    new-array v12, v2, [Ljava/lang/Object;

    .line 127
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 129
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 131
    move-result-object v4

    .line 134
    aput-object v4, v12, v1

    .line 135
    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    goto :goto_1

    .line 140
    :pswitch_1
    new-array v11, v2, [Ljava/lang/Class;

    .line 141
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 143
    aput-object v12, v11, v1

    .line 145
    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 147
    move-result-object v11

    .line 150
    new-array v12, v2, [Ljava/lang/Object;

    .line 151
    iget-boolean v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    .line 153
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 155
    move-result-object v4

    .line 158
    aput-object v4, v12, v1

    .line 159
    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    goto :goto_1

    .line 164
    :pswitch_2
    new-array v11, v2, [Ljava/lang/Class;

    .line 165
    const-class v12, Ljava/lang/CharSequence;

    .line 167
    aput-object v12, v11, v1

    .line 169
    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 171
    move-result-object v11

    .line 174
    new-array v12, v2, [Ljava/lang/Object;

    .line 175
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    .line 177
    aput-object v4, v12, v1

    .line 179
    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    goto/16 :goto_1

    .line 184
    :pswitch_3
    new-array v11, v2, [Ljava/lang/Class;

    .line 186
    const-class v12, Landroid/graphics/drawable/Drawable;

    .line 188
    aput-object v12, v11, v1

    .line 190
    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 192
    move-result-object v11

    .line 195
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    .line 196
    invoke-direct {v12}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 198
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    .line 201
    invoke-virtual {v12, v4}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 203
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 206
    move-result-object v4

    .line 209
    invoke-virtual {v11, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    goto/16 :goto_1

    .line 213
    :pswitch_4
    new-array v11, v2, [Ljava/lang/Class;

    .line 215
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 217
    aput-object v12, v11, v1

    .line 219
    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 221
    move-result-object v11

    .line 224
    new-array v12, v2, [Ljava/lang/Object;

    .line 225
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    .line 227
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    move-result-object v4

    .line 232
    aput-object v4, v12, v1

    .line 233
    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    goto/16 :goto_1

    .line 238
    :pswitch_5
    new-array v11, v2, [Ljava/lang/Class;

    .line 240
    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 242
    aput-object v12, v11, v1

    .line 244
    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 246
    move-result-object v11

    .line 249
    new-array v12, v2, [Ljava/lang/Object;

    .line 250
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 252
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 254
    move-result-object v4

    .line 257
    aput-object v4, v12, v1

    .line 258
    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    goto/16 :goto_1

    .line 263
    :pswitch_6
    new-array v11, v2, [Ljava/lang/Class;

    .line 265
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 267
    aput-object v12, v11, v1

    .line 269
    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 271
    move-result-object v11

    .line 274
    new-array v12, v2, [Ljava/lang/Object;

    .line 275
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    .line 277
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    move-result-object v4

    .line 282
    aput-object v4, v12, v1

    .line 283
    invoke-virtual {v11, p1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    goto/16 :goto_1

    .line 288
    :catch_0
    move-exception v4

    .line 290
    invoke-static {v6, v10, v5}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    move-result-object v5

    .line 294
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 295
    move-result-object v6

    .line 298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    move-result-object v5

    .line 305
    invoke-static {v7, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    goto/16 :goto_1

    .line 309
    :catch_1
    move-exception v4

    .line 311
    invoke-static {v6, v10, v5}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    move-result-object v5

    .line 315
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 316
    move-result-object v6

    .line 319
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    move-result-object v5

    .line 326
    invoke-static {v7, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    goto/16 :goto_1

    .line 330
    :catch_2
    move-exception v4

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    .line 333
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 338
    move-result-object v6

    .line 341
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    const-string v6, " must have a method "

    .line 345
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    move-result-object v5

    .line 356
    invoke-static {v7, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    goto/16 :goto_1

    .line 360
    :cond_6
    return-void

    .line 362
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    .line 363
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 365
    move-result v0

    .line 368
    const/4 v2, 0x0

    .line 369
    if-eqz v0, :cond_8

    .line 370
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    .line 372
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    move-result-object v0

    .line 377
    check-cast v0, Ljava/lang/reflect/Method;

    .line 378
    if-nez v0, :cond_9

    .line 380
    return-void

    .line 382
    :cond_8
    move-object v0, v2

    .line 383
    :cond_9
    const-string v3, " "

    .line 384
    const-string v4, "\"on class "

    .line 386
    const-string v5, "KeyTrigger"

    .line 388
    if-nez v0, :cond_a

    .line 390
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    move-result-object v0

    .line 395
    new-array v6, v1, [Ljava/lang/Class;

    .line 396
    invoke-virtual {v0, p2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 398
    move-result-object v0

    .line 401
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    .line 402
    invoke-virtual {v6, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    .line 404
    goto :goto_3

    .line 407
    :catch_3
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mMethodHashMap:Ljava/util/HashMap;

    .line 408
    invoke-virtual {p0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    new-instance p0, Ljava/lang/StringBuilder;

    .line 413
    const-string v0, "Could not find method \""

    .line 415
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    move-result-object p2

    .line 429
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 430
    move-result-object p2

    .line 433
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 440
    move-result-object p1

    .line 443
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    move-result-object p0

    .line 450
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void

    .line 454
    :cond_a
    :goto_3
    :try_start_2
    new-array p2, v1, [Ljava/lang/Object;

    .line 455
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 457
    goto :goto_4

    .line 460
    :catch_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 461
    const-string v0, "Exception in call \""

    .line 463
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    .line 468
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    move-result-object p0

    .line 479
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 480
    move-result-object p0

    .line 483
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 490
    move-result-object p0

    .line 493
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    move-result-object p0

    .line 500
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_4
    return-void

    .line 504
    nop

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
    .line 506
.end method

.method public final getAttributeNames(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger:[I

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    move-result-object p1

    .line 7
    sget-object p2, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 10
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-ge v0, p2, :cond_3

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 17
    move-result v1

    .line 20
    sget-object v2, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    .line 21
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 23
    move-result v3

    .line 26
    packed-switch v3, :pswitch_data_0

    .line 27
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v4, "unused attribute 0x"

    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v4, "   "

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 50
    move-result v1

    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 60
    const-string v2, "KeyTrigger"

    .line 61
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    goto/16 :goto_1

    .line 66
    :pswitch_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    .line 68
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 70
    move-result v1

    .line 73
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    .line 74
    goto/16 :goto_1

    .line 76
    :pswitch_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    .line 78
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 80
    move-result v1

    .line 83
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    .line 84
    goto/16 :goto_1

    .line 86
    :pswitch_3
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    .line 88
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 90
    move-result v1

    .line 93
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    .line 94
    goto/16 :goto_1

    .line 96
    :pswitch_4
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    .line 98
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 100
    move-result v1

    .line 103
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerReceiver:I

    .line 104
    goto/16 :goto_1

    .line 106
    :pswitch_5
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    .line 108
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 110
    move-result v1

    .line 113
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPostLayout:Z

    .line 114
    goto/16 :goto_1

    .line 116
    :pswitch_6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    .line 118
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 120
    move-result v1

    .line 123
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerCollisionId:I

    .line 124
    goto :goto_1

    .line 126
    :pswitch_7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 127
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 129
    move-result v1

    .line 132
    iput v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 133
    int-to-float v1, v1

    .line 135
    const/high16 v2, 0x3f000000    # 0.5f

    .line 136
    add-float/2addr v1, v2

    .line 138
    const/high16 v2, 0x42c80000    # 100.0f

    .line 139
    div-float/2addr v1, v2

    .line 141
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFireThreshold:F

    .line 142
    goto :goto_1

    .line 144
    :pswitch_8
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 145
    if-eqz v2, :cond_0

    .line 147
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 149
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 151
    move-result v2

    .line 154
    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 155
    const/4 v3, -0x1

    .line 157
    if-ne v2, v3, :cond_2

    .line 158
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 163
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 164
    goto :goto_1

    .line 166
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 167
    move-result-object v2

    .line 170
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 171
    const/4 v3, 0x3

    .line 173
    if-ne v2, v3, :cond_1

    .line 174
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 176
    move-result-object v1

    .line 179
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 180
    goto :goto_1

    .line 182
    :cond_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 183
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 185
    move-result v1

    .line 188
    iput v1, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 189
    goto :goto_1

    .line 191
    :pswitch_9
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    .line 192
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 194
    move-result v1

    .line 197
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerID:I

    .line 198
    goto :goto_1

    .line 200
    :pswitch_a
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    .line 201
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 203
    move-result v1

    .line 206
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    .line 207
    goto :goto_1

    .line 209
    :pswitch_b
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 210
    move-result-object v1

    .line 213
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mCross:Ljava/lang/String;

    .line 214
    goto :goto_1

    .line 216
    :pswitch_c
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 217
    move-result-object v1

    .line 220
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 221
    goto :goto_1

    .line 223
    :pswitch_d
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 224
    move-result-object v1

    .line 227
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 228
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 230
    goto/16 :goto_0

    .line 232
    :cond_3
    return-void

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
    .line 236
.end method
