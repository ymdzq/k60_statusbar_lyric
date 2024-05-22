.class public final synthetic Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

    .line 5
    iput-wide p2, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda1;->f$1:J

    .line 7
    iput p4, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda1;->f$2:I

    .line 9
    iput-object p5, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda1;->f$3:Landroid/os/Bundle;

    .line 11
    iput p6, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    iput-object p7, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda1;->f$5:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;

    .line 2
    iget-wide v1, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda1;->f$1:J

    .line 4
    iget v3, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda1;->f$2:I

    .line 6
    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda1;->f$3:Landroid/os/Bundle;

    .line 8
    iget v5, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl$$ExternalSyntheticLambda1;->f$5:Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .line 12
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$PipAccessibilityInteractionConnectionImpl;->this$0:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    .line 19
    cmp-long v1, v1, v6

    .line 21
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_a

    .line 24
    const/4 v1, 0x1

    .line 26
    const v6, 0x7f0a0083    # @id/action_pip_resize

    .line 27
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 30
    if-ne v3, v6, :cond_1

    .line 32
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 34
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 38
    move-result v3

    .line 41
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mNormalBounds:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 44
    move-result v6

    .line 47
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 48
    iget-object v9, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 50
    iget-object v10, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 52
    iget-object v11, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mSnapAlgorithm:Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 54
    if-ne v3, v6, :cond_0

    .line 56
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 58
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 62
    move-result v3

    .line 65
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 66
    move-result v6

    .line 69
    if-ne v3, v6, :cond_0

    .line 70
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 72
    move-result-object v3

    .line 75
    invoke-virtual {v11, v3, v9, v2}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    .line 76
    move-result v3

    .line 79
    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mExpandedBounds:Landroid/graphics/Rect;

    .line 80
    invoke-static {v4, v3, v10}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 82
    new-instance v3, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;

    .line 85
    invoke-direct {v3, v0, v1}, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;I)V

    .line 87
    invoke-virtual {v8, v4, v2, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    .line 90
    goto/16 :goto_2

    .line 93
    :cond_0
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 95
    move-result-object v3

    .line 98
    invoke-virtual {v11, v3, v10, v2}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;I)F

    .line 99
    move-result v3

    .line 102
    invoke-static {v4, v3, v9}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 103
    new-instance v3, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;

    .line 106
    invoke-direct {v3, v0, v2}, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;I)V

    .line 108
    invoke-virtual {v8, v4, v2, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;ILjava/util/function/Consumer;)V

    .line 111
    goto/16 :goto_2

    .line 114
    :cond_1
    const v6, 0x7f0a0084    # @id/action_pip_stash

    .line 116
    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 119
    if-ne v3, v6, :cond_4

    .line 121
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    .line 126
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 128
    iget-object v2, v8, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 131
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    .line 133
    move-result-object v3

    .line 136
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 137
    move-result-object v4

    .line 140
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 141
    iget-object v6, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 143
    iget v6, v6, Landroid/graphics/Rect;->left:I

    .line 145
    if-ne v4, v6, :cond_2

    .line 147
    move v4, v1

    .line 149
    goto :goto_0

    .line 150
    :cond_2
    const/4 v4, 0x2

    .line 151
    :goto_0
    iget-object v3, v3, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 152
    if-ne v4, v1, :cond_3

    .line 154
    iget v6, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 156
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 158
    move-result-object v7

    .line 161
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 162
    move-result v7

    .line 165
    sub-int/2addr v6, v7

    .line 166
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 167
    add-int/2addr v6, v3

    .line 169
    goto :goto_1

    .line 170
    :cond_3
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 171
    move-result-object v6

    .line 174
    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 175
    iget v7, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 177
    sub-int/2addr v6, v7

    .line 179
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 180
    sub-int/2addr v6, v3

    .line 182
    :goto_1
    int-to-float v3, v6

    .line 183
    float-to-int v6, v3

    .line 184
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 185
    move-result-object v7

    .line 188
    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 189
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 191
    move-result-object v9

    .line 194
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    .line 195
    move-result v9

    .line 198
    int-to-float v9, v9

    .line 199
    add-float/2addr v3, v9

    .line 200
    float-to-int v3, v3

    .line 201
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 202
    move-result-object v9

    .line 205
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 206
    invoke-virtual {v0, v6, v7, v3, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 208
    iget-object v3, v8, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 211
    const/16 v6, 0xfa

    .line 213
    const/16 v7, 0x8

    .line 215
    invoke-virtual {v3, v0, v6, v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(Landroid/graphics/Rect;II)V

    .line 217
    iget-object v3, v2, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 220
    iget-object v3, v3, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 222
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 224
    iget-object v0, v8, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 227
    invoke-virtual {v0, v8}, Lcom/android/wm/shell/common/FloatingContentCoordinator;->onContentMoved(Lcom/android/wm/shell/common/FloatingContentCoordinator$FloatingContent;)V

    .line 229
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/pip/PipBoundsState;->setStashed(I)V

    .line 232
    goto :goto_2

    .line 235
    :cond_4
    const v6, 0x7f0a0085    # @id/action_pip_unstash

    .line 236
    if-ne v3, v6, :cond_5

    .line 239
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mUnstashCallback:Ljava/lang/Runnable;

    .line 241
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 243
    invoke-virtual {v7, v2}, Lcom/android/wm/shell/pip/PipBoundsState;->setStashed(I)V

    .line 246
    goto :goto_2

    .line 249
    :cond_5
    const/16 v6, 0x10

    .line 250
    if-eq v3, v6, :cond_9

    .line 252
    const/high16 v6, 0x40000

    .line 254
    if-eq v3, v6, :cond_8

    .line 256
    const/high16 v6, 0x100000

    .line 258
    if-eq v3, v6, :cond_7

    .line 260
    const v6, 0x1020042    # @android:id/accessibilityActionMoveWindow

    .line 262
    if-eq v3, v6, :cond_6

    .line 265
    goto :goto_3

    .line 267
    :cond_6
    const-string v3, "ACTION_ARGUMENT_MOVE_WINDOW_X"

    .line 268
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 270
    move-result v3

    .line 273
    const-string v6, "ACTION_ARGUMENT_MOVE_WINDOW_Y"

    .line 274
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 276
    move-result v4

    .line 279
    new-instance v6, Landroid/graphics/Rect;

    .line 280
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 282
    invoke-virtual {v7}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 285
    move-result-object v7

    .line 288
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 289
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mTmpBounds:Landroid/graphics/Rect;

    .line 292
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 294
    invoke-virtual {v8, v0, v2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;Z)V

    .line 297
    goto :goto_2

    .line 300
    :cond_7
    invoke-virtual {v8}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->dismissPip()V

    .line 301
    goto :goto_2

    .line 304
    :cond_8
    invoke-virtual {v8, v2, v2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandLeavePip(ZZ)V

    .line 305
    goto :goto_2

    .line 308
    :cond_9
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mCallbacks:Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda3;

    .line 309
    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 311
    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 313
    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 315
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    .line 317
    move-result-object v3

    .line 320
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->willResizeMenu()Z

    .line 321
    move-result v0

    .line 324
    invoke-virtual {v2, v3, v1, v1, v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->showMenu(Landroid/graphics/Rect;IZZ)V

    .line 325
    :goto_2
    move v2, v1

    .line 328
    :cond_a
    :goto_3
    :try_start_0
    invoke-interface {p0, v2, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :catch_0
    return-void
    .line 332
.end method
