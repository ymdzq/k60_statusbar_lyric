.class public final Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;
.super Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mInsetsEvaluator:Landroid/animation/RectEvaluator;

.field public final mRectEvaluator:Landroid/animation/RectEvaluator;

.field public final synthetic val$direction:I

.field public final synthetic val$endValue:Landroid/graphics/Rect;

.field public final synthetic val$initialContainerRect:Landroid/graphics/Rect;

.field public final synthetic val$initialSourceValue:Landroid/graphics/Rect;

.field public final synthetic val$isInPipDirection:Z

.field public final synthetic val$isOutPipDirection:Z

.field public final synthetic val$lastEndRect:Landroid/graphics/Rect;

.field public final synthetic val$rotatedEndRect:Landroid/graphics/Rect;

.field public final synthetic val$rotationDelta:I

.field public final synthetic val$sourceHintRect:Landroid/graphics/Rect;

.field public final synthetic val$sourceHintRectInsets:Landroid/graphics/Rect;

.field public final synthetic val$startingAngle:F

.field public final synthetic val$zeroInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v2, p7

    .line 4
    iput-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotatedEndRect:Landroid/graphics/Rect;

    .line 5
    move v2, p8

    .line 7
    iput v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$startingAngle:F

    .line 8
    move-object v2, p9

    .line 10
    iput-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRect:Landroid/graphics/Rect;

    .line 11
    move v2, p10

    .line 13
    iput-boolean v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isOutPipDirection:Z

    .line 14
    move-object v2, p11

    .line 16
    iput-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialSourceValue:Landroid/graphics/Rect;

    .line 17
    move v2, p12

    .line 19
    iput-boolean v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isInPipDirection:Z

    .line 20
    move-object/from16 v2, p13

    .line 22
    iput-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialContainerRect:Landroid/graphics/Rect;

    .line 24
    move-object/from16 v2, p14

    .line 26
    iput-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$lastEndRect:Landroid/graphics/Rect;

    .line 28
    move-object/from16 v2, p15

    .line 30
    iput-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$endValue:Landroid/graphics/Rect;

    .line 32
    move/from16 v2, p16

    .line 34
    iput v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotationDelta:I

    .line 36
    move-object/from16 v2, p17

    .line 38
    iput-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRectInsets:Landroid/graphics/Rect;

    .line 40
    move-object/from16 v2, p18

    .line 42
    iput-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$zeroInsets:Landroid/graphics/Rect;

    .line 44
    move/from16 v2, p19

    .line 46
    iput v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$direction:I

    .line 48
    move-object p7, p0

    .line 50
    move-object p8, p1

    .line 51
    move-object p9, p2

    .line 52
    move p10, v1

    .line 53
    move-object p11, p3

    .line 54
    move-object p12, p4

    .line 55
    move-object/from16 p13, p5

    .line 56
    move-object/from16 p14, p6

    .line 58
    invoke-direct/range {p7 .. p14}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;-><init>(Landroid/app/TaskInfo;Landroid/view/SurfaceControl;ILandroid/graphics/Rect;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    new-instance v1, Landroid/animation/RectEvaluator;

    .line 63
    new-instance v2, Landroid/graphics/Rect;

    .line 65
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 67
    invoke-direct {v1, v2}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 70
    iput-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mRectEvaluator:Landroid/animation/RectEvaluator;

    .line 73
    new-instance v1, Landroid/animation/RectEvaluator;

    .line 75
    new-instance v2, Landroid/graphics/Rect;

    .line 77
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 79
    invoke-direct {v1, v2}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 82
    iput-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    .line 85
    return-void
.end method


# virtual methods
.method public final applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v12, p1

    .line 4
    move-object/from16 v13, p2

    .line 6
    move/from16 v1, p3

    .line 8
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mBaseValue:Ljava/lang/Object;

    .line 10
    move-object v7, v2

    .line 12
    check-cast v7, Landroid/graphics/Rect;

    .line 13
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    .line 15
    check-cast v2, Landroid/graphics/Rect;

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getEndValue()Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 22
    check-cast v3, Landroid/graphics/Rect;

    .line 23
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mRectEvaluator:Landroid/animation/RectEvaluator;

    .line 25
    invoke-virtual {v4, v1, v2, v3}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 27
    move-result-object v8

    .line 30
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mContentOverlay:Lcom/android/wm/shell/pip/PipContentOverlay;

    .line 31
    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {v4, v13, v8, v1}, Lcom/android/wm/shell/pip/PipContentOverlay;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)V

    .line 35
    :cond_0
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotatedEndRect:Landroid/graphics/Rect;

    .line 38
    const/high16 v14, 0x3f800000    # 1.0f

    .line 40
    const/4 v11, 0x1

    .line 42
    if-eqz v4, :cond_c

    .line 43
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$lastEndRect:Landroid/graphics/Rect;

    .line 45
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v4

    .line 50
    if-nez v4, :cond_1

    .line 51
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotatedEndRect:Landroid/graphics/Rect;

    .line 53
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$endValue:Landroid/graphics/Rect;

    .line 55
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 57
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotatedEndRect:Landroid/graphics/Rect;

    .line 60
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialSourceValue:Landroid/graphics/Rect;

    .line 62
    iget v6, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotationDelta:I

    .line 64
    invoke-static {v4, v5, v6}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 66
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$lastEndRect:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    :cond_1
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mRectEvaluator:Landroid/animation/RectEvaluator;

    .line 74
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotatedEndRect:Landroid/graphics/Rect;

    .line 76
    invoke-virtual {v4, v1, v2, v5}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 78
    move-result-object v10

    .line 81
    iput-object v10, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    .line 82
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRectInsets:Landroid/graphics/Rect;

    .line 84
    if-nez v4, :cond_2

    .line 86
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$zeroInsets:Landroid/graphics/Rect;

    .line 88
    :goto_0
    move-object v6, v4

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    iget-boolean v5, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isOutPipDirection:Z

    .line 92
    if-eqz v5, :cond_3

    .line 94
    move-object v6, v4

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget-object v6, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$zeroInsets:Landroid/graphics/Rect;

    .line 98
    :goto_1
    if-eqz v5, :cond_4

    .line 100
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$zeroInsets:Landroid/graphics/Rect;

    .line 102
    :cond_4
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    .line 104
    invoke-virtual {v5, v1, v6, v4}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 106
    move-result-object v4

    .line 109
    goto :goto_0

    .line 110
    :goto_2
    sget-boolean v4, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    .line 111
    const/high16 v5, 0x42b40000    # 90.0f

    .line 113
    const/high16 v7, -0x3d4c0000    # -90.0f

    .line 115
    if-eqz v4, :cond_6

    .line 117
    iget v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotationDelta:I

    .line 119
    if-ne v4, v11, :cond_5

    .line 121
    sub-float v4, v14, v1

    .line 123
    mul-float/2addr v5, v4

    .line 125
    iget v7, v3, Landroid/graphics/Rect;->left:I

    .line 126
    iget v8, v2, Landroid/graphics/Rect;->left:I

    .line 128
    sub-int/2addr v7, v8

    .line 130
    int-to-float v7, v7

    .line 131
    mul-float/2addr v7, v1

    .line 132
    int-to-float v8, v8

    .line 133
    add-float/2addr v7, v8

    .line 134
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 135
    move-result v8

    .line 138
    int-to-float v8, v8

    .line 139
    mul-float/2addr v8, v4

    .line 140
    add-float/2addr v8, v7

    .line 141
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 142
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 144
    sub-int/2addr v3, v2

    .line 146
    int-to-float v3, v3

    .line 147
    mul-float/2addr v1, v3

    .line 148
    int-to-float v2, v2

    .line 149
    add-float/2addr v1, v2

    .line 150
    move v9, v1

    .line 151
    move v7, v5

    .line 152
    goto :goto_6

    .line 153
    :cond_5
    sub-float v4, v14, v1

    .line 154
    mul-float/2addr v7, v4

    .line 156
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 157
    iget v8, v2, Landroid/graphics/Rect;->left:I

    .line 159
    sub-int/2addr v5, v8

    .line 161
    int-to-float v5, v5

    .line 162
    mul-float/2addr v5, v1

    .line 163
    int-to-float v8, v8

    .line 164
    add-float/2addr v5, v8

    .line 165
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 166
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 168
    sub-int/2addr v3, v8

    .line 170
    int-to-float v3, v3

    .line 171
    mul-float/2addr v1, v3

    .line 172
    int-to-float v3, v8

    .line 173
    add-float/2addr v1, v3

    .line 174
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 175
    move-result v2

    .line 178
    int-to-float v2, v2

    .line 179
    mul-float/2addr v2, v4

    .line 180
    :goto_3
    add-float/2addr v2, v1

    .line 181
    goto :goto_5

    .line 182
    :cond_6
    iget v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotationDelta:I

    .line 183
    if-ne v4, v11, :cond_7

    .line 185
    mul-float v4, v1, v5

    .line 187
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 189
    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 191
    sub-int/2addr v5, v7

    .line 193
    int-to-float v5, v5

    .line 194
    mul-float/2addr v5, v1

    .line 195
    int-to-float v7, v7

    .line 196
    add-float/2addr v5, v7

    .line 197
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 198
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 200
    goto :goto_4

    .line 202
    :cond_7
    mul-float v4, v1, v7

    .line 203
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 205
    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 207
    sub-int/2addr v5, v7

    .line 209
    int-to-float v5, v5

    .line 210
    mul-float/2addr v5, v1

    .line 211
    int-to-float v7, v7

    .line 212
    add-float/2addr v5, v7

    .line 213
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 214
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 216
    :goto_4
    move v7, v4

    .line 218
    sub-int/2addr v3, v2

    .line 219
    int-to-float v3, v3

    .line 220
    mul-float/2addr v1, v3

    .line 221
    int-to-float v2, v2

    .line 222
    goto :goto_3

    .line 223
    :goto_5
    move v9, v2

    .line 224
    move v8, v5

    .line 225
    :goto_6
    new-instance v5, Landroid/graphics/Rect;

    .line 226
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialContainerRect:Landroid/graphics/Rect;

    .line 228
    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 230
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 233
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 236
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialContainerRect:Landroid/graphics/Rect;

    .line 238
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isOutPipDirection:Z

    .line 240
    iget v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$rotationDelta:I

    .line 242
    const/4 v11, 0x3

    .line 244
    if-ne v2, v11, :cond_8

    .line 245
    const/4 v11, 0x1

    .line 247
    goto :goto_7

    .line 248
    :cond_8
    const/4 v11, 0x0

    .line 249
    :goto_7
    move-object/from16 v2, p2

    .line 250
    move/from16 v17, v3

    .line 252
    move-object/from16 v3, p1

    .line 254
    move-object v15, v5

    .line 256
    move-object v5, v10

    .line 257
    move-object v14, v10

    .line 258
    move/from16 v10, v17

    .line 259
    const/16 v16, 0x1

    .line 261
    invoke-virtual/range {v1 .. v11}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->rotateAndScaleWithCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFZZ)V

    .line 263
    iget v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    .line 266
    invoke-static {v1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    .line 268
    move-result v1

    .line 271
    xor-int/lit8 v1, v1, 0x1

    .line 272
    if-eqz v1, :cond_9

    .line 274
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 276
    invoke-virtual {v1, v15, v14, v13, v12}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->shouldApplyShadowRadius()Z

    .line 281
    move-result v2

    .line 284
    invoke-virtual {v1, v13, v12, v2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 285
    :cond_9
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 288
    if-eqz v0, :cond_a

    .line 290
    const/high16 v2, 0x3f800000    # 1.0f

    .line 292
    invoke-virtual {v0, v12, v13, v14, v2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;->handlePipTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)Z

    .line 294
    move-result v15

    .line 297
    goto :goto_8

    .line 298
    :cond_a
    const/4 v15, 0x0

    .line 299
    :goto_8
    if-nez v15, :cond_b

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 302
    :cond_b
    return-void

    .line 305
    :cond_c
    move/from16 v16, v11

    .line 306
    move v2, v14

    .line 308
    sub-float v14, v2, v1

    .line 309
    iget v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$startingAngle:F

    .line 311
    mul-float/2addr v2, v14

    .line 313
    iput-object v8, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    .line 314
    iget v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mAnimationType:I

    .line 316
    if-eqz v4, :cond_d

    .line 318
    goto :goto_9

    .line 320
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    .line 321
    move-result v4

    .line 324
    invoke-static {v4}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 325
    move-result v5

    .line 328
    if-nez v5, :cond_e

    .line 329
    invoke-static {v4}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    .line 331
    move-result v4

    .line 334
    if-nez v4, :cond_e

    .line 335
    move/from16 v11, v16

    .line 337
    goto :goto_a

    .line 339
    :cond_e
    :goto_9
    const/4 v11, 0x0

    .line 340
    :goto_a
    if-nez v11, :cond_16

    .line 341
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRect:Landroid/graphics/Rect;

    .line 343
    if-nez v4, :cond_f

    .line 345
    goto/16 :goto_10

    .line 347
    :cond_f
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRectInsets:Landroid/graphics/Rect;

    .line 349
    if-nez v2, :cond_10

    .line 351
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$zeroInsets:Landroid/graphics/Rect;

    .line 353
    goto :goto_c

    .line 355
    :cond_10
    iget-boolean v3, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isOutPipDirection:Z

    .line 356
    if-eqz v3, :cond_11

    .line 358
    move-object v4, v2

    .line 360
    goto :goto_b

    .line 361
    :cond_11
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$zeroInsets:Landroid/graphics/Rect;

    .line 362
    :goto_b
    if-eqz v3, :cond_12

    .line 364
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$zeroInsets:Landroid/graphics/Rect;

    .line 366
    :cond_12
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->mInsetsEvaluator:Landroid/animation/RectEvaluator;

    .line 368
    invoke-virtual {v3, v1, v4, v2}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 370
    move-result-object v2

    .line 373
    :goto_c
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 374
    iget-object v4, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$sourceHintRect:Landroid/graphics/Rect;

    .line 376
    iget-object v5, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialSourceValue:Landroid/graphics/Rect;

    .line 378
    iget-boolean v6, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isInPipDirection:Z

    .line 380
    iget-object v7, v3, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpDestinationRect:Landroid/graphics/Rect;

    .line 382
    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 384
    const/4 v9, 0x0

    .line 387
    invoke-virtual {v7, v9, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 388
    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 391
    if-eqz v6, :cond_15

    .line 394
    if-eqz v4, :cond_15

    .line 396
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 398
    move-result v6

    .line 401
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 402
    move-result v10

    .line 405
    if-ge v6, v10, :cond_15

    .line 406
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 408
    move-result v6

    .line 411
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 412
    move-result v10

    .line 415
    if-gt v6, v10, :cond_13

    .line 416
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 418
    move-result v6

    .line 421
    int-to-float v6, v6

    .line 422
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 423
    move-result v4

    .line 426
    goto :goto_d

    .line 427
    :cond_13
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 428
    move-result v6

    .line 431
    int-to-float v6, v6

    .line 432
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 433
    move-result v4

    .line 436
    :goto_d
    int-to-float v4, v4

    .line 437
    div-float/2addr v6, v4

    .line 438
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 439
    move-result v4

    .line 442
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 443
    move-result v10

    .line 446
    if-gt v4, v10, :cond_14

    .line 447
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 449
    move-result v4

    .line 452
    int-to-float v4, v4

    .line 453
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 454
    move-result v5

    .line 457
    goto :goto_e

    .line 458
    :cond_14
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 459
    move-result v4

    .line 462
    int-to-float v4, v4

    .line 463
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 464
    move-result v5

    .line 467
    :goto_e
    int-to-float v5, v5

    .line 468
    div-float/2addr v4, v5

    .line 469
    mul-float/2addr v4, v14

    .line 470
    mul-float/2addr v1, v6

    .line 471
    add-float/2addr v1, v4

    .line 472
    goto :goto_f

    .line 473
    :cond_15
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 474
    move-result v1

    .line 477
    int-to-float v1, v1

    .line 478
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 479
    move-result v4

    .line 482
    int-to-float v4, v4

    .line 483
    div-float/2addr v1, v4

    .line 484
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 485
    move-result v4

    .line 488
    int-to-float v4, v4

    .line 489
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 490
    move-result v5

    .line 493
    int-to-float v5, v5

    .line 494
    div-float/2addr v4, v5

    .line 495
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    .line 496
    move-result v1

    .line 499
    :goto_f
    iget v4, v8, Landroid/graphics/Rect;->left:I

    .line 500
    int-to-float v4, v4

    .line 502
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 503
    int-to-float v5, v5

    .line 505
    mul-float/2addr v5, v1

    .line 506
    sub-float/2addr v4, v5

    .line 507
    iget v5, v8, Landroid/graphics/Rect;->top:I

    .line 508
    int-to-float v5, v5

    .line 510
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 511
    int-to-float v6, v6

    .line 513
    mul-float/2addr v6, v1

    .line 514
    sub-float/2addr v5, v6

    .line 515
    iget-object v6, v3, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpTransform:Landroid/graphics/Matrix;

    .line 516
    invoke-virtual {v6, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 518
    iget-object v1, v3, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->mTmpFloat9:[F

    .line 521
    invoke-virtual {v13, v12, v6, v1}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 523
    move-result-object v1

    .line 526
    invoke-virtual {v1, v12, v7}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 527
    move-result-object v1

    .line 530
    invoke-virtual {v1, v12, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 531
    iget v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    .line 534
    invoke-static {v1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    .line 536
    move-result v1

    .line 539
    xor-int/lit8 v1, v1, 0x1

    .line 540
    if-eqz v1, :cond_18

    .line 542
    new-instance v1, Landroid/graphics/Rect;

    .line 544
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$initialContainerRect:Landroid/graphics/Rect;

    .line 546
    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 548
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 551
    iget-object v2, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 554
    invoke-virtual {v2, v1, v8, v13, v12}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->shouldApplyShadowRadius()Z

    .line 559
    move-result v1

    .line 562
    invoke-virtual {v2, v13, v12, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 563
    goto :goto_11

    .line 566
    :cond_16
    :goto_10
    const/4 v9, 0x0

    .line 567
    iget-boolean v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$isOutPipDirection:Z

    .line 568
    if-eqz v1, :cond_17

    .line 570
    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 572
    invoke-virtual {v1, v3, v12, v13}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 574
    const/4 v2, 0x0

    .line 577
    move-object v4, v8

    .line 578
    move-object/from16 v5, p2

    .line 579
    move-object/from16 v6, p1

    .line 581
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(FLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 583
    goto :goto_11

    .line 586
    :cond_17
    iget-object v10, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 587
    invoke-virtual {v10, v7, v12, v13}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 589
    move-object v1, v10

    .line 592
    move-object v3, v7

    .line 593
    move-object v4, v8

    .line 594
    move-object/from16 v5, p2

    .line 595
    move-object/from16 v6, p1

    .line 597
    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->scale(FLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 599
    invoke-virtual {v10, v7, v8, v13, v12}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 602
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->shouldApplyShadowRadius()Z

    .line 605
    move-result v1

    .line 608
    invoke-virtual {v10, v13, v12, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 609
    :cond_18
    :goto_11
    iget-object v0, v0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mPipTransactionHandler:Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;

    .line 612
    if-eqz v0, :cond_19

    .line 614
    const/high16 v1, 0x3f800000    # 1.0f

    .line 616
    invoke-virtual {v0, v12, v13, v8, v1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransactionHandler;->handlePipTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;F)Z

    .line 618
    move-result v15

    .line 621
    goto :goto_12

    .line 622
    :cond_19
    move v15, v9

    .line 623
    :goto_12
    if-nez v15, :cond_1a

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 626
    :cond_1a
    return-void
    .line 629
.end method

.method public final onEndTransaction(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 4
    invoke-virtual {v1, v0, p2, p3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->resetScale(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 6
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    .line 9
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/high16 v3, 0x3f800000    # 1.0f

    .line 15
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/high16 v6, 0x3f800000    # 1.0f

    .line 19
    move-object v1, p3

    .line 21
    move-object v2, p2

    .line 22
    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 23
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p3, p2, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 27
    const/4 p1, 0x0

    .line 30
    invoke-virtual {p3, p2, p1, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 35
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->crop(Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 37
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mContentOverlay:Lcom/android/wm/shell/pip/PipContentOverlay;

    .line 40
    if-eqz p0, :cond_1

    .line 42
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/pip/PipContentOverlay;->onAnimationEnd(Landroid/view/SurfaceControl$Transaction;)V

    .line 44
    :cond_1
    return-void
    .line 47
.end method

.method public final onStartTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 9
    iget v1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mTransitionDirection:I

    .line 12
    invoke-static {v1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    .line 14
    move-result v1

    .line 17
    xor-int/lit8 v1, v1, 0x1

    .line 18
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 20
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->shouldApplyShadowRadius()Z

    .line 23
    move-result v1

    .line 26
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->shadow(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)V

    .line 27
    iget v0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator$2;->val$direction:I

    .line 30
    invoke-static {v0}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    .line 38
    check-cast p0, Landroid/graphics/Rect;

    .line 40
    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 42
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 45
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 48
    return-void
    .line 51
.end method

.method public final updateEndValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Rect;

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mEndValue:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mStartValue:Ljava/lang/Object;

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mCurrentValue:Ljava/lang/Object;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    check-cast p1, Landroid/graphics/Rect;

    .line 14
    check-cast p0, Landroid/graphics/Rect;

    .line 16
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method
