.class public abstract Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final centerPos:Landroid/graphics/PointF;

.field public maximumFlingVelocity:I

.field public movedEnough:Z

.field public performedLongClick:Z

.field public final touchDown:Landroid/graphics/PointF;

.field public touchSlop:I

.field public final velocityTracker:Landroid/view/VelocityTracker;

.field public final viewPositionOnTouchDown:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    .line 5
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    .line 19
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->centerPos:Landroid/graphics/PointF;

    .line 24
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 26
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 30
    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->touchSlop:I

    .line 33
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->movedEnough:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->performedLongClick:Z

    .line 38
    return-void
    .line 40
.end method


# virtual methods
.method public abstract onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onMove(Landroid/view/View;FFFFFF)V
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 6
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 11
    move-result v1

    .line 14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 15
    move-result v2

    .line 18
    sub-float/2addr v1, v2

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 20
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 23
    invoke-virtual {v2, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 25
    neg-float v0, v0

    .line 28
    neg-float v1, v1

    .line 29
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 33
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 37
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 39
    sub-float v6, v0, v1

    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 43
    move-result v0

    .line 46
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 47
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 49
    sub-float v7, v0, v1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "onTouch: "

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 66
    const-string v1, "MiuiBubble"

    .line 67
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 72
    move-result v0

    .line 75
    const/4 v1, 0x0

    .line 76
    const/4 v10, 0x1

    .line 77
    if-eqz v0, :cond_5

    .line 78
    const/4 p2, 0x0

    .line 80
    const-string v11, "FF_UI/FREEFORM_ACTION_MOVE"

    .line 81
    const/16 v2, 0x3e8

    .line 83
    if-eq v0, v10, :cond_2

    .line 85
    const/4 v3, 0x2

    .line 87
    if-eq v0, v3, :cond_0

    .line 88
    const/4 v3, 0x3

    .line 90
    if-eq v0, v3, :cond_2

    .line 91
    goto/16 :goto_1

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->movedEnough:Z

    .line 95
    if-nez v0, :cond_1

    .line 97
    mul-float v0, v6, v6

    .line 99
    mul-float v1, v7, v7

    .line 101
    add-float/2addr v1, v0

    .line 103
    float-to-double v0, v1

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 105
    move-result-wide v0

    .line 108
    iget v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->touchSlop:I

    .line 109
    int-to-double v3, v3

    .line 111
    cmpl-double v0, v0, v3

    .line 112
    if-lez v0, :cond_1

    .line 114
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->performedLongClick:Z

    .line 116
    if-nez v0, :cond_1

    .line 118
    invoke-static {v11}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->beginSchedThread(Ljava/lang/String;)V

    .line 120
    iput-boolean v10, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->movedEnough:Z

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 125
    move-result-object v0

    .line 128
    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 129
    :cond_1
    iget-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->movedEnough:Z

    .line 132
    if-eqz p2, :cond_7

    .line 134
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 136
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->maximumFlingVelocity:I

    .line 138
    int-to-float v0, v0

    .line 140
    invoke-virtual {p2, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 141
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 144
    iget v4, p2, Landroid/graphics/PointF;->x:F

    .line 146
    iget v5, p2, Landroid/graphics/PointF;->y:F

    .line 148
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 150
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 152
    move-result v8

    .line 155
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 156
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 158
    move-result v9

    .line 161
    move-object v2, p0

    .line 162
    move-object v3, p1

    .line 163
    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->onMove(Landroid/view/View;FFFFFF)V

    .line 164
    goto/16 :goto_1

    .line 167
    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->movedEnough:Z

    .line 169
    if-eqz v0, :cond_3

    .line 171
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 173
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->maximumFlingVelocity:I

    .line 175
    int-to-float v0, v0

    .line 177
    invoke-virtual {p2, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 178
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 181
    iget v4, p2, Landroid/graphics/PointF;->x:F

    .line 183
    iget v5, p2, Landroid/graphics/PointF;->y:F

    .line 185
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 187
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    .line 189
    move-result v8

    .line 192
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 193
    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getYVelocity()F

    .line 195
    move-result v9

    .line 198
    move-object v2, p0

    .line 199
    move-object v3, p1

    .line 200
    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->onUp(Landroid/view/View;FFFFFF)V

    .line 201
    invoke-static {v11}, Lcom/android/wm/shell/common/performance/MiuiMultitaskingPerformanceHelper;->endSchedThread(Ljava/lang/String;)V

    .line 204
    goto :goto_0

    .line 207
    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->performedLongClick:Z

    .line 208
    if-nez v0, :cond_4

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 212
    goto :goto_0

    .line 215
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 216
    move-result-object p1

    .line 219
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 220
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    .line 223
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 225
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->movedEnough:Z

    .line 228
    goto :goto_1

    .line 230
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 231
    move-result v0

    .line 234
    if-nez v0, :cond_6

    .line 235
    return v1

    .line 237
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 238
    move-result-object v0

    .line 241
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 242
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 246
    move-result v2

    .line 249
    iput v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->touchSlop:I

    .line 250
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 252
    move-result v0

    .line 255
    iput v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->maximumFlingVelocity:I

    .line 256
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 260
    move-result v2

    .line 263
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 264
    move-result p2

    .line 267
    invoke-virtual {v0, v2, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 268
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 273
    move-result v0

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 277
    move-result v2

    .line 280
    invoke-virtual {p2, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 281
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->centerPos:Landroid/graphics/PointF;

    .line 284
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 286
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 290
    move-result v2

    .line 293
    int-to-float v2, v2

    .line 294
    const/high16 v3, 0x40000000    # 2.0f

    .line 295
    div-float/2addr v2, v3

    .line 297
    add-float/2addr v2, v0

    .line 298
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 299
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 301
    sub-float/2addr v2, v0

    .line 303
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    .line 304
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 308
    move-result v4

    .line 311
    int-to-float v4, v4

    .line 312
    div-float/2addr v4, v3

    .line 313
    add-float/2addr v4, v0

    .line 314
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    .line 315
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 317
    sub-float/2addr v4, v0

    .line 319
    invoke-virtual {p2, v2, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 320
    iput-boolean v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->performedLongClick:Z

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 325
    move-result-object p2

    .line 328
    new-instance v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener$$ExternalSyntheticLambda0;

    .line 329
    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;Landroid/view/View;)V

    .line 331
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 334
    move-result p0

    .line 337
    int-to-long p0, p0

    .line 338
    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    :cond_7
    :goto_1
    return v10
    .line 342
.end method

.method public abstract onUp(Landroid/view/View;FFFFFF)V
.end method
