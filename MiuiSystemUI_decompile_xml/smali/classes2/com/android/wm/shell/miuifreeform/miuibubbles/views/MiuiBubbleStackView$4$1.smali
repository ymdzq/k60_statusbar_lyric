.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public isValid:Z

.field public final synthetic this$1:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;

.field public final synthetic val$finalBounds:Landroid/graphics/Rect;

.field public final synthetic val$finalScaleBounds:Landroid/graphics/Rect;

.field public final synthetic val$iconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

.field public final synthetic val$touchedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

.field public final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;Landroid/graphics/Rect;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->this$1:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$finalScaleBounds:Landroid/graphics/Rect;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$touchedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 6
    iput-object p4, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$iconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 8
    iput-object p5, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$finalBounds:Landroid/graphics/Rect;

    .line 10
    iput-object p6, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$v:Landroid/view/View;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->isValid:Z

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->isValid:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->isValid:Z

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->this$1:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;

    .line 10
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 12
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 14
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$finalScaleBounds:Landroid/graphics/Rect;

    .line 16
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$touchedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 18
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 20
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 22
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mPinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 24
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->unPinFloatingWindow(Landroid/graphics/Rect;IZ)Z

    .line 26
    move-result v0

    .line 29
    sget v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->$r8$clinit:I

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "onUp run: unpin "

    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$finalScaleBounds:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 50
    const-string v2, "MiuiBubbleStackView"

    .line 51
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-eqz v0, :cond_1

    .line 56
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$iconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 58
    sget-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;->UNDEFINE:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->setEdgeState(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;)V

    .line 62
    goto/16 :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$iconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 67
    const/4 v1, 0x1

    .line 69
    iput-boolean v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->toEdge:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    const-string v3, "bubble="

    .line 74
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$touchedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 79
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 81
    iget v4, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v4, "switch to mini/freeform failed, then back to edge: finalBounds="

    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$finalBounds:Landroid/graphics/Rect;

    .line 94
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 102
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->this$1:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;

    .line 106
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 108
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 110
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$touchedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 112
    iget-object v6, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$finalBounds:Landroid/graphics/Rect;

    .line 114
    const/4 v7, 0x0

    .line 116
    const/4 v8, 0x0

    .line 117
    const/4 v9, 0x0

    .line 118
    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->adjustEdgeToAvoidIntersect(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Landroid/graphics/Rect;ZZLandroid/graphics/Rect;)V

    .line 119
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->this$1:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;

    .line 122
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 124
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$touchedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 126
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->updateBubblesPosition(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$touchedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 136
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 138
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v3, "after pre mode bounds to edge horizontal, finalBounds="

    .line 145
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$finalBounds:Landroid/graphics/Rect;

    .line 150
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 158
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$iconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 162
    sget-object v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;->ANIMATING:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 164
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->setEdgeState(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;)V

    .line 166
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$v:Landroid/view/View;

    .line 169
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$iconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 171
    new-instance v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda4;

    .line 173
    invoke-direct {v3, v2, v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;I)V

    .line 175
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$finalBounds:Landroid/graphics/Rect;

    .line 178
    sget-object v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->ANIM_CONFIG_TO_EDGE:Lmiuix/animation/base/AnimConfig;

    .line 180
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 182
    int-to-float v4, v4

    .line 184
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 185
    int-to-float v2, v2

    .line 187
    sget-object v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->ANIM_CONFIG_TO_EDGE:Lmiuix/animation/base/AnimConfig;

    .line 188
    invoke-static {v0, v5, v3, v4, v2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->animMoveBubbleTo(Landroid/view/View;Lmiuix/animation/base/AnimConfig;Ljava/lang/Runnable;FF)V

    .line 190
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$v:Landroid/view/View;

    .line 193
    check-cast v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 195
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$finalBounds:Landroid/graphics/Rect;

    .line 197
    invoke-static {v0, v2, v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->animScaleTo(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;Landroid/graphics/Rect;Z)V

    .line 199
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->this$1:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;

    .line 202
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 204
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 206
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$touchedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 208
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$finalBounds:Landroid/graphics/Rect;

    .line 210
    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->setBubbleRect(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Landroid/graphics/Rect;)V

    .line 212
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->this$1:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;

    .line 215
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 217
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 219
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$finalBounds:Landroid/graphics/Rect;

    .line 221
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4$1;->val$touchedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 223
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 225
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 227
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mPinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 229
    invoke-virtual {v0, v2, p0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->updatePinFloatingWindowPos(Landroid/graphics/Rect;IZ)V

    .line 231
    :goto_0
    return-void
    .line 234
.end method
