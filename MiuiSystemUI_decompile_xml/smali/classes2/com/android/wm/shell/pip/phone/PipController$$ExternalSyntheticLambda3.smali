.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/phone/PipController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/pip/phone/PipController;

    .line 2
    check-cast p1, Ljava/io/PrintWriter;

    .line 4
    check-cast p2, Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string p2, "PipController"

    .line 11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string v0, "  PhonePipMenuController"

    .line 21
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "    mMenuState="

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget v2, p2, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mMenuState:I

    .line 33
    const-string v3, "    mPipMenuView="

    .line 35
    invoke-static {v0, v2, p1, v3}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    move-result-object v0

    .line 40
    iget-object v2, p2, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    const-string v2, "    mListeners="

    .line 55
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object p2, p2, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mListeners:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 62
    move-result p2

    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    const-string v0, "  PipTouchHandler"

    .line 81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    iget v1, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMenuState:I

    .line 91
    const-string v2, "    mIsImeShowing="

    .line 93
    invoke-static {v0, v1, p1, v2}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object v0

    .line 98
    iget-boolean v1, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 99
    const-string v3, "    mImeHeight="

    .line 101
    invoke-static {v0, v1, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    move-result-object v0

    .line 106
    iget v1, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 107
    const-string v4, "    mIsShelfShowing="

    .line 109
    invoke-static {v0, v1, p1, v4}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-result-object v0

    .line 114
    iget-boolean v1, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    .line 115
    const-string v5, "    mShelfHeight="

    .line 117
    invoke-static {v0, v1, p1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    move-result-object v0

    .line 122
    iget v1, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mShelfHeight:I

    .line 123
    const-string v6, "    mSavedSnapFraction="

    .line 125
    invoke-static {v0, v1, p1, v6}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    move-result-object v0

    .line 130
    iget v1, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 131
    const-string v6, "    mMovementBoundsExtraOffsets="

    .line 133
    invoke-static {v0, v1, p1, v6}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    move-result-object v0

    .line 138
    iget v1, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementBoundsExtraOffsets:I

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    iget-object v0, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 151
    const-string v1, "    "

    .line 153
    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 155
    iget-object v0, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    const-string v6, "    PipTouchState"

    .line 163
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    .line 168
    const-string v7, "      mAllowTouches="

    .line 170
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    iget-boolean v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    .line 175
    const-string v8, "      mAllowInputEvents="

    .line 177
    invoke-static {v6, v7, p1, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    move-result-object v6

    .line 182
    iget-boolean v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowInputEvents:Z

    .line 183
    const-string v8, "      mActivePointerId="

    .line 185
    invoke-static {v6, v7, p1, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    move-result-object v6

    .line 190
    iget v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mActivePointerId:I

    .line 191
    const-string v8, "      mLastTouchDisplayId="

    .line 193
    invoke-static {v6, v7, p1, v8}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    move-result-object v6

    .line 198
    iget v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mLastTouchDisplayId:I

    .line 199
    const-string v8, "      mDownTouch="

    .line 201
    invoke-static {v6, v7, p1, v8}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    move-result-object v6

    .line 206
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mDownTouch:Landroid/graphics/PointF;

    .line 207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object v6

    .line 215
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    .line 219
    const-string v7, "      mDownDelta="

    .line 221
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mDownDelta:Landroid/graphics/PointF;

    .line 226
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v6

    .line 234
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v6, Ljava/lang/StringBuilder;

    .line 238
    const-string v7, "      mLastTouch="

    .line 240
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mLastTouch:Landroid/graphics/PointF;

    .line 245
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v6

    .line 253
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    new-instance v6, Ljava/lang/StringBuilder;

    .line 257
    const-string v7, "      mLastDelta="

    .line 259
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mLastDelta:Landroid/graphics/PointF;

    .line 264
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object v6

    .line 272
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    .line 276
    const-string v7, "      mVelocity="

    .line 278
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mVelocity:Landroid/graphics/PointF;

    .line 283
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object v6

    .line 291
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    .line 295
    const-string v7, "      mIsUserInteracting="

    .line 297
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    iget-boolean v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    .line 302
    const-string v8, "      mIsDragging="

    .line 304
    invoke-static {v6, v7, p1, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    move-result-object v6

    .line 309
    iget-boolean v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsDragging:Z

    .line 310
    const-string v8, "      mStartedDragging="

    .line 312
    invoke-static {v6, v7, p1, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    move-result-object v6

    .line 317
    iget-boolean v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mStartedDragging:Z

    .line 318
    const-string v8, "      mAllowDraggingOffscreen="

    .line 320
    invoke-static {v6, v7, p1, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    move-result-object v6

    .line 325
    iget-boolean v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowDraggingOffscreen:Z

    .line 326
    invoke-static {v6, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 328
    iget-object p2, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    .line 331
    if-eqz p2, :cond_0

    .line 333
    const-string v0, "    PipResizeGestureHandler"

    .line 335
    const-string v6, "      mAllowGesture="

    .line 337
    invoke-static {p1, v0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    move-result-object v0

    .line 342
    iget-boolean v6, p2, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mAllowGesture:Z

    .line 343
    const-string v7, "      mIsAttached="

    .line 345
    invoke-static {v0, v6, p1, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    move-result-object v0

    .line 350
    iget-boolean v6, p2, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsAttached:Z

    .line 351
    const-string v7, "      mIsEnabled="

    .line 353
    invoke-static {v0, v6, p1, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    move-result-object v0

    .line 358
    iget-boolean v6, p2, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mIsEnabled:Z

    .line 359
    const-string v7, "      mEnablePinchResize="

    .line 361
    invoke-static {v0, v6, p1, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    move-result-object v0

    .line 366
    iget-boolean v6, p2, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mEnablePinchResize:Z

    .line 367
    const-string v7, "      mThresholdCrossed="

    .line 369
    invoke-static {v0, v6, p1, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    move-result-object v0

    .line 374
    iget-boolean v6, p2, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mThresholdCrossed:Z

    .line 375
    const-string v7, "      mOhmOffset="

    .line 377
    invoke-static {v0, v6, p1, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    move-result-object v0

    .line 382
    iget p2, p2, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mOhmOffset:I

    .line 383
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    move-result-object p2

    .line 391
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 395
    const-string v0, "  "

    .line 397
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 399
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 402
    invoke-virtual {p2, p1, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 404
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 407
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    const-string v0, "  PipBoundsState"

    .line 412
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    .line 417
    const-string v6, "    mBounds="

    .line 419
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    iget-object v6, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mBounds:Landroid/graphics/Rect;

    .line 424
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    move-result-object v0

    .line 432
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    .line 436
    const-string v6, "    mNormalBounds="

    .line 438
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    iget-object v6, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    .line 443
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    move-result-object v0

    .line 451
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    .line 455
    const-string v6, "    mExpandedBounds="

    .line 457
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    iget-object v6, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedBounds:Landroid/graphics/Rect;

    .line 462
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    move-result-object v0

    .line 470
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    .line 474
    const-string v6, "    mMovementBounds="

    .line 476
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    iget-object v6, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    .line 481
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    move-result-object v0

    .line 489
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    .line 493
    const-string v6, "    mNormalMovementBounds="

    .line 495
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    iget-object v6, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 500
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 505
    move-result-object v0

    .line 508
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    .line 512
    const-string v6, "    mExpandedMovementBounds="

    .line 514
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    iget-object v6, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 519
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    move-result-object v0

    .line 527
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    .line 531
    const-string v6, "    mLastPipComponentName="

    .line 533
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    iget-object v6, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mLastPipComponentName:Landroid/content/ComponentName;

    .line 538
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    move-result-object v0

    .line 546
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    .line 550
    const-string v6, "    mAspectRatio="

    .line 552
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    iget v6, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mAspectRatio:F

    .line 557
    const-string v7, "    mStashedState="

    .line 559
    invoke-static {v0, v6, p1, v7}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    move-result-object v0

    .line 564
    iget v6, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mStashedState:I

    .line 565
    const-string v7, "    mStashOffset="

    .line 567
    invoke-static {v0, v6, p1, v7}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    move-result-object v0

    .line 572
    iget v6, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mStashOffset:I

    .line 573
    invoke-static {v0, v6, p1, v2}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    move-result-object v0

    .line 578
    iget-boolean v2, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mIsImeShowing:Z

    .line 579
    invoke-static {v0, v2, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    move-result-object v0

    .line 584
    iget v2, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mImeHeight:I

    .line 585
    invoke-static {v0, v2, p1, v4}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    move-result-object v0

    .line 590
    iget-boolean v2, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mIsShelfShowing:Z

    .line 591
    invoke-static {v0, v2, p1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    move-result-object v0

    .line 596
    iget v2, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mShelfHeight:I

    .line 597
    const-string v3, "    mHasUserMovedPip="

    .line 599
    invoke-static {v0, v2, p1, v3}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    move-result-object v0

    .line 604
    iget-boolean v2, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserMovedPip:Z

    .line 605
    const-string v3, "    mHasUserResizedPip="

    .line 607
    invoke-static {v0, v2, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    move-result-object v0

    .line 612
    iget-boolean v2, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mHasUserResizedPip:Z

    .line 613
    invoke-static {v0, v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 615
    iget-object v0, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mPipReentryState:Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;

    .line 618
    if-nez v0, :cond_1

    .line 620
    const-string v0, "    mPipReentryState=null"

    .line 622
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    goto :goto_0

    .line 627
    :cond_1
    const-string v2, "    PipBoundsState$PipReentryState"

    .line 628
    const-string v3, "      mSize="

    .line 630
    invoke-static {p1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    move-result-object v2

    .line 635
    iget-object v3, v0, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;->mSize:Landroid/util/Size;

    .line 636
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    move-result-object v2

    .line 644
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    .line 648
    const-string v3, "      mSnapFraction="

    .line 650
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    iget v0, v0, Lcom/android/wm/shell/pip/PipBoundsState$PipReentryState;->mSnapFraction:F

    .line 655
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 660
    move-result-object v0

    .line 663
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    :goto_0
    iget-object v0, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mLauncherState:Lcom/android/wm/shell/pip/PipBoundsState$LauncherState;

    .line 667
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 669
    const-class v2, Lcom/android/wm/shell/pip/PipBoundsState$LauncherState;

    .line 672
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 674
    move-result-object v2

    .line 677
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 678
    move-result-object v2

    .line 681
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    .line 685
    const-string v3, "        getAppIconSizePx="

    .line 687
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    iget v0, v0, Lcom/android/wm/shell/pip/PipBoundsState$LauncherState;->mAppIconSizePx:I

    .line 692
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 697
    move-result-object v0

    .line 700
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 701
    iget-object p2, p2, Lcom/android/wm/shell/pip/PipBoundsState;->mMotionBoundsState:Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 704
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 706
    const-class v0, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;

    .line 709
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 711
    move-result-object v0

    .line 714
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 715
    move-result-object v0

    .line 718
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    .line 722
    const-string v1, "      mBoundsInMotion="

    .line 724
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 726
    iget-object v1, p2, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mBoundsInMotion:Landroid/graphics/Rect;

    .line 729
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 734
    move-result-object v0

    .line 737
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    .line 741
    const-string v1, "      mAnimatingToBounds="

    .line 743
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 745
    iget-object p2, p2, Lcom/android/wm/shell/pip/PipBoundsState$MotionBoundsState;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 748
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    move-result-object p2

    .line 756
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

    .line 760
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 762
    const-string v0, "  PipInputConsumer"

    .line 765
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    .line 770
    const-string v1, "    registered="

    .line 772
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    iget-object p2, p2, Lcom/android/wm/shell/pip/phone/PipInputConsumer;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipInputConsumer$InputEventReceiver;

    .line 777
    if-eqz p2, :cond_2

    .line 779
    const/4 p2, 0x1

    .line 781
    goto :goto_1

    .line 782
    :cond_2
    const/4 p2, 0x0

    .line 783
    :goto_1
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 784
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipSizeSpecHandler:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 787
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 789
    const-string v0, "  PipSizeSpecHandler"

    .line 792
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    .line 797
    const-string v1, "    mSizeSpecSourceImpl="

    .line 799
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    iget-object v1, p2, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mSizeSpecSourceImpl:Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;

    .line 804
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 809
    move-result-object v0

    .line 812
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    .line 816
    const-string v1, "    mOverrideMinSize="

    .line 818
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 820
    iget-object v1, p2, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mOverrideMinSize:Landroid/util/Size;

    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 828
    move-result-object v0

    .line 831
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    .line 835
    const-string v1, "    mScreenEdgeInsets="

    .line 837
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 839
    iget-object p2, p2, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;->mScreenEdgeInsets:Landroid/graphics/Point;

    .line 842
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 847
    move-result-object p2

    .line 850
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 854
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 856
    const-string p2, "  PipDisplayLayoutState"

    .line 859
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    new-instance p2, Ljava/lang/StringBuilder;

    .line 864
    const-string v0, "    mDisplayId="

    .line 866
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 868
    iget v0, p0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->mDisplayId:I

    .line 871
    const-string v1, "    getDisplayBounds="

    .line 873
    invoke-static {p2, v0, p1, v1}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    move-result-object p2

    .line 878
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    .line 879
    move-result-object p0

    .line 882
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 886
    move-result-object p0

    .line 889
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    return-void
    .line 893
.end method
