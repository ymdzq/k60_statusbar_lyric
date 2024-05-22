.class public final synthetic Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/window/BackProgressAnimator$ProgressCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/CrossTaskBackAnimation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onProgressUpdate(Landroid/window/BackEvent;)V
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation$Callback$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/back/CrossTaskBackAnimation;

    .line 2
    iget-boolean v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackInProgress:Z

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mInitialTouchPos:Landroid/graphics/PointF;

    .line 6
    const/4 v2, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    .line 11
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    .line 15
    move-result v3

    .line 18
    invoke-virtual {v1, v0, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 19
    invoke-virtual {p1}, Landroid/window/BackEvent;->getSwipeEdge()I

    .line 22
    iput-boolean v2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackInProgress:Z

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    .line 27
    move-result v0

    .line 30
    iput v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgress:F

    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTouchPos:Landroid/graphics/PointF;

    .line 33
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    .line 35
    move-result v3

    .line 38
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    .line 39
    move-result v4

    .line 42
    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 43
    iget v0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mProgress:F

    .line 46
    const/high16 v3, 0x3f800000    # 1.0f

    .line 48
    sub-float v0, v3, v0

    .line 50
    mul-float v4, v0, v0

    .line 52
    mul-float/2addr v4, v0

    .line 54
    sub-float v0, v3, v4

    .line 55
    iget-object v4, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 57
    if-eqz v4, :cond_3

    .line 59
    iget-object v4, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 61
    if-nez v4, :cond_1

    .line 63
    goto/16 :goto_1

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchX()F

    .line 67
    move-result v4

    .line 70
    invoke-virtual {p1}, Landroid/window/BackEvent;->getTouchY()F

    .line 71
    move-result p1

    .line 74
    iget v5, v1, Landroid/graphics/PointF;->x:F

    .line 75
    sub-float/2addr v4, v5

    .line 77
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 78
    iget-object v4, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mStartTaskRect:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 83
    move-result v5

    .line 86
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 87
    move-result v4

    .line 90
    const v6, -0x41e66668    # -0.14999998f

    .line 91
    mul-float/2addr v6, v0

    .line 94
    add-float/2addr v6, v3

    .line 95
    const/high16 v7, -0x41800000    # -0.25f

    .line 96
    mul-float/2addr v7, v0

    .line 98
    add-float/2addr v7, v3

    .line 99
    const v8, -0x4099999a    # -0.9f

    .line 100
    mul-float/2addr v8, v0

    .line 103
    add-float/2addr v8, v3

    .line 104
    int-to-float v3, v5

    .line 105
    mul-float/2addr v6, v3

    .line 106
    mul-float/2addr v7, v3

    .line 107
    int-to-float v4, v4

    .line 108
    div-float v5, v4, v3

    .line 109
    mul-float v9, v5, v6

    .line 111
    mul-float/2addr v5, v7

    .line 113
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 114
    sub-float/2addr p1, v1

    .line 116
    div-float/2addr p1, v4

    .line 117
    float-to-double v10, p1

    .line 118
    const-wide v12, 0x400921fb54442d18L    # Math.PI

    .line 119
    mul-double/2addr v10, v12

    .line 124
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    .line 125
    mul-double/2addr v10, v12

    .line 127
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    .line 128
    move-result-wide v10

    .line 131
    double-to-float p1, v10

    .line 132
    const/high16 v1, 0x43200000    # 160.0f

    .line 133
    mul-float/2addr p1, v1

    .line 135
    const/high16 v1, 0x3f000000    # 0.5f

    .line 136
    invoke-static {v4, v5, v1, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 138
    move-result v10

    .line 141
    invoke-static {v4, v9, v1, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 142
    move-result p1

    .line 145
    const/high16 v1, 0x420c0000    # 35.0f

    .line 146
    mul-float v4, v0, v1

    .line 148
    sub-float/2addr v3, v4

    .line 150
    sub-float v4, v3, v7

    .line 151
    iget-object v7, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingCurrentRect:Landroid/graphics/RectF;

    .line 153
    add-float/2addr v5, v10

    .line 155
    invoke-virtual {v7, v4, v10, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 156
    iget-object v3, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringCurrentRect:Landroid/graphics/RectF;

    .line 159
    sub-float v5, v4, v6

    .line 161
    sub-float/2addr v5, v1

    .line 163
    sub-float/2addr v4, v1

    .line 164
    add-float/2addr v9, p1

    .line 165
    invoke-virtual {v3, v5, p1, v4, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 166
    iget-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 169
    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 171
    iget v1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mCornerRadius:F

    .line 173
    invoke-virtual {p0, p1, v7, v1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V

    .line 175
    iget-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mClosingTarget:Landroid/view/RemoteAnimationTarget;

    .line 178
    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 180
    iget-object v4, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 182
    if-nez p1, :cond_2

    .line 184
    goto :goto_0

    .line 186
    :cond_2
    iget-object v5, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTmpFloat9:[F

    .line 187
    const/4 v6, 0x0

    .line 189
    aput v8, v5, v6

    .line 190
    const/4 v6, 0x0

    .line 192
    aput v6, v5, v2

    .line 193
    const/4 v2, 0x2

    .line 195
    aput v6, v5, v2

    .line 196
    const/4 v2, 0x3

    .line 198
    aput v6, v5, v2

    .line 199
    const/4 v2, 0x4

    .line 201
    aput v8, v5, v2

    .line 202
    const/4 v2, 0x5

    .line 204
    aput v6, v5, v2

    .line 205
    const/4 v2, 0x6

    .line 207
    aput v6, v5, v2

    .line 208
    const/4 v2, 0x7

    .line 210
    aput v6, v5, v2

    .line 211
    const/16 v2, 0x8

    .line 213
    aput v8, v5, v2

    .line 215
    iget-object v2, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mTmpTranslate:[F

    .line 217
    invoke-virtual {v4, p1, v5, v2}, Landroid/view/SurfaceControl$Transaction;->setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;

    .line 219
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mEnteringTarget:Landroid/view/RemoteAnimationTarget;

    .line 222
    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 224
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->applyTransform(Landroid/view/SurfaceControl;Landroid/graphics/RectF;F)V

    .line 226
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 229
    iget-object p0, p0, Lcom/android/wm/shell/back/CrossTaskBackAnimation;->mBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/BackAnimationBackground;->onBackProgressed(F)V

    .line 234
    :cond_3
    :goto_1
    return-void
    .line 237
.end method
