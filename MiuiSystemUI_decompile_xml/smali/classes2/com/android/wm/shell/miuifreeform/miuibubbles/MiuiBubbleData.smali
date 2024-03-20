.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBubbles:Ljava/util/List;

.field public final mController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

.field public mListener:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$2;

.field public mStateChange:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mBubbles:Ljava/util/List;

    .line 12
    new-instance v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;

    .line 14
    invoke-direct {v0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;-><init>(Ljava/util/List;)V

    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mStateChange:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final dismissBubbleWithKey(II)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mBubbles:Ljava/util/List;

    .line 3
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v2

    .line 10
    const/4 v3, -0x1

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 18
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 20
    iget v2, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 22
    if-ne v2, p1, :cond_0

    .line 24
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    move v0, v3

    .line 30
    :goto_1
    if-ne v0, v3, :cond_2

    .line 31
    goto :goto_3

    .line 33
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 38
    iget-object v2, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mInflationTask:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleInflateTask;

    .line 40
    if-nez v2, :cond_3

    .line 42
    goto :goto_2

    .line 44
    :cond_3
    const/4 v3, 0x1

    .line 45
    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 46
    :goto_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mStateChange:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;

    .line 52
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;->removedBubbles:Ljava/util/List;

    .line 54
    new-instance v1, Landroid/util/Pair;

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object p2

    .line 61
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    check-cast v0, Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_3
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->dispatchPendingChanges()V

    .line 70
    return-void
    .line 73
.end method

.method public final dispatchPendingChanges()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mListener:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$2;

    .line 2
    if-eqz v0, :cond_1b

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mStateChange:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;

    .line 6
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;->addedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 8
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v1, :cond_1

    .line 12
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;->updatedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 14
    if-nez v1, :cond_1

    .line 16
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;->removedBubbles:Ljava/util/List;

    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    move v0, v3

    .line 31
    :goto_1
    if-eqz v0, :cond_1b

    .line 32
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mListener:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$2;

    .line 34
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mStateChange:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;

    .line 36
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$2;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 38
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->ensureStackViewCreated()V

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    .line 43
    iget-object v5, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;->removedBubbles:Ljava/util/List;

    .line 45
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v4

    .line 53
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v5

    .line 57
    const/4 v6, 0x0

    .line 58
    if-eqz v5, :cond_5

    .line 59
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v5

    .line 64
    check-cast v5, Landroid/util/Pair;

    .line 65
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 67
    check-cast v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 69
    iget-object v7, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 71
    if-eqz v7, :cond_4

    .line 73
    iget-object v8, v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 75
    iget-object v9, v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mMessageView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 77
    filled-new-array {v8, v9}, [Landroid/view/View;

    .line 79
    move-result-object v8

    .line 82
    array-length v9, v8

    .line 83
    move v10, v2

    .line 84
    :goto_3
    if-ge v10, v9, :cond_3

    .line 85
    aget-object v11, v8, v10

    .line 87
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 89
    move-result-object v12

    .line 92
    instance-of v13, v12, Landroid/view/ViewGroup;

    .line 93
    if-eqz v13, :cond_2

    .line 95
    check-cast v12, Landroid/view/ViewGroup;

    .line 97
    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 99
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 102
    goto :goto_3

    .line 104
    :cond_3
    iput-object v6, v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 105
    iput-object v6, v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mMessageView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 107
    iget-object v6, v7, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 109
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    iget-object v7, v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 114
    iget v7, v7, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 116
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v7

    .line 121
    iget-object v6, v6, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->mBubbleRectMap:Landroid/util/ArrayMap;

    .line 122
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_4
    iget-object v6, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mContext:Landroid/content/Context;

    .line 127
    invoke-static {v6, v5}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->removeActiveBubble(Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;)V

    .line 129
    goto :goto_2

    .line 132
    :cond_5
    iget-object v4, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;->addedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 133
    const-string v5, "MiuiBubbleStackView"

    .line 135
    const/4 v13, 0x4

    .line 137
    if-eqz v4, :cond_10

    .line 138
    iget-object v14, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 140
    if-eqz v14, :cond_10

    .line 142
    iget-object v7, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 144
    if-nez v7, :cond_6

    .line 146
    goto/16 :goto_d

    .line 148
    :cond_6
    iget-object v7, v14, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 150
    iget-object v8, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 152
    iget-object v9, v8, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 154
    const/4 v10, 0x1

    .line 156
    const/4 v11, 0x0

    .line 157
    const/4 v12, 0x0

    .line 158
    move-object v8, v4

    .line 159
    invoke-virtual/range {v7 .. v12}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->adjustEdgeToAvoidIntersect(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Landroid/graphics/Rect;ZZLandroid/graphics/Rect;)V

    .line 160
    iget-object v7, v14, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 163
    iget-object v8, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 165
    iget-object v9, v8, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 167
    iget-object v7, v7, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mPinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 169
    iget v8, v8, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 171
    invoke-virtual {v7, v9, v8, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->updatePinFloatingWindowPos(Landroid/graphics/Rect;IZ)V

    .line 173
    invoke-virtual {v14, v4}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->updateBubblesPosition(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;)V

    .line 176
    iget-object v7, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 179
    iget-object v7, v7, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 181
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 183
    move-result v7

    .line 186
    iget-object v8, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 187
    iget-object v8, v8, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 189
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    .line 191
    move-result v8

    .line 194
    iget-object v9, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 195
    sget-object v10, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;->UNDEFINE:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 197
    invoke-virtual {v9, v10}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->setEdgeState(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;)V

    .line 199
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 202
    invoke-direct {v10, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 204
    iget-object v7, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 207
    iget-object v7, v7, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 209
    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 211
    int-to-float v7, v7

    .line 213
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 214
    iget-object v7, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 217
    iget-object v7, v7, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 219
    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 221
    int-to-float v7, v7

    .line 223
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 224
    iput-boolean v3, v9, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->toEdge:Z

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    .line 229
    const-string v8, "addBubble: "

    .line 231
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    const-string v8, "\tmAppBounds="

    .line 239
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v8, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 244
    iget-object v8, v8, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 246
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object v7

    .line 254
    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v9, v2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->setEnabled(Z)V

    .line 258
    sget-object v7, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;->ANIMATING:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 261
    invoke-virtual {v9, v7}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->setEdgeState(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;)V

    .line 263
    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v7, v14, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubbleContainer:Landroid/widget/FrameLayout;

    .line 269
    invoke-virtual {v7, v9, v2, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 271
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v7, v14, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mHandler:Landroid/os/Handler;

    .line 277
    new-instance v8, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda3;

    .line 279
    invoke-direct {v8, v14, v4, v2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;I)V

    .line 281
    const-wide/16 v10, 0x64

    .line 284
    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    iget-object v7, v14, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mHandler:Landroid/os/Handler;

    .line 289
    new-instance v8, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda4;

    .line 291
    invoke-direct {v8, v9, v2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;I)V

    .line 293
    const-wide/16 v10, 0x1f4

    .line 296
    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    iget-object v7, v14, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mHandler:Landroid/os/Handler;

    .line 301
    invoke-virtual {v9, v2}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->setEnabled(Z)V

    .line 303
    new-instance v8, Ljava/lang/StringBuilder;

    .line 306
    const-string v10, "disableForWhile: "

    .line 308
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 313
    move-result-object v10

    .line 316
    invoke-virtual {v10}, Landroid/os/Looper;->isCurrentThread()Z

    .line 317
    move-result v10

    .line 320
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v8

    .line 327
    const-string v10, "MiuiBubbleImageView"

    .line 328
    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v8, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$$ExternalSyntheticLambda0;

    .line 333
    invoke-direct {v8, v9, v3}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;I)V

    .line 335
    const-wide/16 v10, 0xc8

    .line 338
    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    iget-object v7, v14, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mHandler:Landroid/os/Handler;

    .line 343
    iget-object v8, v9, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mDelayAlpha:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$$ExternalSyntheticLambda0;

    .line 345
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    iget-object v7, v14, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubblePositioner:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;

    .line 350
    iget-object v8, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 352
    iget-object v8, v8, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->pinFloatingWindowPos:Landroid/graphics/Rect;

    .line 354
    invoke-virtual {v7, v4, v8}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblePositioner;->setBubbleRect(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Landroid/graphics/Rect;)V

    .line 356
    iget-object v7, v14, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubbleClickListener:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$3;

    .line 359
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v7, v14, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubbleTouchListener:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$4;

    .line 364
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 366
    iget-boolean v7, v14, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mViewUpdatedRequested:Z

    .line 369
    if-eqz v7, :cond_7

    .line 371
    goto :goto_4

    .line 373
    :cond_7
    iput-boolean v3, v14, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mViewUpdatedRequested:Z

    .line 374
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 376
    move-result-object v7

    .line 379
    iget-object v8, v14, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mViewUpdater:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$1;

    .line 380
    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 382
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->invalidate()V

    .line 385
    :goto_4
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 388
    move-result-object v7

    .line 391
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 392
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->packageName:Ljava/lang/String;

    .line 394
    sget-object v8, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mActiveBubbles:Ljava/util/HashSet;

    .line 396
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 398
    move-result-object v8

    .line 401
    const-string/jumbo v9, "show_bubble_tip_in_game_mode"

    .line 402
    invoke-static {v8, v9, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 405
    move-result v8

    .line 408
    if-ne v8, v3, :cond_8

    .line 409
    goto/16 :goto_b

    .line 411
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 413
    move-result v8

    .line 416
    invoke-static {}, Lmiui/app/MiuiFreeFormManager;->isSupportBubbleNotification()Z

    .line 417
    move-result v10

    .line 420
    if-eqz v10, :cond_f

    .line 421
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 423
    move-result-object v10

    .line 426
    const-string v11, "gb_boosting"

    .line 427
    invoke-static {v10, v11, v2, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 429
    move-result v10

    .line 432
    if-ne v10, v3, :cond_9

    .line 433
    move v10, v3

    .line 435
    goto :goto_5

    .line 436
    :cond_9
    move v10, v2

    .line 437
    :goto_5
    if-eqz v10, :cond_f

    .line 438
    invoke-static {v7}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->isBubbleNotificationSwitchOpen(Landroid/content/Context;)Z

    .line 440
    move-result v10

    .line 443
    if-eqz v10, :cond_f

    .line 444
    sget-object v10, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    .line 446
    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    move-result-object v4

    .line 451
    check-cast v4, Lmiui/app/MiuiBubbleApp;

    .line 452
    if-eqz v4, :cond_a

    .line 454
    invoke-virtual {v4}, Lmiui/app/MiuiBubbleApp;->isChecked()Z

    .line 456
    move-result v4

    .line 459
    if-eqz v4, :cond_a

    .line 460
    move v4, v3

    .line 462
    goto :goto_6

    .line 463
    :cond_a
    move v4, v2

    .line 464
    :goto_6
    if-eqz v4, :cond_f

    .line 465
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 467
    move-result-object v4

    .line 470
    const-string v10, "gb_bullet_chat"

    .line 471
    invoke-static {v4, v10, v2, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 473
    move-result v4

    .line 476
    if-ne v4, v3, :cond_b

    .line 477
    move v4, v3

    .line 479
    goto :goto_7

    .line 480
    :cond_b
    move v4, v2

    .line 481
    :goto_7
    if-eqz v4, :cond_e

    .line 482
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 484
    move-result-object v4

    .line 487
    const-string v7, "enabled_notification_listeners"

    .line 488
    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 490
    move-result-object v4

    .line 493
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 494
    move-result v7

    .line 497
    if-nez v7, :cond_d

    .line 498
    const-string v7, ":"

    .line 500
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 502
    move-result-object v4

    .line 505
    array-length v7, v4

    .line 506
    move v8, v2

    .line 507
    :goto_8
    if-ge v8, v7, :cond_d

    .line 508
    aget-object v10, v4, v8

    .line 510
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 512
    move-result-object v10

    .line 515
    if-eqz v10, :cond_c

    .line 516
    const-string v11, "com.xiaomi.barrage"

    .line 518
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 520
    move-result-object v10

    .line 523
    invoke-static {v11, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 524
    move-result v10

    .line 527
    if-eqz v10, :cond_c

    .line 528
    move v4, v3

    .line 530
    goto :goto_9

    .line 531
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 532
    goto :goto_8

    .line 534
    :cond_d
    move v4, v2

    .line 535
    :goto_9
    if-eqz v4, :cond_e

    .line 536
    move v4, v3

    .line 538
    goto :goto_a

    .line 539
    :cond_e
    move v4, v2

    .line 540
    :goto_a
    if-eqz v4, :cond_f

    .line 541
    move v4, v3

    .line 543
    goto :goto_c

    .line 544
    :cond_f
    :goto_b
    move v4, v2

    .line 545
    :goto_c
    if-eqz v4, :cond_10

    .line 546
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 548
    move-result-object v4

    .line 551
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 552
    move-result-object v4

    .line 555
    invoke-static {v4, v9, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 556
    :cond_10
    :goto_d
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;->updatedBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 559
    if-eqz v1, :cond_16

    .line 561
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 563
    if-eqz v4, :cond_16

    .line 565
    new-instance v7, Ljava/lang/StringBuilder;

    .line 567
    const-string/jumbo v8, "updateBubble: "

    .line 569
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    move-result-object v7

    .line 581
    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v5, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mFlyoutMessage:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

    .line 585
    iget-object v7, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 587
    if-eqz v5, :cond_11

    .line 589
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;->message:Ljava/lang/CharSequence;

    .line 591
    if-eqz v5, :cond_11

    .line 593
    if-eqz v7, :cond_11

    .line 595
    move v5, v3

    .line 597
    goto :goto_e

    .line 598
    :cond_11
    move v5, v2

    .line 599
    :goto_e
    if-nez v5, :cond_12

    .line 600
    goto :goto_12

    .line 602
    :cond_12
    iget-object v5, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mHandler:Landroid/os/Handler;

    .line 603
    new-instance v7, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda3;

    .line 605
    invoke-direct {v7, v4, v1, v3}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;I)V

    .line 607
    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 610
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 613
    move-result-object v5

    .line 616
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 617
    move-result-object v7

    .line 620
    iget-object v8, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 621
    iget-object v9, v8, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 623
    sget-object v10, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_FREEFORM:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 625
    if-ne v9, v10, :cond_13

    .line 627
    move v9, v3

    .line 629
    goto :goto_f

    .line 630
    :cond_13
    move v9, v2

    .line 631
    :goto_f
    iget-object v8, v8, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->packageName:Ljava/lang/String;

    .line 632
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    .line 637
    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 639
    const-string/jumbo v11, "tip"

    .line 642
    if-eqz v9, :cond_14

    .line 645
    const-string v9, "621.1.3.1.21753"

    .line 647
    goto :goto_10

    .line 649
    :cond_14
    const-string v9, "621.2.2.1.21754"

    .line 650
    :goto_10
    invoke-virtual {v10, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 652
    const-string v9, "EVENT_NAME"

    .line 655
    const-string v11, "hide_window_notification_expose"

    .line 657
    invoke-virtual {v10, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    const-string v9, "app_package_name"

    .line 662
    invoke-virtual {v10, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    const-string v8, "app_display_name"

    .line 667
    const-string v9, ""

    .line 669
    invoke-virtual {v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    invoke-virtual {v5, v7, v10}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackEvent(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    goto :goto_11

    .line 677
    :catch_0
    move-exception v5

    .line 678
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 679
    :goto_11
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mMessageView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 682
    iget-object v5, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mHideFlyout:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda1;

    .line 684
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 686
    iget-object v5, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mHideFlyout:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda1;

    .line 689
    const-wide/16 v7, 0x1388

    .line 691
    invoke-virtual {v1, v5, v7, v8}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 693
    :goto_12
    iget-boolean v1, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mViewUpdatedRequested:Z

    .line 696
    if-eqz v1, :cond_15

    .line 698
    goto :goto_13

    .line 700
    :cond_15
    iput-boolean v3, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mViewUpdatedRequested:Z

    .line 701
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 703
    move-result-object v1

    .line 706
    iget-object v5, v4, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mViewUpdater:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$1;

    .line 707
    invoke-virtual {v1, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 709
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidate()V

    .line 712
    :cond_16
    :goto_13
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 715
    if-nez v1, :cond_17

    .line 717
    goto :goto_14

    .line 719
    :cond_17
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mBubbleData:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

    .line 720
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mBubbles:Ljava/util/List;

    .line 722
    check-cast v1, Ljava/util/ArrayList;

    .line 724
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 726
    move-result v1

    .line 729
    xor-int/2addr v1, v3

    .line 730
    if-eqz v1, :cond_18

    .line 731
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 733
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 735
    goto :goto_14

    .line 738
    :cond_18
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 739
    invoke-virtual {v1, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 741
    iget-boolean v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mAddedToWindowManager:Z

    .line 744
    if-nez v1, :cond_19

    .line 746
    goto :goto_14

    .line 748
    :cond_19
    :try_start_1
    iput-boolean v2, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mAddedToWindowManager:Z

    .line 749
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 751
    if-eqz v1, :cond_1a

    .line 753
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mWindowManager:Landroid/view/WindowManager;

    .line 755
    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 757
    iput-object v6, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 760
    goto :goto_14

    .line 762
    :cond_1a
    const-string v0, "MiuiBubbleController"

    .line 763
    const-string v1, "StackView added to WindowManager, but was null when removing!"

    .line 765
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 767
    goto :goto_14

    .line 770
    :catch_1
    move-exception v0

    .line 771
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 772
    :cond_1b
    :goto_14
    new-instance v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;

    .line 775
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mBubbles:Ljava/util/List;

    .line 777
    invoke-direct {v0, v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;-><init>(Ljava/util/List;)V

    .line 779
    iput-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mStateChange:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData$Update;

    .line 782
    return-void
    .line 784
.end method

.method public final getBubbleInStackWithKey(I)Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mBubbles:Ljava/util/List;

    .line 3
    move-object v2, v1

    .line 5
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 20
    iget-object v2, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 22
    iget v2, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 24
    if-ne v2, p1, :cond_0

    .line 26
    return-object v1

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return-object p0
    .line 33
.end method

.method public final getBubbleWithView(Landroid/view/View;)Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mBubbles:Ljava/util/List;

    .line 3
    move-object v2, v1

    .line 5
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 20
    iget-object v2, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 22
    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return-object p0
    .line 37
.end method

.method public final getBubbles()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->mBubbles:Ljava/util/List;

    .line 2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
