.class public final Lcom/android/systemui/fsgesture/GestureStubView$H;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/GestureStubView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x8

    .line 9
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    const-string v6, "GestureStubView"

    .line 13
    packed-switch p1, :pswitch_data_0

    .line 15
    goto/16 :goto_4

    .line 18
    :pswitch_0
    iget-boolean p1, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    .line 20
    if-nez p1, :cond_0

    .line 22
    return-void

    .line 24
    :cond_0
    iget p1, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX1:F

    .line 25
    iget v1, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 27
    sub-float v2, v1, p1

    .line 29
    const/high16 v3, 0x40800000    # 4.0f

    .line 31
    div-float/2addr v2, v3

    .line 33
    add-float/2addr v2, p1

    .line 34
    iput v2, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX1:F

    .line 35
    iget p1, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX2:F

    .line 37
    sub-float/2addr v1, p1

    .line 39
    const/high16 v2, 0x40000000    # 2.0f

    .line 40
    div-float/2addr v1, v2

    .line 42
    add-float/2addr v1, p1

    .line 43
    iput v1, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mAssistX2:F

    .line 44
    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureStubView;->-$$Nest$misSwipeRightInDirection(Lcom/android/systemui/fsgesture/GestureStubView;)Z

    .line 46
    move-result p1

    .line 49
    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 50
    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 52
    const v2, 0x3ea8f5c3    # 0.33f

    .line 54
    if-nez p1, :cond_2

    .line 57
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 59
    invoke-static {p1}, Lcom/android/systemui/fsgesture/GestureStubView;->-$$Nest$misInSpeedLimit(Lcom/android/systemui/fsgesture/GestureStubView;)Z

    .line 61
    move-result p1

    .line 64
    if-eqz p1, :cond_5

    .line 65
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 67
    iget v3, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 69
    iget p1, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mDownX:F

    .line 71
    sub-float/2addr v3, p1

    .line 73
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 74
    move-result p1

    .line 77
    iget-object v3, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 78
    iget v4, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 80
    int-to-float v4, v4

    .line 82
    mul-float/2addr v4, v2

    .line 83
    cmpg-float p1, p1, v4

    .line 84
    if-gez p1, :cond_1

    .line 86
    iget-object p1, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 88
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    .line 90
    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 94
    invoke-virtual {p1, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    .line 96
    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 100
    invoke-static {p1}, Lcom/android/systemui/fsgesture/GestureStubView;->-$$Nest$misInSpeedLimit(Lcom/android/systemui/fsgesture/GestureStubView;)Z

    .line 102
    move-result p1

    .line 105
    if-nez p1, :cond_3

    .line 106
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 108
    iget-object p1, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 110
    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->getCurrentState()Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 112
    move-result-object p1

    .line 115
    if-eq p1, v1, :cond_5

    .line 116
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 118
    iget-object p1, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 120
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    .line 122
    goto :goto_0

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 126
    iget v3, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 128
    iget p1, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mDownX:F

    .line 130
    sub-float/2addr v3, p1

    .line 132
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 133
    move-result p1

    .line 136
    iget-object v3, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 137
    iget v4, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mScreenWidth:I

    .line 139
    int-to-float v4, v4

    .line 141
    mul-float/2addr v4, v2

    .line 142
    cmpl-float p1, p1, v4

    .line 143
    if-lez p1, :cond_4

    .line 145
    iget-object p1, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 147
    invoke-virtual {p1, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    .line 149
    goto :goto_0

    .line 152
    :cond_4
    iget-object p1, v3, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 153
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    .line 155
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 158
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 160
    const/16 p1, 0x105

    .line 162
    const-wide/16 v0, 0x11

    .line 164
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    goto/16 :goto_4

    .line 169
    :pswitch_1
    iget p1, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrAction:I

    .line 171
    const/4 v1, 0x2

    .line 173
    if-eq p1, v1, :cond_7

    .line 174
    if-nez p1, :cond_6

    .line 176
    goto :goto_1

    .line 178
    :cond_6
    invoke-static {v0, v5}, Lcom/android/systemui/fsgesture/GestureStubView;->-$$Nest$minjectMotionEvent(Lcom/android/systemui/fsgesture/GestureStubView;I)V

    .line 179
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 182
    invoke-static {p1, v4}, Lcom/android/systemui/fsgesture/GestureStubView;->-$$Nest$minjectMotionEvent(Lcom/android/systemui/fsgesture/GestureStubView;I)V

    .line 184
    goto :goto_2

    .line 187
    :cond_7
    :goto_1
    invoke-static {v0, v5}, Lcom/android/systemui/fsgesture/GestureStubView;->-$$Nest$minjectMotionEvent(Lcom/android/systemui/fsgesture/GestureStubView;I)V

    .line 188
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 191
    iget-object p1, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 193
    if-eqz p1, :cond_e

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 197
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 200
    iput-object v2, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 202
    goto/16 :goto_4

    .line 204
    :pswitch_2
    iput-boolean v4, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeepHidden:Z

    .line 206
    if-eqz v1, :cond_8

    .line 208
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 210
    iput-object v2, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 213
    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 215
    const-string p0, "hideGestureStub"

    .line 218
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    goto/16 :goto_4

    .line 223
    :pswitch_3
    iget-object p1, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 225
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 230
    const-string p1, "MSG_RESET_ANIMATING_STATUS"

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/systemui/fsgesture/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    .line 234
    const-string/jumbo p0, "reset animating status"

    .line 237
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    goto/16 :goto_4

    .line 243
    :pswitch_4
    iput-boolean v5, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mPendingResetStatus:Z

    .line 245
    iget-boolean p0, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mKeepHidden:Z

    .line 247
    if-nez p0, :cond_9

    .line 249
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 251
    :cond_9
    const-string p0, "handleMessage MSG_RESET_GESTURE_STUB_TOUCHABLE"

    .line 254
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    goto/16 :goto_4

    .line 259
    :pswitch_5
    if-eqz v1, :cond_b

    .line 261
    iget-boolean p1, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    .line 263
    if-eqz p1, :cond_a

    .line 265
    goto :goto_3

    .line 267
    :cond_a
    iget p1, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrX:F

    .line 268
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    .line 270
    move-result v0

    .line 273
    sub-float/2addr p1, v0

    .line 274
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 275
    iget v0, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mCurrY:F

    .line 277
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    .line 279
    move-result v2

    .line 282
    sub-float/2addr v0, v2

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    .line 284
    const-string v3, "handleMessage MSG_CHECK_GESTURE_STUB_TOUCHABLE diffX: "

    .line 286
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 291
    const-string v3, " diffY: "

    .line 294
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 299
    const-string v3, " mDownX: "

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    .line 307
    move-result v3

    .line 310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 311
    const-string v3, " mDownY: "

    .line 314
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    .line 319
    move-result v1

    .line 322
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v1

    .line 329
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 333
    move-result p1

    .line 336
    const/high16 v1, 0x41f00000    # 30.0f

    .line 337
    cmpg-float p1, p1, v1

    .line 339
    if-gtz p1, :cond_e

    .line 341
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 343
    move-result p1

    .line 346
    cmpg-float p1, p1, v1

    .line 347
    if-gtz p1, :cond_e

    .line 349
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 351
    iget-object p1, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 353
    const/16 v0, 0xff

    .line 355
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 360
    iget-object p1, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 362
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 364
    move-result-object p1

    .line 367
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 368
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 370
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 372
    goto :goto_4

    .line 375
    :cond_b
    :goto_3
    return-void

    .line 376
    :pswitch_6
    iget-boolean p1, v0, Lcom/android/systemui/fsgesture/GestureStubView;->mIsGestureStarted:Z

    .line 377
    if-eqz p1, :cond_c

    .line 379
    return-void

    .line 381
    :cond_c
    const-string p1, "handleMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    .line 382
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 387
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 389
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 392
    iget-object p1, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mGesturesBackController:Lcom/android/systemui/fsgesture/GesturesBackController;

    .line 394
    if-eqz p1, :cond_d

    .line 396
    iput v4, p1, Lcom/android/systemui/fsgesture/GesturesBackController;->mSwipeStatus:I

    .line 398
    :cond_d
    const/16 p1, 0x104

    .line 400
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 402
    move-result-object p1

    .line 405
    const-wide/16 v0, 0x14

    .line 406
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 408
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$H;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 411
    iput-boolean v4, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mPendingResetStatus:Z

    .line 413
    const/16 p1, 0x101

    .line 415
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 417
    move-result-object p1

    .line 420
    const-wide/16 v0, 0x1f4

    .line 421
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 423
    :cond_e
    :goto_4
    return-void

    .line 426
    nop

    .line 427
    :pswitch_data_0
    .packed-switch 0xff
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 428
.end method
