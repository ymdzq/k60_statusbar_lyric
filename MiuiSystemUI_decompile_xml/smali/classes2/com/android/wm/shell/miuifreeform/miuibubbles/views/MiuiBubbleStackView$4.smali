.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;
.super Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 2
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    sget v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->$r8$clinit:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "onDown: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v2, " ev = "

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 29
    const-string v0, "MiuiBubbleStackView"

    .line 30
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 p2, 0x3

    .line 35
    invoke-static {p2}, Lmiui/app/MiuiFreeFormManager;->removeFreeFormTipView(I)V

    .line 36
    instance-of p2, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 39
    if-nez p2, :cond_0

    .line 41
    const-string p0, "onDown: v invalid view"

    .line 43
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :cond_0
    move-object p2, p1

    .line 50
    check-cast p2, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    const-string p1, " edgeState = "

    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->getEdgeState()Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 66
    move-result-object p1

    .line 69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 76
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 80
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubbleData:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

    .line 82
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->getBubbles()Ljava/util/List;

    .line 84
    move-result-object p0

    .line 87
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object p0

    .line 91
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result p1

    .line 95
    if-eqz p1, :cond_1

    .line 96
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 101
    check-cast p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 102
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mMessageView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 104
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->hideFlyout()V

    .line 106
    goto :goto_0

    .line 109
    :cond_1
    invoke-static {p2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->resetEdgeAlpha(Landroid/view/View;)V

    .line 110
    const/4 p0, 0x1

    .line 113
    return p0
    .line 114
.end method

.method public final onMove(Landroid/view/View;FFFFFF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubbleData:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->getBubbleWithView(Landroid/view/View;)Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, "MiuiBubbleStackView"

    .line 10
    if-eqz v0, :cond_5

    .line 12
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 14
    if-eq v2, p1, :cond_0

    .line 16
    goto/16 :goto_1

    .line 18
    :cond_0
    sget-object v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;->DRAGGING:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 20
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->setEdgeState(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;)V

    .line 22
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->getDragState()Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;

    .line 25
    move-result-object v3

    .line 28
    add-float/2addr p2, p4

    .line 29
    add-float/2addr p3, p5

    .line 30
    mul-float/2addr p6, p6

    .line 31
    mul-float/2addr p7, p7

    .line 32
    add-float/2addr p7, p6

    .line 33
    float-to-double p5, p7

    .line 34
    invoke-static {p5, p6}, Ljava/lang/Math;->sqrt(D)D

    .line 35
    move-result-wide p5

    .line 38
    double-to-float p5, p5

    .line 39
    iget-object p6, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;->preMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 40
    const p7, 0x44bb8000    # 1500.0f

    .line 42
    cmpg-float p5, p5, p7

    .line 45
    sget-object p7, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_EDGE:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 47
    if-gtz p5, :cond_1

    .line 49
    iget-object p5, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 51
    iget-object p5, p5, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 53
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 55
    move-result p4

    .line 58
    iget-object p6, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 59
    iget-object p6, p6, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 61
    const/16 v4, 0xc8

    .line 63
    invoke-virtual {p5, p4, v4}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->outerScreen(FI)Z

    .line 65
    move-result p4

    .line 68
    if-eqz p4, :cond_1

    .line 69
    move-object p6, p7

    .line 71
    :cond_1
    if-eq p6, p7, :cond_2

    .line 72
    iget-object p4, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->centerPos:Landroid/graphics/PointF;

    .line 74
    iget p5, p4, Landroid/graphics/PointF;->x:F

    .line 76
    sub-float/2addr p2, p5

    .line 78
    iget p4, p4, Landroid/graphics/PointF;->y:F

    .line 79
    sub-float/2addr p3, p4

    .line 81
    :cond_2
    iget-object p4, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;->preMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 82
    if-eq p6, p4, :cond_4

    .line 84
    sget p4, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->$r8$clinit:I

    .line 86
    new-instance p4, Ljava/lang/StringBuilder;

    .line 88
    const-string p5, "onMove: "

    .line 90
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const-string p5, "\t bubble key="

    .line 98
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object p5, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 103
    iget p5, p5, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 105
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p4

    .line 113
    invoke-static {v1, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object p6, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;->preMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 117
    if-ne p6, p7, :cond_3

    .line 119
    iget-object p4, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 121
    iget-object p4, p4, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 123
    const/4 p5, 0x1

    .line 125
    invoke-static {v2, p4, p5}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->animScaleTo(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;Landroid/graphics/Rect;Z)V

    .line 126
    goto :goto_0

    .line 129
    :cond_3
    iget-object p4, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 130
    iget-object p4, p4, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformBounds:Landroid/graphics/Rect;

    .line 132
    const/4 p5, 0x0

    .line 134
    invoke-static {v2, p4, p5}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->animScaleTo(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;Landroid/graphics/Rect;Z)V

    .line 135
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 138
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 140
    sget-object p4, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->ANIM_CONFIG_TO_EDGE:Lmiuix/animation/base/AnimConfig;

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    new-instance p4, Landroid/graphics/RectF;

    .line 147
    iget-object p5, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    .line 149
    invoke-direct {p4, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 151
    iget p5, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 154
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleShownPartSize:I

    .line 156
    sub-int/2addr p5, p0

    .line 158
    iget p0, p4, Landroid/graphics/RectF;->left:F

    .line 159
    int-to-float p5, p5

    .line 161
    sub-float/2addr p0, p5

    .line 162
    iput p0, p4, Landroid/graphics/RectF;->left:F

    .line 163
    iget p6, p4, Landroid/graphics/RectF;->right:F

    .line 165
    add-float/2addr p6, p5

    .line 167
    iput p6, p4, Landroid/graphics/RectF;->right:F

    .line 168
    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    .line 170
    move-result p0

    .line 173
    iget p2, p4, Landroid/graphics/RectF;->right:F

    .line 174
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    .line 176
    move-result p0

    .line 179
    iget p2, p4, Landroid/graphics/RectF;->top:F

    .line 180
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    .line 182
    move-result p2

    .line 185
    iget p3, p4, Landroid/graphics/RectF;->bottom:F

    .line 186
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 188
    move-result p2

    .line 191
    sget-object p3, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->ANIM_CONFIG_MOVE:Lmiuix/animation/base/AnimConfig;

    .line 192
    const/4 p4, 0x0

    .line 194
    invoke-static {p1, p3, p4, p0, p2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->animMoveBubbleTo(Landroid/view/View;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;FF)V

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 198
    return-void

    .line 201
    :cond_5
    :goto_1
    sget p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->$r8$clinit:I

    .line 202
    const-string p0, "onMove: buuble is null or iconView is null"

    .line 204
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
    .line 209
.end method

.method public final onUp(Landroid/view/View;FFFFFF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubbleData:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->getBubbleWithView(Landroid/view/View;)Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 6
    move-result-object v4

    .line 9
    if-nez v4, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    add-float/2addr p2, p4

    .line 13
    add-float/2addr p3, p5

    .line 14
    sget-object p4, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->ANIM_CONFIG_TO_EDGE:Lmiuix/animation/base/AnimConfig;

    .line 15
    const/4 p4, 0x0

    .line 17
    new-array p5, p4, [F

    .line 18
    const/high16 v0, 0x40800000    # 4.0f

    .line 20
    invoke-static {p6, v0, p5}, Lmiuix/animation/Folme;->getPredictDistanceWithFriction(FF[F)F

    .line 22
    move-result p5

    .line 25
    add-float/2addr p5, p2

    .line 26
    new-array v1, p4, [F

    .line 27
    invoke-static {p7, v0, v1}, Lmiuix/animation/Folme;->getPredictDistanceWithFriction(FF[F)F

    .line 29
    move-result v0

    .line 32
    add-float/2addr v0, p3

    .line 33
    new-instance v1, Landroid/graphics/PointF;

    .line 34
    invoke-direct {v1, p5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 36
    iget-object p5, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 39
    iget-object p5, p5, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 41
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 43
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    float-to-double v2, p6

    .line 48
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 49
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 51
    move-result-wide v2

    .line 54
    float-to-double p6, p7

    .line 55
    invoke-static {p6, p7, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 56
    move-result-wide p6

    .line 59
    add-double/2addr p6, v2

    .line 60
    invoke-static {p6, p7}, Ljava/lang/Math;->sqrt(D)D

    .line 61
    move-result-wide p6

    .line 64
    double-to-float p6, p6

    .line 65
    const/high16 p7, 0x447a0000    # 1000.0f

    .line 66
    cmpg-float p6, p6, p7

    .line 68
    const/4 p7, 0x1

    .line 70
    if-gez p6, :cond_1

    .line 71
    move p6, p7

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    move p6, p4

    .line 75
    :goto_0
    const/high16 v2, -0x3c380000    # -400.0f

    .line 76
    cmpg-float v3, p2, v2

    .line 78
    if-ltz v3, :cond_3

    .line 80
    cmpg-float v2, p3, v2

    .line 82
    if-ltz v2, :cond_3

    .line 84
    iget-object v2, p5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mScreenRegion:Landroid/graphics/Rect;

    .line 86
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 88
    move-result v3

    .line 91
    add-int/lit16 v3, v3, 0x190

    .line 92
    int-to-float v3, v3

    .line 94
    cmpl-float p2, p2, v3

    .line 95
    if-gtz p2, :cond_3

    .line 97
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 99
    move-result p2

    .line 102
    int-to-float p2, p2

    .line 103
    cmpl-float p2, p3, p2

    .line 104
    if-lez p2, :cond_2

    .line 106
    goto :goto_1

    .line 108
    :cond_2
    move p2, p4

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    :goto_1
    move p2, p7

    .line 111
    :goto_2
    if-eqz p2, :cond_4

    .line 112
    move p2, p7

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    if-nez p6, :cond_5

    .line 116
    const/16 p2, 0x64

    .line 118
    invoke-virtual {p5, v0, p2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->outerScreen(FI)Z

    .line 120
    move-result p2

    .line 123
    goto :goto_3

    .line 124
    :cond_5
    const/16 p2, 0xc8

    .line 125
    invoke-virtual {p5, v0, p2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->outerScreen(FI)Z

    .line 127
    move-result p2

    .line 130
    :goto_3
    move-object p3, p1

    .line 131
    check-cast p3, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 132
    iput-boolean p2, p3, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->toEdge:Z

    .line 134
    sget-object p5, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;->ANIMATING:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 136
    if-nez p2, :cond_7

    .line 138
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 140
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 142
    iget-object p6, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 144
    iget-object p6, p6, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 146
    iget p7, v1, Landroid/graphics/PointF;->x:F

    .line 148
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/RelativeTouchListener;->centerPos:Landroid/graphics/PointF;

    .line 150
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 152
    sub-float/2addr p7, v2

    .line 154
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 155
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .line 157
    sub-float/2addr v1, v0

    .line 159
    invoke-virtual {p2, v4, p6, p7, v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->finalBounds(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;FF)Landroid/graphics/Rect;

    .line 160
    move-result-object p2

    .line 163
    iget-object p6, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 164
    invoke-virtual {p6, v4}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->updateBubblesPosition(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;)V

    .line 166
    new-instance p6, Landroid/graphics/Rect;

    .line 169
    invoke-direct {p6, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 171
    sget p7, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->$r8$clinit:I

    .line 174
    new-instance p7, Ljava/lang/StringBuilder;

    .line 176
    const-string v0, "onUp: BubbleKey="

    .line 178
    invoke-direct {p7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    iget-object v0, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 183
    iget v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 185
    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const-string v0, "\tfinalBounds="

    .line 190
    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object p7

    .line 201
    const-string v0, "MiuiBubbleStackView"

    .line 202
    invoke-static {v0, p7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p7, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 207
    iget-object p7, p7, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 209
    iget p7, p7, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 211
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 213
    move-result v0

    .line 216
    div-int/lit8 v1, p7, 0x2

    .line 217
    sub-int/2addr v0, v1

    .line 219
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    .line 220
    move-result v2

    .line 223
    sub-int/2addr v2, v1

    .line 224
    add-int v1, p7, v0

    .line 225
    add-int/2addr p7, v2

    .line 227
    invoke-virtual {p2, v0, v2, v1, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 228
    iget-object p7, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 231
    iget-object p7, p7, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 233
    sget-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_FREEFORM:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 235
    if-ne p7, v0, :cond_6

    .line 237
    iget p7, p2, Landroid/graphics/Rect;->left:I

    .line 239
    iget v0, p6, Landroid/graphics/Rect;->top:I

    .line 241
    invoke-virtual {p2, p7, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 243
    :cond_6
    new-instance p7, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;

    .line 246
    move-object v1, p7

    .line 248
    move-object v2, p0

    .line 249
    move-object v3, p6

    .line 250
    move-object v5, p3

    .line 251
    move-object v6, p2

    .line 252
    move-object v7, p1

    .line 253
    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 254
    invoke-virtual {p3, p5}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->setEdgeState(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;)V

    .line 257
    iget p0, p2, Landroid/graphics/Rect;->left:I

    .line 260
    int-to-float p0, p0

    .line 262
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 263
    int-to-float p1, p1

    .line 265
    sget-object p2, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->ANIM_CONFIG_TO_EDGE:Lmiuix/animation/base/AnimConfig;

    .line 266
    invoke-static {p3, p2, p7, p0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->animMoveBubbleTo(Landroid/view/View;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;FF)V

    .line 268
    invoke-static {p3, p6, p4}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->animScaleTo(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;Landroid/graphics/Rect;Z)V

    .line 271
    goto :goto_4

    .line 274
    :cond_7
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 275
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 277
    iget p4, p2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleSize:I

    .line 279
    div-int/lit8 p4, p4, 0x2

    .line 281
    sget-object p6, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_EDGE:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 283
    iget v0, v1, Landroid/graphics/PointF;->x:F

    .line 285
    float-to-int v0, v0

    .line 287
    add-int/2addr v0, p4

    .line 288
    int-to-float p4, v0

    .line 289
    iget v0, v1, Landroid/graphics/PointF;->y:F

    .line 290
    float-to-int v0, v0

    .line 292
    int-to-float v0, v0

    .line 293
    invoke-virtual {p2, v4, p6, p4, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->finalBounds(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;FF)Landroid/graphics/Rect;

    .line 294
    move-result-object p2

    .line 297
    iget-object p4, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 298
    invoke-virtual {p4, v4}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->updateBubblesPosition(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;)V

    .line 300
    new-instance p4, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$2;

    .line 303
    invoke-direct {p4, p0, p3}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$2;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;)V

    .line 305
    invoke-virtual {p3, p5}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->setEdgeState(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;)V

    .line 308
    iget p5, p2, Landroid/graphics/Rect;->left:I

    .line 311
    int-to-float p5, p5

    .line 313
    iget p6, p2, Landroid/graphics/Rect;->top:I

    .line 314
    int-to-float p6, p6

    .line 316
    sget-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->ANIM_CONFIG_TO_EDGE:Lmiuix/animation/base/AnimConfig;

    .line 317
    invoke-static {p1, v0, p4, p5, p6}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->animMoveBubbleTo(Landroid/view/View;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;FF)V

    .line 319
    invoke-static {p3, p2, p7}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->animScaleTo(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;Landroid/graphics/Rect;Z)V

    .line 322
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 325
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 327
    invoke-virtual {p1, v4, p2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->setBubbleRect(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Landroid/graphics/Rect;)V

    .line 329
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 332
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 334
    iget-object p3, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 336
    iget p3, p3, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 338
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mPinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 340
    invoke-virtual {p1, p2, p3, p7}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->updatePinFloatingWindowPos(Landroid/graphics/Rect;IZ)V

    .line 342
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 345
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mHandler:Landroid/os/Handler;

    .line 347
    const-wide/16 p1, 0x1f4

    .line 349
    invoke-virtual {p0, p4, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    :goto_4
    return-void
    .line 354
.end method
