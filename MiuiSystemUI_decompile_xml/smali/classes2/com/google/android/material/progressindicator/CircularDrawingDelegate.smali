.class public final Lcom/google/android/material/progressindicator/CircularDrawingDelegate;
.super Lcom/google/android/material/progressindicator/DrawingDelegate;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public adjustedRadius:F

.field public arcDirectionFactor:I

.field public displayedCornerRadius:F

.field public displayedTrackThickness:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/DrawingDelegate;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    .line 2
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final adjustCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 2
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    .line 7
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    div-float/2addr v0, v1

    .line 12
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 13
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    .line 18
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    div-float/2addr v1, v2

    .line 23
    iget-object v2, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 24
    move-object v3, v2

    .line 26
    check-cast v3, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 27
    iget v3, v3, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    .line 29
    int-to-float v3, v3

    .line 31
    const/high16 v4, 0x40000000    # 2.0f

    .line 32
    div-float/2addr v3, v4

    .line 34
    move-object v5, v2

    .line 35
    check-cast v5, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 36
    iget v5, v5, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    .line 38
    int-to-float v5, v5

    .line 40
    add-float/2addr v3, v5

    .line 41
    mul-float v5, v3, v0

    .line 42
    mul-float v6, v3, v1

    .line 44
    iget v7, p2, Landroid/graphics/Rect;->left:I

    .line 46
    int-to-float v7, v7

    .line 48
    add-float/2addr v5, v7

    .line 49
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 50
    int-to-float p2, p2

    .line 52
    add-float/2addr v6, p2

    .line 53
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 57
    const/high16 p2, -0x3d4c0000    # -90.0f

    .line 60
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 62
    neg-float p2, v3

    .line 65
    invoke-virtual {p1, p2, p2, v3, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 66
    move-object p1, v2

    .line 69
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 70
    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    .line 72
    const/4 p2, 0x1

    .line 74
    if-nez p1, :cond_0

    .line 75
    move p1, p2

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 p1, -0x1

    .line 79
    :goto_0
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    .line 80
    move-object p1, v2

    .line 82
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 83
    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 85
    int-to-float p1, p1

    .line 87
    mul-float/2addr p1, p3

    .line 88
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    .line 89
    move-object p1, v2

    .line 91
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 92
    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    .line 94
    int-to-float p1, p1

    .line 96
    mul-float/2addr p1, p3

    .line 97
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    .line 98
    move-object p1, v2

    .line 100
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 101
    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    .line 103
    move-object v0, v2

    .line 105
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 106
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 108
    sub-int/2addr p1, v0

    .line 110
    int-to-float p1, p1

    .line 111
    div-float/2addr p1, v4

    .line 112
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    .line 113
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 115
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    .line 117
    move-result p1

    .line 120
    const/high16 v0, 0x3f800000    # 1.0f

    .line 121
    const/4 v1, 0x2

    .line 123
    if-eqz p1, :cond_1

    .line 124
    move-object p1, v2

    .line 126
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 127
    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    .line 129
    if-eq p1, v1, :cond_2

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 133
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    .line 135
    move-result p1

    .line 138
    if-eqz p1, :cond_3

    .line 139
    move-object p1, v2

    .line 141
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 142
    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    .line 144
    if-ne p1, p2, :cond_3

    .line 146
    :cond_2
    iget p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    .line 148
    sub-float/2addr v0, p3

    .line 150
    check-cast v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 151
    iget p2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 153
    int-to-float p2, p2

    .line 155
    invoke-static {v0, p2, v4, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 156
    move-result p1

    .line 159
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    .line 160
    goto :goto_1

    .line 162
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 163
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    .line 165
    move-result p1

    .line 168
    if-eqz p1, :cond_4

    .line 169
    move-object p1, v2

    .line 171
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 172
    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    .line 174
    if-eq p1, p2, :cond_5

    .line 176
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 178
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    .line 180
    move-result p1

    .line 183
    if-eqz p1, :cond_6

    .line 184
    move-object p1, v2

    .line 186
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 187
    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    .line 189
    if-ne p1, v1, :cond_6

    .line 191
    :cond_5
    iget p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    .line 193
    sub-float/2addr v0, p3

    .line 195
    check-cast v2, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 196
    iget p2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    .line 198
    int-to-float p2, p2

    .line 200
    invoke-static {v0, p2, v4, p1}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 201
    move-result p1

    .line 204
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    .line 205
    :cond_6
    :goto_1
    return-void
    .line 207
.end method

.method public final fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
    .locals 8

    .line 1
    cmpl-float v0, p3, p4

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 7
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 12
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 14
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget p5, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    .line 24
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    const/high16 p5, 0x43b40000    # 360.0f

    .line 29
    mul-float v0, p3, p5

    .line 31
    iget v1, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    .line 33
    int-to-float v1, v1

    .line 35
    mul-float/2addr v0, v1

    .line 36
    cmpl-float v2, p4, p3

    .line 37
    if-ltz v2, :cond_1

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 42
    add-float/2addr p4, v2

    .line 44
    :goto_0
    sub-float/2addr p4, p3

    .line 45
    mul-float/2addr p4, p5

    .line 46
    mul-float/2addr p4, v1

    .line 47
    new-instance v3, Landroid/graphics/RectF;

    .line 48
    iget p3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    .line 50
    neg-float v1, p3

    .line 52
    invoke-direct {v3, v1, v1, p3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 53
    const/4 v6, 0x0

    .line 56
    move-object v2, p1

    .line 57
    move v4, v0

    .line 58
    move v5, p4

    .line 59
    move-object v7, p2

    .line 60
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 61
    iget p3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    .line 64
    const/4 v1, 0x0

    .line 66
    cmpl-float p3, p3, v1

    .line 67
    if-lez p3, :cond_2

    .line 69
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 71
    move-result p3

    .line 74
    cmpg-float p3, p3, p5

    .line 75
    if-gez p3, :cond_2

    .line 77
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 79
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget p3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    .line 84
    iget p5, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 88
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 91
    new-instance v1, Landroid/graphics/RectF;

    .line 94
    iget v2, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    .line 96
    const/high16 v3, 0x40000000    # 2.0f

    .line 98
    div-float/2addr p3, v3

    .line 100
    sub-float v4, v2, p3

    .line 101
    add-float/2addr v2, p3

    .line 103
    neg-float p3, p5

    .line 104
    invoke-direct {v1, v4, p5, v2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 105
    invoke-virtual {p1, v1, p5, p5, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 111
    iget p3, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    .line 114
    iget p5, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    .line 116
    add-float/2addr v0, p4

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 122
    new-instance p4, Landroid/graphics/RectF;

    .line 125
    iget p0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    .line 127
    div-float/2addr p3, v3

    .line 129
    sub-float v0, p0, p3

    .line 130
    add-float/2addr p0, p3

    .line 132
    neg-float p3, p5

    .line 133
    invoke-direct {p4, v0, p5, p0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 134
    invoke-virtual {p1, p4, p5, p5, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 140
    :cond_2
    return-void
    .line 143
.end method

.method public final fillTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 2
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 4
    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    .line 6
    iget-object v1, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->drawable:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 8
    iget v1, v1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->totalAlpha:I

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    .line 12
    move-result v0

    .line 15
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 16
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 21
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 23
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    .line 33
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    new-instance v2, Landroid/graphics/RectF;

    .line 38
    iget p0, p0, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    .line 40
    neg-float v0, p0

    .line 42
    neg-float v1, p0

    .line 43
    invoke-direct {v2, v0, v1, p0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 44
    const/4 v3, 0x0

    .line 47
    const/high16 v4, 0x43b40000    # 360.0f

    .line 48
    const/4 v5, 0x0

    .line 50
    move-object v1, p1

    .line 51
    move-object v6, p2

    .line 52
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 53
    return-void
    .line 56
.end method

.method public final getPreferredHeight()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getPreferredWidth()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final getSize()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/progressindicator/DrawingDelegate;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 2
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 5
    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    .line 7
    check-cast p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 9
    iget p0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    .line 11
    mul-int/lit8 p0, p0, 0x2

    .line 13
    add-int/2addr p0, v0

    .line 15
    return p0
    .line 16
.end method
