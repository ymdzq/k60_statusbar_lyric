.class public final Lcom/android/wm/shell/bubbles/BubbleController$7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleData$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final applyUpdate(Lcom/android/wm/shell/bubbles/BubbleData$Update;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 6
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 8
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleController;->ensureBubbleViewsAndWindowCreated()V

    .line 10
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 13
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 15
    iget-boolean v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    .line 17
    const/4 v4, 0x3

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    if-nez v3, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    iput-boolean v6, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    .line 25
    iget v3, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    .line 27
    new-instance v7, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;

    .line 29
    invoke-direct {v7, v2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda16;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    .line 31
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 34
    iget-object v8, v2, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->ioScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 36
    new-instance v9, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;

    .line 38
    invoke-direct {v9, v2, v3, v7, v5}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleDataRepository;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 40
    invoke-static {v8, v5, v5, v9, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 43
    :goto_0
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 46
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 48
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 50
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    .line 52
    const/4 v7, 0x1

    .line 54
    if-nez v3, :cond_1

    .line 55
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    .line 58
    move-result-object v2

    .line 61
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v2

    .line 65
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v8

    .line 69
    if-eqz v8, :cond_3

    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v8

    .line 75
    check-cast v8, Lcom/android/wm/shell/bubbles/Bubble;

    .line 76
    invoke-virtual {v8}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    .line 78
    move-result v8

    .line 81
    if-eqz v8, :cond_2

    .line 82
    iput-boolean v7, v3, Lcom/android/wm/shell/bubbles/BubbleOverflow;->showDot:Z

    .line 84
    iget-object v2, v3, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 86
    if-eqz v2, :cond_4

    .line 88
    invoke-virtual {v2, v7}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    .line 90
    goto :goto_1

    .line 93
    :cond_3
    iput-boolean v6, v3, Lcom/android/wm/shell/bubbles/BubbleOverflow;->showDot:Z

    .line 94
    iget-object v2, v3, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 96
    if-eqz v2, :cond_4

    .line 98
    invoke-virtual {v2, v7}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    .line 100
    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 103
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 105
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    .line 107
    if-eqz v2, :cond_5

    .line 109
    invoke-interface {v2, v1}, Lcom/android/wm/shell/bubbles/BubbleData$Listener;->applyUpdate(Lcom/android/wm/shell/bubbles/BubbleData$Update;)V

    .line 111
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 114
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    .line 116
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    .line 121
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object v2

    .line 129
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v8

    .line 133
    if-eqz v8, :cond_15

    .line 134
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v8

    .line 139
    check-cast v8, Landroid/util/Pair;

    .line 140
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 142
    check-cast v9, Lcom/android/wm/shell/bubbles/Bubble;

    .line 144
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 146
    check-cast v8, Ljava/lang/Integer;

    .line 148
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 150
    move-result v8

    .line 153
    iget-object v10, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 154
    check-cast v10, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 156
    iget-object v10, v10, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 158
    iget v11, v10, Lcom/android/wm/shell/bubbles/BubbleController$7;->$r8$classId:I

    .line 160
    iget-object v10, v10, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 162
    const/16 v12, 0x8

    .line 164
    const/4 v13, 0x5

    .line 166
    packed-switch v11, :pswitch_data_0

    .line 167
    goto/16 :goto_6

    .line 170
    :pswitch_0
    check-cast v10, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 172
    iget-object v10, v10, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 174
    if-eqz v10, :cond_e

    .line 176
    iget-boolean v11, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 178
    if-eqz v11, :cond_7

    .line 180
    invoke-virtual {v10}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 182
    move-result v11

    .line 185
    if-ne v11, v7, :cond_7

    .line 186
    iput-boolean v7, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mRemovingLastBubbleWhileExpanded:Z

    .line 188
    iget-object v11, v9, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 190
    new-instance v14, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;

    .line 192
    invoke-direct {v14, v10, v9, v11, v7}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleViewProvider;Ljava/lang/Object;I)V

    .line 194
    invoke-virtual {v10, v6, v14}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showScrim(ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;)V

    .line 197
    invoke-virtual {v10, v9, v13}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 200
    goto/16 :goto_7

    .line 203
    :cond_7
    move v11, v6

    .line 205
    :goto_3
    invoke-virtual {v10}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 206
    move-result v14

    .line 209
    if-ge v11, v14, :cond_b

    .line 210
    iget-object v14, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 212
    invoke-virtual {v14, v11}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 214
    move-result-object v14

    .line 217
    instance-of v15, v14, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 218
    if-eqz v15, :cond_a

    .line 220
    check-cast v14, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 222
    invoke-virtual {v14}, Lcom/android/wm/shell/bubbles/BadgedImageView;->getKey()Ljava/lang/String;

    .line 224
    move-result-object v14

    .line 227
    iget-object v15, v9, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 228
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    move-result v14

    .line 233
    if-eqz v14, :cond_a

    .line 234
    iget-object v14, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 236
    invoke-virtual {v14, v11}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->removeViewAt(I)V

    .line 238
    iget-object v11, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 241
    iget-object v14, v9, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 243
    invoke-virtual {v11, v14}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    .line 245
    move-result v11

    .line 248
    if-eqz v11, :cond_8

    .line 249
    invoke-virtual {v9}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView()V

    .line 251
    goto :goto_4

    .line 254
    :cond_8
    invoke-virtual {v9}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView()V

    .line 255
    iput-object v5, v9, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 258
    :goto_4
    invoke-virtual {v10}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    .line 260
    invoke-virtual {v10}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 263
    move-result v11

    .line 266
    if-nez v11, :cond_9

    .line 267
    iget-boolean v11, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 269
    if-nez v11, :cond_9

    .line 271
    iget-object v11, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 273
    iget-object v14, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 275
    invoke-virtual {v14}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getRestingPosition()Landroid/graphics/PointF;

    .line 277
    move-result-object v14

    .line 280
    invoke-virtual {v11, v14}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    .line 281
    iget-object v11, v10, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 284
    invoke-virtual {v11}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 286
    :cond_9
    invoke-virtual {v10, v9, v13}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 289
    goto :goto_7

    .line 292
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 293
    goto :goto_3

    .line 295
    :cond_b
    iget v11, v9, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    .line 296
    and-int/2addr v11, v12

    .line 298
    if-eqz v11, :cond_c

    .line 299
    move v11, v7

    .line 301
    goto :goto_5

    .line 302
    :cond_c
    move v11, v6

    .line 303
    :goto_5
    if-eqz v11, :cond_d

    .line 304
    invoke-virtual {v9}, Lcom/android/wm/shell/bubbles/Bubble;->cleanupExpandedView()V

    .line 306
    iput-object v5, v9, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 309
    invoke-virtual {v10, v9, v13}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 311
    goto :goto_7

    .line 314
    :cond_d
    new-instance v10, Ljava/lang/StringBuilder;

    .line 315
    const-string/jumbo v11, "was asked to remove Bubble, but didn\'t find the view! "

    .line 317
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v10

    .line 329
    const-string v11, "Bubbles"

    .line 330
    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    goto :goto_7

    .line 335
    :goto_6
    check-cast v10, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 336
    iget-object v10, v10, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 338
    :cond_e
    :goto_7
    if-eq v8, v12, :cond_6

    .line 340
    const/16 v10, 0xe

    .line 342
    if-ne v8, v10, :cond_f

    .line 344
    goto/16 :goto_2

    .line 346
    :cond_f
    if-eq v8, v13, :cond_10

    .line 348
    const/16 v10, 0xc

    .line 350
    if-ne v8, v10, :cond_11

    .line 352
    :cond_10
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_11
    iget-object v10, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 357
    check-cast v10, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 359
    iget-object v10, v10, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 361
    iget-object v11, v9, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 363
    invoke-virtual {v10, v11}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    .line 365
    move-result v10

    .line 368
    if-nez v10, :cond_6

    .line 369
    iget-object v10, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 371
    check-cast v10, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 373
    iget-object v10, v10, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 375
    iget-object v11, v9, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 377
    invoke-virtual {v10, v11}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    .line 379
    move-result v10

    .line 382
    if-nez v10, :cond_13

    .line 383
    invoke-virtual {v9}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    .line 385
    move-result v10

    .line 388
    if-eqz v10, :cond_12

    .line 389
    if-eq v8, v13, :cond_12

    .line 391
    const/16 v10, 0x9

    .line 393
    if-ne v8, v10, :cond_13

    .line 395
    :cond_12
    iget-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 397
    check-cast v8, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 399
    iget-object v8, v8, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 401
    iget-object v9, v9, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 403
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    new-instance v10, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda3;

    .line 408
    invoke-direct {v10, v8, v9}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/String;)V

    .line 410
    iget-object v8, v8, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 413
    invoke-interface {v8, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 415
    goto/16 :goto_2

    .line 418
    :cond_13
    iget-boolean v8, v9, Lcom/android/wm/shell/bubbles/Bubble;->mIsBubble:Z

    .line 420
    if-eqz v8, :cond_14

    .line 422
    iget-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 424
    check-cast v8, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 426
    invoke-virtual {v8, v9, v6}, Lcom/android/wm/shell/bubbles/BubbleController;->setIsBubble(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    .line 428
    :cond_14
    iget-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 431
    check-cast v8, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 433
    iget-object v8, v8, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 435
    iget-object v9, v9, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 437
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    new-instance v10, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;

    .line 442
    invoke-direct {v10, v8, v9, v4}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/Object;I)V

    .line 444
    iget-object v8, v8, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 447
    invoke-interface {v8, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 449
    goto/16 :goto_2

    .line 452
    :cond_15
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 454
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 456
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 458
    iget v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    .line 460
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    invoke-static {v3}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->transform(Ljava/util/List;)Ljava/util/List;

    .line 465
    move-result-object v3

    .line 468
    iget-object v8, v4, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    .line 469
    monitor-enter v8

    .line 471
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    .line 472
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 474
    move-object v10, v3

    .line 477
    check-cast v10, Ljava/util/ArrayList;

    .line 478
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 480
    move-result-object v10

    .line 483
    :cond_16
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 484
    move-result v11

    .line 487
    if-eqz v11, :cond_18

    .line 488
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 490
    move-result-object v11

    .line 493
    move-object v12, v11

    .line 494
    check-cast v12, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 495
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 497
    :try_start_1
    iget-object v13, v8, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    .line 498
    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 500
    move-result-object v13

    .line 503
    check-cast v13, Ljava/util/List;

    .line 504
    if-nez v13, :cond_17

    .line 506
    new-instance v13, Ljava/util/ArrayList;

    .line 508
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 510
    iget-object v14, v8, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->entitiesByUser:Landroid/util/SparseArray;

    .line 513
    invoke-virtual {v14, v2, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    :cond_17
    :try_start_2
    monitor-exit v8

    .line 518
    new-instance v14, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;

    .line 519
    invoke-direct {v14, v6, v12}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;-><init>(ILjava/lang/Object;)V

    .line 521
    invoke-interface {v13, v14}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 524
    move-result v12

    .line 527
    if-eqz v12, :cond_16

    .line 528
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    goto :goto_8

    .line 533
    :catchall_0
    move-exception v0

    .line 534
    monitor-exit v8

    .line 535
    throw v0

    .line 536
    :cond_18
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->uncache(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 537
    monitor-exit v8

    .line 540
    check-cast v3, Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 543
    move-result v2

    .line 546
    xor-int/2addr v2, v7

    .line 547
    if-eqz v2, :cond_19

    .line 548
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk()V

    .line 550
    :cond_19
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 553
    if-eqz v2, :cond_1f

    .line 555
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 557
    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 559
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 561
    iget v3, v3, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    .line 563
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 568
    move-result-object v2

    .line 571
    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->transform(Ljava/util/List;)Ljava/util/List;

    .line 572
    move-result-object v2

    .line 575
    iget-object v8, v4, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    .line 576
    invoke-virtual {v8, v3, v2}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->addBubbles(ILjava/util/List;)V

    .line 578
    check-cast v2, Ljava/util/ArrayList;

    .line 581
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 583
    move-result v2

    .line 586
    xor-int/2addr v2, v7

    .line 587
    if-eqz v2, :cond_1a

    .line 588
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk()V

    .line 590
    :cond_1a
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 593
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 595
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 597
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 599
    iget v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$7;->$r8$classId:I

    .line 601
    packed-switch v4, :pswitch_data_1

    .line 603
    goto :goto_a

    .line 606
    :pswitch_1
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 607
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 609
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 611
    if-eqz v2, :cond_1f

    .line 613
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleCount()I

    .line 615
    move-result v4

    .line 618
    if-nez v4, :cond_1b

    .line 619
    move v4, v7

    .line 621
    goto :goto_9

    .line 622
    :cond_1b
    move v4, v6

    .line 623
    :goto_9
    if-eqz v4, :cond_1c

    .line 624
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->shouldShowStackEdu()Z

    .line 626
    move-result v8

    .line 629
    if-eqz v8, :cond_1c

    .line 630
    iget-object v8, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 632
    iget-object v9, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 634
    invoke-virtual {v9}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getDefaultStartPosition()Landroid/graphics/PointF;

    .line 636
    move-result-object v9

    .line 639
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->setStackPosition(Landroid/graphics/PointF;)V

    .line 640
    :cond_1c
    iget-object v8, v3, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 643
    if-nez v8, :cond_1d

    .line 645
    goto :goto_a

    .line 647
    :cond_1d
    iget-object v9, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 648
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 650
    iget-object v11, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 652
    iget v11, v11, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 654
    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 656
    invoke-virtual {v9, v8, v6, v10}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 659
    if-eqz v4, :cond_1e

    .line 662
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 664
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    .line 666
    move-result v4

    .line 669
    iput-boolean v4, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 670
    :cond_1e
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 672
    iget-boolean v8, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 674
    xor-int/2addr v8, v7

    .line 676
    iput-boolean v8, v4, Lcom/android/wm/shell/bubbles/BadgedImageView;->mOnLeft:Z

    .line 677
    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 679
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showBadge()V

    .line 682
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 685
    iget-object v8, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleClickListener:Lcom/android/wm/shell/bubbles/BubbleStackView$6;

    .line 687
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 692
    iget-object v8, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleTouchListener:Lcom/android/wm/shell/bubbles/BubbleStackView$8;

    .line 694
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 696
    invoke-virtual {v2, v6}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBubbleShadows(Z)V

    .line 699
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateInFlyoutForBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 702
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    .line 705
    invoke-virtual {v2, v3, v7}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 708
    :cond_1f
    :goto_a
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 711
    const/4 v3, 0x2

    .line 713
    if-eqz v2, :cond_20

    .line 714
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 716
    check-cast v4, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 718
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 720
    iget v8, v4, Lcom/android/wm/shell/bubbles/BubbleController$7;->$r8$classId:I

    .line 722
    packed-switch v8, :pswitch_data_2

    .line 724
    goto :goto_b

    .line 727
    :pswitch_2
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 728
    check-cast v4, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 730
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 732
    if-eqz v4, :cond_20

    .line 734
    invoke-virtual {v4, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateInFlyoutForBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 736
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    .line 739
    invoke-virtual {v4, v2, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 742
    :cond_20
    :goto_b
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 745
    if-eqz v2, :cond_21

    .line 747
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 749
    check-cast v4, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 751
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 753
    invoke-virtual {v4, v2, v7}, Lcom/android/wm/shell/bubbles/BubbleController$7;->suppressionChanged(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    .line 755
    :cond_21
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 758
    if-eqz v2, :cond_22

    .line 760
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 762
    check-cast v4, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 764
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 766
    invoke-virtual {v4, v2, v6}, Lcom/android/wm/shell/bubbles/BubbleController$7;->suppressionChanged(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    .line 768
    :cond_22
    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    .line 771
    if-eqz v2, :cond_23

    .line 773
    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    .line 775
    if-nez v2, :cond_23

    .line 777
    move v2, v7

    .line 779
    goto :goto_c

    .line 780
    :cond_23
    move v2, v6

    .line 781
    :goto_c
    iget-boolean v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 782
    if-eqz v4, :cond_2c

    .line 784
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 786
    check-cast v4, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 788
    iget-object v8, v4, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 790
    iget v4, v4, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    .line 792
    iget-object v9, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    .line 794
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 796
    invoke-static {v9}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->transform(Ljava/util/List;)Ljava/util/List;

    .line 799
    move-result-object v9

    .line 802
    iget-object v10, v8, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    .line 803
    invoke-virtual {v10, v4, v9}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->addBubbles(ILjava/util/List;)V

    .line 805
    check-cast v9, Ljava/util/ArrayList;

    .line 808
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 810
    move-result v4

    .line 813
    xor-int/2addr v4, v7

    .line 814
    if-eqz v4, :cond_24

    .line 815
    invoke-virtual {v8}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk()V

    .line 817
    :cond_24
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 820
    check-cast v4, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 822
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 824
    iget-object v8, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    .line 826
    xor-int/lit8 v9, v2, 0x1

    .line 828
    iget v10, v4, Lcom/android/wm/shell/bubbles/BubbleController$7;->$r8$classId:I

    .line 830
    packed-switch v10, :pswitch_data_3

    .line 832
    goto/16 :goto_12

    .line 835
    :pswitch_3
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 837
    check-cast v4, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 839
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 841
    if-eqz v4, :cond_2c

    .line 843
    new-instance v10, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;

    .line 845
    invoke-direct {v10, v4, v8, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/lang/Object;I)V

    .line 847
    iget-boolean v3, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 850
    if-nez v3, :cond_2b

    .line 852
    iget-boolean v3, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 854
    if-eqz v3, :cond_25

    .line 856
    goto/16 :goto_10

    .line 858
    :cond_25
    if-nez v3, :cond_2a

    .line 860
    invoke-interface {v8}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 862
    move-result-object v3

    .line 865
    new-instance v8, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda19;

    .line 866
    invoke-direct {v8}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda19;-><init>()V

    .line 868
    invoke-interface {v3, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 871
    move-result-object v3

    .line 874
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 875
    move-result-object v8

    .line 878
    invoke-interface {v3, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 879
    move-result-object v3

    .line 882
    check-cast v3, Ljava/util/List;

    .line 883
    iget-object v8, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 885
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 887
    new-instance v11, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;

    .line 890
    invoke-direct {v11, v6, v8, v3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 892
    move v12, v6

    .line 895
    move v13, v12

    .line 896
    :goto_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 897
    move-result v14

    .line 900
    if-ge v12, v14, :cond_28

    .line 901
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 903
    move-result-object v14

    .line 906
    check-cast v14, Landroid/view/View;

    .line 907
    iget-object v15, v8, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 909
    invoke-virtual {v15, v14}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    .line 911
    move-result v15

    .line 914
    if-ne v12, v15, :cond_26

    .line 915
    invoke-virtual {v8, v14, v12, v10}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveToFinalIndex(Landroid/view/View;ILjava/lang/Runnable;)V

    .line 917
    goto :goto_f

    .line 920
    :cond_26
    if-nez v12, :cond_27

    .line 921
    invoke-virtual {v14}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 923
    move-result-object v15

    .line 926
    iget-object v5, v8, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 927
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 929
    iget v7, v8, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mSwapAnimationOffset:F

    .line 931
    sub-float/2addr v5, v7

    .line 933
    invoke-virtual {v15, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 934
    move-result-object v5

    .line 937
    const-wide/16 v6, 0x12c

    .line 938
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 940
    move-result-object v5

    .line 943
    new-instance v6, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;

    .line 944
    invoke-direct {v6, v8, v11, v14, v10}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;Landroid/view/View;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;)V

    .line 946
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 949
    move-result-object v5

    .line 952
    const v6, 0x7f0a0797    # @id/reorder_animator_tag

    .line 953
    invoke-virtual {v14, v6, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 956
    goto :goto_e

    .line 959
    :cond_27
    invoke-virtual {v8, v14, v12, v10}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveToFinalIndex(Landroid/view/View;ILjava/lang/Runnable;)V

    .line 960
    :goto_e
    const/4 v6, 0x1

    .line 963
    :goto_f
    or-int/2addr v13, v6

    .line 964
    add-int/lit8 v12, v12, 0x1

    .line 965
    const/4 v5, 0x0

    .line 967
    const/4 v6, 0x0

    .line 968
    const/4 v7, 0x1

    .line 969
    goto :goto_d

    .line 970
    :cond_28
    if-nez v13, :cond_29

    .line 971
    invoke-virtual {v11}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;->run()V

    .line 973
    :cond_29
    const/4 v3, 0x0

    .line 976
    goto :goto_11

    .line 977
    :cond_2a
    move v3, v6

    .line 978
    goto :goto_11

    .line 979
    :cond_2b
    :goto_10
    invoke-virtual {v10}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda2;->run()V

    .line 980
    const/4 v3, 0x0

    .line 983
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBadges(Z)V

    .line 984
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateZOrder()V

    .line 987
    :goto_11
    if-eqz v9, :cond_2d

    .line 990
    invoke-virtual {v4, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updatePointerPosition(Z)V

    .line 992
    goto :goto_13

    .line 995
    :cond_2c
    :goto_12
    move v3, v6

    .line 996
    :cond_2d
    :goto_13
    if-eqz v2, :cond_2e

    .line 997
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 999
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1001
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 1003
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubbleController$7;->expansionChanged(Z)V

    .line 1005
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 1008
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1010
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 1012
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1014
    new-instance v4, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;

    .line 1017
    invoke-direct {v4, v2, v3}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Z)V

    .line 1019
    iget-object v2, v2, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 1022
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1024
    :cond_2e
    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    .line 1027
    if-eqz v2, :cond_2f

    .line 1029
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 1031
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1033
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 1035
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 1037
    iget v5, v2, Lcom/android/wm/shell/bubbles/BubbleController$7;->$r8$classId:I

    .line 1039
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 1041
    packed-switch v5, :pswitch_data_4

    .line 1043
    goto :goto_14

    .line 1046
    :pswitch_4
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1047
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 1049
    if-eqz v2, :cond_2f

    .line 1051
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 1053
    goto :goto_15

    .line 1056
    :goto_14
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1057
    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 1059
    if-eqz v5, :cond_2f

    .line 1061
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleController;->isStackExpanded()Z

    .line 1063
    move-result v5

    .line 1066
    if-eqz v5, :cond_2f

    .line 1067
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 1069
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showExpandedView(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 1071
    :cond_2f
    :goto_15
    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    .line 1074
    if-eqz v2, :cond_30

    .line 1076
    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    .line 1078
    if-eqz v2, :cond_30

    .line 1080
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 1082
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1084
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 1086
    const/4 v4, 0x1

    .line 1088
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/bubbles/BubbleController$7;->expansionChanged(Z)V

    .line 1089
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 1092
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1094
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 1096
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1098
    new-instance v5, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;

    .line 1101
    invoke-direct {v5, v2, v4}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Z)V

    .line 1103
    iget-object v2, v2, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 1106
    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1108
    :cond_30
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 1111
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1113
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 1115
    const-string v4, "BubbleData.Listener.applyUpdate"

    .line 1117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1119
    new-instance v5, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;

    .line 1122
    const/4 v6, 0x1

    .line 1124
    invoke-direct {v5, v2, v4, v6}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Ljava/lang/Object;I)V

    .line 1125
    iget-object v2, v2, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 1128
    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1130
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 1133
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1135
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleController;->updateBubbleViews()V

    .line 1137
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 1140
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1142
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 1144
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    .line 1146
    monitor-enter v2

    .line 1148
    :try_start_3
    iget-boolean v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    .line 1149
    if-eqz v4, :cond_32

    .line 1151
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 1153
    if-eqz v4, :cond_31

    .line 1155
    invoke-interface {v4}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 1157
    move-result-object v4

    .line 1160
    goto :goto_16

    .line 1161
    :cond_31
    const/4 v4, 0x0

    .line 1162
    :goto_16
    iput-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSelectedBubbleKey:Ljava/lang/String;

    .line 1163
    :cond_32
    iget-boolean v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    .line 1165
    if-eqz v4, :cond_33

    .line 1167
    iget-boolean v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    .line 1169
    iput-boolean v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mIsStackExpanded:Z

    .line 1171
    :cond_33
    iget-boolean v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryChanged:Z

    .line 1173
    if-eqz v4, :cond_35

    .line 1175
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->this$1:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 1177
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1179
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 1181
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    .line 1183
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    .line 1185
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    move-result-object v4

    .line 1190
    check-cast v4, Ljava/lang/String;

    .line 1191
    if-eqz v4, :cond_34

    .line 1193
    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedGroupToNotifKeys:Ljava/util/HashMap;

    .line 1195
    iget-object v7, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    .line 1197
    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    goto :goto_17

    .line 1202
    :cond_34
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedGroupToNotifKeys:Ljava/util/HashMap;

    .line 1203
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    .line 1205
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    :cond_35
    :goto_17
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mTmpBubbles:Ljava/util/ArrayList;

    .line 1210
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1212
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mTmpBubbles:Ljava/util/ArrayList;

    .line 1215
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    .line 1217
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1219
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mTmpBubbles:Ljava/util/ArrayList;

    .line 1222
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->overflowBubbles:Ljava/util/List;

    .line 1224
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1226
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedBubbleKeys:Ljava/util/HashSet;

    .line 1229
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1231
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mShortcutIdToBubble:Ljava/util/HashMap;

    .line 1234
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1236
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mAppBubbleTaskIds:Ljava/util/HashMap;

    .line 1239
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1241
    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mTmpBubbles:Ljava/util/ArrayList;

    .line 1244
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1246
    move-result-object v4

    .line 1249
    :cond_36
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1250
    move-result v5

    .line 1253
    if-eqz v5, :cond_38

    .line 1254
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1256
    move-result-object v5

    .line 1259
    check-cast v5, Lcom/android/wm/shell/bubbles/Bubble;

    .line 1260
    iget-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mShortcutIdToBubble:Ljava/util/HashMap;

    .line 1262
    iget-object v8, v5, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 1264
    if-eqz v8, :cond_37

    .line 1266
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 1268
    move-result-object v8

    .line 1271
    goto :goto_19

    .line 1272
    :cond_37
    iget-object v8, v5, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    .line 1273
    :goto_19
    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    invoke-virtual {v2, v5}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->updateBubbleSuppressedState(Lcom/android/wm/shell/bubbles/Bubble;)V

    .line 1278
    iget-boolean v7, v5, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    .line 1281
    if-eqz v7, :cond_36

    .line 1283
    iget-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mAppBubbleTaskIds:Ljava/util/HashMap;

    .line 1285
    iget-object v8, v5, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 1287
    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/Bubble;->getTaskId()I

    .line 1289
    move-result v5

    .line 1292
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1293
    move-result-object v5

    .line 1296
    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1297
    goto :goto_18

    .line 1300
    :cond_38
    monitor-exit v2

    .line 1301
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 1302
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1304
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    .line 1306
    move-result v2

    .line 1309
    if-eqz v2, :cond_43

    .line 1310
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 1312
    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1314
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 1316
    if-eqz v2, :cond_43

    .line 1318
    new-instance v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    .line 1320
    invoke-direct {v2}, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;-><init>()V

    .line 1322
    iget-boolean v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    .line 1325
    iput-boolean v4, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->expandedChanged:Z

    .line 1327
    iget-boolean v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    .line 1329
    iput-boolean v4, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->expanded:Z

    .line 1331
    iget-boolean v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    .line 1333
    if-eqz v4, :cond_3a

    .line 1335
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 1337
    if-eqz v4, :cond_39

    .line 1339
    invoke-interface {v4}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    .line 1341
    move-result-object v4

    .line 1344
    goto :goto_1a

    .line 1345
    :cond_39
    const/4 v4, 0x0

    .line 1346
    :goto_1a
    iput-object v4, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->selectedBubbleKey:Ljava/lang/String;

    .line 1347
    :cond_3a
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 1349
    if-eqz v4, :cond_3b

    .line 1351
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/Bubble;->asBubbleBarBubble()Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    .line 1353
    move-result-object v4

    .line 1356
    goto :goto_1b

    .line 1357
    :cond_3b
    const/4 v4, 0x0

    .line 1358
    :goto_1b
    iput-object v4, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->addedBubble:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    .line 1359
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 1361
    if-eqz v4, :cond_3c

    .line 1363
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/Bubble;->asBubbleBarBubble()Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    .line 1365
    move-result-object v4

    .line 1368
    goto :goto_1c

    .line 1369
    :cond_3c
    const/4 v4, 0x0

    .line 1370
    :goto_1c
    iput-object v4, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->updatedBubble:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    .line 1371
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 1373
    if-eqz v4, :cond_3d

    .line 1375
    iget-object v4, v4, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 1377
    goto :goto_1d

    .line 1379
    :cond_3d
    const/4 v4, 0x0

    .line 1380
    :goto_1d
    iput-object v4, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->suppressedBubbleKey:Ljava/lang/String;

    .line 1381
    iget-object v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    .line 1383
    if-eqz v4, :cond_3e

    .line 1385
    iget-object v5, v4, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 1387
    goto :goto_1e

    .line 1389
    :cond_3e
    const/4 v5, 0x0

    .line 1390
    :goto_1e
    iput-object v5, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->unsupressedBubbleKey:Ljava/lang/String;

    .line 1391
    move v4, v3

    .line 1393
    :goto_1f
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    .line 1394
    check-cast v5, Ljava/util/ArrayList;

    .line 1396
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 1398
    move-result v7

    .line 1401
    if-ge v4, v7, :cond_3f

    .line 1402
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1404
    move-result-object v5

    .line 1407
    check-cast v5, Landroid/util/Pair;

    .line 1408
    iget-object v7, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->removedBubbles:Ljava/util/List;

    .line 1410
    new-instance v8, Lcom/android/wm/shell/common/bubbles/RemovedBubble;

    .line 1412
    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1414
    check-cast v9, Lcom/android/wm/shell/bubbles/Bubble;

    .line 1416
    iget-object v9, v9, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 1418
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1420
    check-cast v5, Ljava/lang/Integer;

    .line 1422
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 1424
    move-result v5

    .line 1427
    invoke-direct {v8, v9, v5}, Lcom/android/wm/shell/common/bubbles/RemovedBubble;-><init>(Ljava/lang/String;I)V

    .line 1428
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1431
    add-int/lit8 v4, v4, 0x1

    .line 1434
    goto :goto_1f

    .line 1436
    :cond_3f
    iget-boolean v4, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    .line 1437
    if-eqz v4, :cond_40

    .line 1439
    move v4, v3

    .line 1441
    :goto_20
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    .line 1442
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 1444
    move-result v7

    .line 1447
    if-ge v4, v7, :cond_40

    .line 1448
    iget-object v7, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->bubbleKeysInOrder:Ljava/util/List;

    .line 1450
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1452
    move-result-object v5

    .line 1455
    check-cast v5, Lcom/android/wm/shell/bubbles/Bubble;

    .line 1456
    iget-object v5, v5, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    .line 1458
    check-cast v7, Ljava/util/ArrayList;

    .line 1460
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    add-int/lit8 v4, v4, 0x1

    .line 1465
    goto :goto_20

    .line 1467
    :cond_40
    iget-boolean v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->expandedChanged:Z

    .line 1468
    if-nez v1, :cond_42

    .line 1470
    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->selectedBubbleKey:Ljava/lang/String;

    .line 1472
    if-nez v1, :cond_42

    .line 1474
    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->addedBubble:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    .line 1476
    if-nez v1, :cond_42

    .line 1478
    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->updatedBubble:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    .line 1480
    if-nez v1, :cond_42

    .line 1482
    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->removedBubbles:Ljava/util/List;

    .line 1484
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 1486
    move-result v1

    .line 1489
    if-eqz v1, :cond_42

    .line 1490
    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->bubbleKeysInOrder:Ljava/util/List;

    .line 1492
    check-cast v1, Ljava/util/ArrayList;

    .line 1494
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1496
    move-result v1

    .line 1499
    if-eqz v1, :cond_42

    .line 1500
    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->suppressedBubbleKey:Ljava/lang/String;

    .line 1502
    if-nez v1, :cond_42

    .line 1504
    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->unsupressedBubbleKey:Ljava/lang/String;

    .line 1506
    if-nez v1, :cond_42

    .line 1508
    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->currentBubbleList:Ljava/util/List;

    .line 1510
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 1512
    move-result v1

    .line 1515
    if-nez v1, :cond_41

    .line 1516
    goto :goto_21

    .line 1518
    :cond_41
    move v6, v3

    .line 1519
    :cond_42
    :goto_21
    if-eqz v6, :cond_43

    .line 1520
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 1522
    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 1524
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$7;

    .line 1526
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$7;->onBubbleStateChange(Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;)V

    .line 1528
    :cond_43
    return-void

    .line 1531
    :catchall_1
    move-exception v0

    .line 1532
    monitor-exit v2

    .line 1533
    throw v0

    .line 1534
    :catchall_2
    move-exception v0

    .line 1535
    monitor-exit v8

    .line 1536
    throw v0

    .line 1537
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1538
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 1544
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 1550
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    .line 1556
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
    .line 1562
.end method

.method public final expansionChanged(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setExpanded(Z)V

    .line 16
    :cond_0
    return-void

    .line 19
    :goto_0
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 20
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 22
    if-eqz v0, :cond_4

    .line 24
    if-nez p1, :cond_3

    .line 26
    const/4 p0, 0x0

    .line 28
    iput-boolean p0, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mIsExpanded:Z

    .line 29
    iget-object p1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 31
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mAnimationHelper:Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;

    .line 33
    new-instance v2, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;

    .line 35
    invoke-direct {v2, v0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V

    .line 37
    iput-boolean p0, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mIsExpanded:Z

    .line 40
    iget-object p1, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 42
    if-eqz p1, :cond_2

    .line 44
    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getBubbleBarExpandedView()Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 46
    move-result-object p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    iget-object p1, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 53
    const/high16 v3, 0x3f800000    # 1.0f

    .line 55
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleX(F)V

    .line 57
    invoke-virtual {p1, v3}, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->setScaleY(F)V

    .line 60
    sget-object v3, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 63
    invoke-static {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 65
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 69
    invoke-static {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 72
    move-result-object p1

    .line 75
    sget-object v3, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    .line 76
    const v4, 0x43bb7fff    # 374.99997f

    .line 78
    const/4 v5, 0x0

    .line 81
    iget-object v6, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 82
    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 84
    sget-object v3, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    .line 87
    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 89
    new-instance v3, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda0;

    .line 92
    const/4 v4, 0x1

    .line 94
    invoke-direct {v3, v1, v4}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;I)V

    .line 95
    iget-object v5, p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v3, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda1;

    .line 103
    invoke-direct {v3, v1, v2, v4}, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;Ljava/lang/Object;I)V

    .line 105
    filled-new-array {v3}, [Ljava/lang/Runnable;

    .line 108
    move-result-object v2

    .line 111
    invoke-virtual {p1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->withEndActions([Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 115
    iget-object p1, v1, Lcom/android/wm/shell/bubbles/bar/BubbleBarAnimationHelper;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 118
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 120
    goto :goto_2

    .line 123
    :cond_2
    :goto_1
    const-string p1, "BubbleBarAnimationHelper"

    .line 124
    const-string v1, "Trying to animate collapse without a bubble"

    .line 126
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_2
    iget-object p1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mBubbleController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 131
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$4;

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;

    .line 138
    iget-object v2, p1, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysUiState:Lcom/android/systemui/model/SysUiState;

    .line 140
    invoke-direct {v1, p1, v2, p0, p0}, Lcom/android/systemui/wmshell/BubblesManager$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/BubblesManager$4;Lcom/android/systemui/model/SysUiState;ZI)V

    .line 142
    iget-object p1, p1, Lcom/android/systemui/wmshell/BubblesManager$4;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    .line 145
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 147
    const/4 p1, 0x0

    .line 150
    iput-object p1, v0, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->mExpandedView:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    .line 151
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showScrim(Z)V

    .line 153
    goto :goto_3

    .line 156
    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 157
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 159
    if-eqz p0, :cond_4

    .line 161
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showExpandedView(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 163
    :cond_4
    :goto_3
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 168
.end method

.method public final onBubbleStateChange(Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-class v1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 13
    const-string/jumbo v1, "update"

    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 22
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->mListener:Landroid/os/IInterface;

    .line 28
    const-string p1, "SingleInstanceRemoteListener"

    .line 30
    if-nez p0, :cond_0

    .line 32
    const-string p0, "Failed remote call on null listener"

    .line 34
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    :try_start_0
    check-cast p0, Lcom/android/wm/shell/bubbles/IBubblesListener;

    .line 40
    check-cast p0, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;

    .line 42
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 44
    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 46
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :try_start_1
    const-string v2, "com.android.wm.shell.bubbles.IBubblesListener"

    .line 50
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 52
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v1, v0, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 56
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/IBubblesListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 59
    const/4 v0, 0x0

    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-interface {p0, v2, v1, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 66
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 71
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    :catch_0
    move-exception p0

    .line 75
    const-string v0, "Failed remote call"

    .line 76
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :goto_0
    return-void
    .line 81
.end method

.method public final suppressionChanged(Lcom/android/wm/shell/bubbles/Bubble;Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Ljava/lang/Object;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 12
    if-eqz p0, :cond_3

    .line 14
    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getBubbleIndex(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)I

    .line 18
    move-result p1

    .line 21
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 22
    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->removeViewAt(I)V

    .line 24
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    iget-object p2, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 31
    if-nez p2, :cond_1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 36
    move-result-object p2

    .line 39
    if-eqz p2, :cond_2

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    .line 42
    const-string p2, "Bubble is already added to parent. Can\'t unsuppress: "

    .line 44
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 55
    const-string p1, "Bubbles"

    .line 56
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    goto :goto_0

    .line 61
    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 62
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    .line 64
    move-result-object p2

    .line 67
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 68
    move-result p2

    .line 71
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 72
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/Bubble;->mIconView:Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 74
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 78
    iget v2, v2, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    .line 80
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 82
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBubbleShadows(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->requestUpdate()V

    .line 92
    :cond_3
    :goto_0
    return-void

    .line 95
    :goto_1
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController;

    .line 96
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayerView:Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    .line 98
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 102
.end method
