.class public Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public mLastTouchDownTime:J

.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mLastTouchDownTime:J

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public disallowInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public handleMiuiTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 6
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 8
    const-string v3, "NPVC onInterceptTouchEvent"

    .line 10
    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 12
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 15
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 17
    iget-object v2, v2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 19
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->disallowPanelTouches()Z

    .line 21
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 28
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 30
    const-string v2, "NPVC not intercepting touch, panel touches disallowed"

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 34
    return v3

    .line 37
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 38
    invoke-static {v2, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$minitDownStates(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 40
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 43
    iget-object v4, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 45
    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 47
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 49
    const/4 v5, 0x1

    .line 51
    if-eqz v4, :cond_1

    .line 52
    iget-object v0, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 54
    const-string v1, "NotificationPanelViewController MotionEvent intercepted: bouncer is showing"

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 58
    return v5

    .line 61
    :cond_1
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 62
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    .line 64
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 70
    iget-object v4, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 72
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 74
    if-eqz v4, :cond_2

    .line 76
    move v4, v5

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    move v4, v3

    .line 80
    :goto_0
    if-nez v4, :cond_3

    .line 81
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 83
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 85
    move-result v2

    .line 88
    if-eqz v2, :cond_3

    .line 89
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 91
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 93
    const-string v2, "panel_open"

    .line 95
    invoke-virtual {v1, v2, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 97
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 100
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 102
    const-string v2, "panel_open_peek"

    .line 104
    invoke-virtual {v1, v2, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 106
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 109
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 111
    const-string v1, "NotificationPanelViewController MotionEvent intercepted: HeadsUpTouchHelper"

    .line 113
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 115
    return v5

    .line 118
    :cond_3
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 119
    iget-object v4, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 121
    iget v6, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    .line 123
    iget v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    .line 125
    const/4 v7, 0x0

    .line 127
    invoke-virtual {v4, v6, v2, v7}, Lcom/android/systemui/shade/QuickSettingsController;->shouldQuickSettingsIntercept(FFF)Z

    .line 128
    move-result v2

    .line 131
    if-nez v2, :cond_4

    .line 132
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 134
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 136
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 138
    move-result v2

    .line 141
    if-eqz v2, :cond_4

    .line 142
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 144
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 146
    const-string v1, "NotificationPanelViewController MotionEvent intercepted: PulseExpansionHandler"

    .line 148
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 150
    return v5

    .line 153
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->onMiuiIntercept(Landroid/view/MotionEvent;)Z

    .line 154
    move-result v2

    .line 157
    if-eqz v2, :cond_5

    .line 158
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 160
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 162
    const-string v1, "NotificationPanelViewController MotionEvent intercepted: MiuiIntercept"

    .line 164
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 166
    return v5

    .line 169
    :cond_5
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 170
    invoke-virtual {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 172
    move-result v2

    .line 175
    const/4 v4, 0x2

    .line 176
    const/4 v6, 0x3

    .line 177
    const/4 v8, 0x6

    .line 178
    const-string/jumbo v9, "systemui.shade"

    .line 179
    if-nez v2, :cond_14

    .line 182
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 184
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 186
    iget v11, v2, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 188
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 190
    move-result v11

    .line 193
    if-gez v11, :cond_6

    .line 194
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 196
    move-result v11

    .line 199
    iput v11, v2, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 200
    move v11, v3

    .line 202
    :cond_6
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    .line 203
    move-result v12

    .line 206
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    .line 207
    move-result v11

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 211
    move-result v13

    .line 214
    iget-object v14, v2, Lcom/android/systemui/shade/QuickSettingsController;->mPanelView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 215
    iget-object v15, v2, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 217
    iget-object v7, v2, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 219
    iget-object v10, v2, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 221
    if-eqz v13, :cond_f

    .line 223
    if-eq v13, v5, :cond_e

    .line 225
    if-eq v13, v4, :cond_9

    .line 227
    if-eq v13, v6, :cond_e

    .line 229
    if-eq v13, v8, :cond_7

    .line 231
    goto/16 :goto_4

    .line 233
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 235
    move-result v7

    .line 238
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 239
    move-result v7

    .line 242
    iget v10, v2, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 243
    if-ne v10, v7, :cond_13

    .line 245
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 247
    move-result v10

    .line 250
    if-eq v10, v7, :cond_8

    .line 251
    move v7, v3

    .line 253
    goto :goto_1

    .line 254
    :cond_8
    move v7, v5

    .line 255
    :goto_1
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 256
    move-result v10

    .line 259
    iput v10, v2, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 260
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    .line 262
    move-result v10

    .line 265
    iput v10, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 266
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    .line 268
    move-result v7

    .line 271
    iput v7, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 272
    goto/16 :goto_4

    .line 274
    :cond_9
    iget v13, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 276
    sub-float v13, v11, v13

    .line 278
    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 280
    iget-boolean v8, v2, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 283
    if-eqz v8, :cond_a

    .line 285
    iget v7, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 287
    add-float/2addr v13, v7

    .line 289
    invoke-virtual {v2, v13}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 290
    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 293
    goto/16 :goto_5

    .line 296
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 298
    move-result v8

    .line 301
    if-ne v8, v5, :cond_b

    .line 302
    iget v8, v2, Lcom/android/systemui/shade/QuickSettingsController;->mTouchSlop:I

    .line 304
    int-to-float v8, v8

    .line 306
    iget v6, v2, Lcom/android/systemui/shade/QuickSettingsController;->mSlopMultiplier:F

    .line 307
    mul-float/2addr v8, v6

    .line 309
    goto :goto_2

    .line 310
    :cond_b
    iget v6, v2, Lcom/android/systemui/shade/QuickSettingsController;->mTouchSlop:I

    .line 311
    int-to-float v8, v6

    .line 313
    :goto_2
    cmpl-float v6, v13, v8

    .line 314
    if-gtz v6, :cond_c

    .line 316
    neg-float v6, v8

    .line 318
    cmpg-float v6, v13, v6

    .line 319
    if-gez v6, :cond_d

    .line 321
    iget-boolean v6, v2, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 323
    if-eqz v6, :cond_d

    .line 325
    :cond_c
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 327
    move-result v6

    .line 330
    iget v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 331
    sub-float v4, v12, v4

    .line 333
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 335
    move-result v4

    .line 338
    cmpl-float v4, v6, v4

    .line 339
    if-lez v4, :cond_d

    .line 341
    iget v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 343
    iget v6, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 345
    invoke-virtual {v2, v4, v6, v13}, Lcom/android/systemui/shade/QuickSettingsController;->shouldQuickSettingsIntercept(FFF)Z

    .line 347
    move-result v4

    .line 350
    if-eqz v4, :cond_d

    .line 351
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 353
    move-result-object v4

    .line 356
    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 357
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    sget-object v4, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 363
    sget-object v6, Lcom/android/systemui/shade/ShadeLogger$onQsInterceptMoveQsTrackingEnabled$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$onQsInterceptMoveQsTrackingEnabled$2;

    .line 365
    iget-object v8, v10, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 367
    const/4 v10, 0x0

    .line 369
    invoke-virtual {v8, v9, v4, v6, v10}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 370
    move-result-object v4

    .line 373
    float-to-double v13, v13

    .line 374
    invoke-interface {v4, v13, v14}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 375
    invoke-virtual {v8, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 378
    iput-boolean v5, v2, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 381
    invoke-virtual {v2, v5, v3}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    .line 383
    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsController;->onExpansionStarted()V

    .line 386
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 389
    move-result-object v4

    .line 392
    check-cast v4, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 393
    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    .line 395
    iget v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 398
    iput v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 400
    iput v11, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 402
    iput v12, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 404
    iget-object v2, v15, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 406
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 408
    goto/16 :goto_5

    .line 411
    :cond_d
    iget v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 413
    iget-boolean v6, v2, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 415
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 417
    move-result-object v7

    .line 420
    check-cast v7, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 421
    invoke-virtual {v7}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing()Z

    .line 423
    move-result v7

    .line 426
    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 427
    move-result v2

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 431
    move-result-wide v14

    .line 434
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 435
    sget-object v12, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 438
    sget-object v5, Lcom/android/systemui/shade/ShadeLogger$logQsTrackingNotStarted$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logQsTrackingNotStarted$2;

    .line 440
    iget-object v10, v10, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 442
    const/4 v3, 0x0

    .line 444
    invoke-virtual {v10, v9, v12, v5, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 445
    move-result-object v5

    .line 448
    float-to-int v3, v4

    .line 449
    invoke-interface {v5, v3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 450
    float-to-int v3, v11

    .line 453
    invoke-interface {v5, v3}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 454
    float-to-long v3, v13

    .line 457
    invoke-interface {v5, v3, v4}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 458
    float-to-double v3, v8

    .line 461
    invoke-interface {v5, v3, v4}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 462
    invoke-interface {v5, v6}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 465
    invoke-interface {v5, v7}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 468
    invoke-interface {v5, v2}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 471
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 474
    move-result-object v2

    .line 477
    invoke-interface {v5, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v10, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 481
    goto/16 :goto_4

    .line 484
    :cond_e
    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 486
    const-string v3, "onQsIntercept: up action, QS tracking disabled"

    .line 489
    invoke-virtual {v10, v1, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 491
    const/4 v3, 0x0

    .line 494
    iput-boolean v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 495
    goto :goto_4

    .line 497
    :cond_f
    iput v11, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 498
    iput v12, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 500
    iget-object v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 502
    if-eqz v3, :cond_10

    .line 504
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 506
    :cond_10
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 509
    move-result-object v3

    .line 512
    iput-object v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 513
    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 515
    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 518
    move-result v3

    .line 521
    iget-boolean v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 522
    if-nez v4, :cond_11

    .line 524
    float-to-double v3, v3

    .line 526
    const-wide/16 v5, 0x0

    .line 527
    cmpl-double v5, v3, v5

    .line 529
    if-lez v5, :cond_11

    .line 531
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 533
    cmpg-double v3, v3, v5

    .line 535
    if-gez v3, :cond_11

    .line 537
    const-string v2, "onQsIntercept: down action, QS partially expanded/collapsed"

    .line 539
    invoke-virtual {v10, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 541
    const/4 v5, 0x1

    .line 544
    goto :goto_5

    .line 545
    :cond_11
    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 546
    move-result-object v3

    .line 549
    check-cast v3, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 550
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing()Z

    .line 552
    move-result v3

    .line 555
    if-eqz v3, :cond_12

    .line 556
    iget v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 558
    iget v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 560
    const/4 v5, 0x0

    .line 562
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/shade/QuickSettingsController;->shouldQuickSettingsIntercept(FFF)Z

    .line 563
    move-result v3

    .line 566
    if-eqz v3, :cond_12

    .line 567
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 569
    move-result-object v3

    .line 572
    const/4 v4, 0x1

    .line 573
    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 574
    goto :goto_3

    .line 577
    :cond_12
    const/4 v4, 0x1

    .line 578
    :goto_3
    iget-object v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 579
    if-eqz v3, :cond_13

    .line 581
    iget v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 583
    iput v3, v2, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 585
    const-string v3, "onQsIntercept: down action, QS tracking enabled"

    .line 587
    invoke-virtual {v10, v1, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 589
    iput-boolean v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 592
    const/4 v3, 0x0

    .line 594
    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    .line 595
    iget-object v2, v15, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 598
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    .line 600
    :cond_13
    :goto_4
    const/4 v5, 0x0

    .line 603
    :goto_5
    if-eqz v5, :cond_14

    .line 604
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 606
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 611
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 613
    const-string v1, "NotificationPanelViewController MotionEvent intercepted: QsIntercept"

    .line 615
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x1

    .line 620
    return v0

    .line 621
    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->disallowInterceptTouch(Landroid/view/MotionEvent;)Z

    .line 622
    move-result v2

    .line 625
    if-eqz v2, :cond_15

    .line 626
    const/4 v2, 0x0

    .line 628
    return v2

    .line 629
    :cond_15
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 630
    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 632
    iget-boolean v4, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsDragEnabled:Z

    .line 634
    if-nez v3, :cond_2a

    .line 636
    if-eqz v4, :cond_2a

    .line 638
    iget-boolean v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    .line 640
    if-eqz v5, :cond_16

    .line 642
    goto/16 :goto_e

    .line 644
    :cond_16
    iget-boolean v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    .line 646
    if-eqz v2, :cond_17

    .line 648
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 650
    move-result v2

    .line 653
    if-eqz v2, :cond_17

    .line 654
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 656
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 658
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 660
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 662
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 664
    const-string v3, "NPVC MotionEvent not intercepted: non-down action, motion was aborted"

    .line 666
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    .line 668
    const/4 v2, 0x0

    .line 671
    return v2

    .line 672
    :cond_17
    const/4 v2, 0x0

    .line 673
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 674
    iget v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 676
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 678
    move-result v3

    .line 681
    if-gez v3, :cond_18

    .line 682
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 684
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 686
    move-result v4

    .line 689
    iput v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 690
    const/4 v3, 0x0

    .line 692
    :cond_18
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 693
    move-result v2

    .line 696
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 697
    move-result v3

    .line 700
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 701
    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->canCollapsePanelOnTouch()Z

    .line 703
    move-result v4

    .line 706
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 707
    move-result v5

    .line 710
    if-eqz v5, :cond_24

    .line 711
    const/4 v6, 0x1

    .line 713
    if-eq v5, v6, :cond_22

    .line 714
    const/4 v6, 0x2

    .line 716
    if-eq v5, v6, :cond_1c

    .line 717
    const/4 v6, 0x3

    .line 719
    if-eq v5, v6, :cond_22

    .line 720
    const/4 v2, 0x5

    .line 722
    if-eq v5, v2, :cond_1b

    .line 723
    const/4 v2, 0x6

    .line 725
    if-eq v5, v2, :cond_19

    .line 726
    goto/16 :goto_9

    .line 728
    :cond_19
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 730
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 732
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 735
    move-result v2

    .line 738
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 739
    move-result v2

    .line 742
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 743
    iget v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 745
    if-ne v3, v2, :cond_23

    .line 747
    const/4 v3, 0x0

    .line 749
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 750
    move-result v4

    .line 753
    if-eq v4, v2, :cond_1a

    .line 754
    const/4 v5, 0x0

    .line 756
    goto :goto_6

    .line 757
    :cond_1a
    const/4 v5, 0x1

    .line 758
    :goto_6
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 759
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 761
    move-result v3

    .line 764
    iput v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 765
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 767
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 769
    move-result v3

    .line 772
    iput v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    .line 773
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 775
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    .line 777
    move-result v1

    .line 780
    iput v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 781
    goto/16 :goto_9

    .line 783
    :cond_1b
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 785
    iget-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 787
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 789
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 791
    iget v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 793
    const-string v4, "onInterceptTouchEvent: pointer down action"

    .line 795
    invoke-virtual {v3, v1, v2, v4}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    .line 797
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 800
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 802
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 805
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 807
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 809
    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 811
    const/4 v2, 0x1

    .line 813
    if-ne v1, v2, :cond_23

    .line 814
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    .line 816
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 818
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 820
    goto/16 :goto_9

    .line 823
    :cond_1c
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 825
    iget v6, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 827
    sub-float v6, v3, v6

    .line 829
    invoke-static {v5, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 831
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 834
    iget-boolean v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    .line 836
    if-eqz v7, :cond_1d

    .line 838
    iget-boolean v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    .line 840
    if-nez v7, :cond_1d

    .line 842
    const/4 v7, 0x1

    .line 844
    goto :goto_7

    .line 845
    :cond_1d
    const/4 v7, 0x0

    .line 846
    :goto_7
    if-nez v4, :cond_1e

    .line 847
    iget-boolean v4, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchStartedInEmptyArea:Z

    .line 849
    if-nez v4, :cond_1e

    .line 851
    iget-boolean v4, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    .line 853
    if-nez v4, :cond_1e

    .line 855
    if-eqz v7, :cond_23

    .line 857
    :cond_1e
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 859
    move-result v4

    .line 862
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 863
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 865
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 868
    move-result v1

    .line 871
    const/4 v8, 0x1

    .line 872
    if-ne v1, v8, :cond_1f

    .line 873
    iget v1, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    .line 875
    int-to-float v1, v1

    .line 877
    iget v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mSlopMultiplier:F

    .line 878
    mul-float/2addr v1, v5

    .line 880
    goto :goto_8

    .line 881
    :cond_1f
    iget v1, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    .line 882
    int-to-float v1, v1

    .line 884
    :goto_8
    neg-float v5, v1

    .line 885
    cmpg-float v5, v6, v5

    .line 886
    if-ltz v5, :cond_21

    .line 888
    if-nez v7, :cond_20

    .line 890
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 892
    iget-boolean v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    .line 894
    if-eqz v5, :cond_23

    .line 896
    :cond_20
    cmpl-float v1, v4, v1

    .line 898
    if-lez v1, :cond_23

    .line 900
    :cond_21
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 902
    iget v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    .line 904
    sub-float v1, v2, v1

    .line 906
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 908
    move-result v1

    .line 911
    cmpl-float v1, v4, v1

    .line 912
    if-lez v1, :cond_23

    .line 914
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 916
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 918
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 921
    iget v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 923
    const/4 v5, 0x1

    .line 925
    invoke-static {v1, v2, v3, v5, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    .line 926
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 929
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 931
    const-string v1, "NotificationPanelViewController MotionEvent intercepted: startExpandMotion"

    .line 933
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 935
    return v5

    .line 938
    :cond_22
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 939
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 941
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 943
    :cond_23
    :goto_9
    const/4 v2, 0x0

    .line 946
    goto/16 :goto_d

    .line 947
    :cond_24
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 949
    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 951
    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 953
    iget v5, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    .line 955
    const/4 v6, 0x1

    .line 957
    if-ne v5, v6, :cond_25

    .line 958
    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 960
    check-cast v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 962
    iget-object v4, v4, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 964
    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 966
    :cond_25
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 969
    iget-object v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 971
    if-eqz v5, :cond_26

    .line 973
    iget-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    .line 975
    if-nez v5, :cond_26

    .line 977
    const/4 v5, 0x1

    .line 979
    goto :goto_a

    .line 980
    :cond_26
    const/4 v5, 0x0

    .line 981
    :goto_a
    iput-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    .line 982
    const/4 v5, 0x0

    .line 984
    iput v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinExpandHeight:F

    .line 985
    iget-object v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 987
    check-cast v5, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 989
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 991
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 994
    move-result-wide v5

    .line 997
    iput-wide v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownTime:J

    .line 998
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1000
    iget-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    .line 1002
    if-eqz v5, :cond_27

    .line 1004
    iget-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mClosing:Z

    .line 1006
    if-eqz v5, :cond_27

    .line 1008
    iget-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 1010
    if-nez v5, :cond_27

    .line 1012
    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 1014
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1017
    const/4 v1, 0x1

    .line 1019
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    .line 1020
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1022
    const-string v2, "NotificationPanelViewController MotionEvent intercepted: mAnimatingOnDown: true, mClosing: true, mHintAnimationRunning: false"

    .line 1024
    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    .line 1026
    return v1

    .line 1029
    :cond_27
    iget-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 1030
    if-eqz v5, :cond_29

    .line 1032
    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1034
    move-result v4

    .line 1037
    if-eqz v4, :cond_28

    .line 1038
    goto :goto_b

    .line 1040
    :cond_28
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1041
    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1043
    const-string v5, "not setting mInitialExpandY in onInterceptTouch"

    .line 1045
    invoke-virtual {v4, v5}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    .line 1047
    goto :goto_c

    .line 1050
    :cond_29
    :goto_b
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1051
    iput v3, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 1053
    iput v2, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    .line 1055
    :goto_c
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1057
    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInContentBounds(FF)Z

    .line 1059
    move-result v2

    .line 1062
    const/4 v3, 0x1

    .line 1063
    xor-int/2addr v2, v3

    .line 1064
    iput-boolean v2, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchStartedInEmptyArea:Z

    .line 1065
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1067
    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceededBeforeDown:Z

    .line 1069
    iput-boolean v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    .line 1071
    const/4 v3, 0x0

    .line 1073
    iput-boolean v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    .line 1074
    invoke-virtual {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1076
    move-result v3

    .line 1079
    iput-boolean v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    .line 1080
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1082
    iget-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1084
    iget-boolean v4, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    .line 1086
    iget v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 1088
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1090
    sget-object v5, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 1093
    sget-object v6, Lcom/android/systemui/shade/ShadeLogger$logPanelClosedOnDown$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logPanelClosedOnDown$2;

    .line 1095
    iget-object v3, v3, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 1097
    const/4 v7, 0x0

    .line 1099
    invoke-virtual {v3, v9, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 1100
    move-result-object v5

    .line 1103
    const-string v6, "intercept down touch"

    .line 1104
    invoke-interface {v5, v6}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 1106
    invoke-interface {v5, v4}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 1109
    float-to-double v6, v2

    .line 1112
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 1113
    invoke-virtual {v3, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 1116
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1119
    const/4 v2, 0x0

    .line 1121
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    .line 1122
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasLayoutedSinceDown:Z

    .line 1124
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    .line 1126
    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    .line 1128
    invoke-static {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 1130
    :goto_d
    return v2

    .line 1133
    :cond_2a
    :goto_e
    const/4 v0, 0x1

    .line 1134
    xor-int/2addr v0, v4

    .line 1135
    iget-boolean v1, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    .line 1136
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1138
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1140
    sget-object v4, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 1143
    sget-object v5, Lcom/android/systemui/shade/ShadeLogger$logNotInterceptingTouchInstantExpanding$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logNotInterceptingTouchInstantExpanding$2;

    .line 1145
    iget-object v2, v2, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 1147
    const/4 v6, 0x0

    .line 1149
    invoke-virtual {v2, v9, v4, v5, v6}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 1150
    move-result-object v4

    .line 1153
    invoke-interface {v4, v3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 1154
    invoke-interface {v4, v0}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 1157
    invoke-interface {v4, v1}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 1160
    invoke-virtual {v2, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 1163
    const/4 v0, 0x0

    .line 1166
    return v0
    .line 1167
.end method

.method public onMiuiIntercept(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v2, :cond_1

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 13
    move-result-wide v4

    .line 16
    iget-wide v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mLastTouchDownTime:J

    .line 17
    cmp-long v2, v4, v6

    .line 19
    if-nez v2, :cond_0

    .line 21
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 23
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 25
    const-string v2, "onTouch: duplicate down event detected... ignoring"

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 29
    return v3

    .line 32
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 33
    move-result-wide v4

    .line 36
    iput-wide v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mLastTouchDownTime:J

    .line 37
    :cond_1
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 39
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 41
    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsController;->isQsFragmentCreated()Z

    .line 43
    move-result v4

    .line 46
    const/4 v5, 0x0

    .line 47
    if-eqz v4, :cond_2

    .line 48
    iget-boolean v4, v2, Lcom/android/systemui/shade/QuickSettingsController;->mFullyExpanded:Z

    .line 50
    if-eqz v4, :cond_2

    .line 52
    iget-object v2, v2, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 54
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->disallowPanelTouches()Z

    .line 56
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    move v2, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move v2, v5

    .line 64
    :goto_0
    if-eqz v2, :cond_3

    .line 65
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 67
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 69
    const-string v2, "onTouch: ignore touch, panel touches disallowed and qs fully expanded"

    .line 71
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 73
    return v5

    .line 76
    :cond_3
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 77
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 79
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 81
    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 83
    if-eqz v4, :cond_b

    .line 85
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 87
    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 89
    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 91
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 93
    if-eqz v4, :cond_4

    .line 95
    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 97
    invoke-virtual {v4}, Lcom/android/systemui/dreams/DreamOverlayStateController;->isOverlayActive()Z

    .line 99
    move-result v4

    .line 102
    if-eqz v4, :cond_a

    .line 103
    :cond_4
    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 105
    iget-object v6, v4, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->primaryBouncerView:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    .line 107
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/data/BouncerViewImpl;->getDelegate()Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;

    .line 109
    move-result-object v6

    .line 112
    if-eqz v6, :cond_7

    .line 113
    iget-object v6, v6, Lcom/android/systemui/keyguard/ui/binder/KeyguardBouncerViewBinder$bind$delegate$1;->$securityContainerController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 115
    iget-object v7, v6, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 117
    if-nez v7, :cond_6

    .line 119
    iget-object v6, v6, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    .line 121
    if-eqz v6, :cond_5

    .line 123
    goto :goto_1

    .line 125
    :cond_5
    move v6, v5

    .line 126
    goto :goto_2

    .line 127
    :cond_6
    :goto_1
    move v6, v3

    .line 128
    :goto_2
    if-ne v6, v3, :cond_7

    .line 129
    move v6, v3

    .line 131
    goto :goto_3

    .line 132
    :cond_7
    move v6, v5

    .line 133
    :goto_3
    if-nez v6, :cond_a

    .line 134
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsShowing()Z

    .line 136
    move-result v6

    .line 139
    if-eqz v6, :cond_8

    .line 140
    iget-object v4, v4, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 142
    check-cast v4, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 144
    iget-object v4, v4, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->primaryBouncerScrimmed:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 146
    invoke-virtual {v4}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 148
    move-result-object v4

    .line 151
    check-cast v4, Ljava/lang/Boolean;

    .line 152
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 154
    move-result v4

    .line 157
    if-nez v4, :cond_a

    .line 158
    :cond_8
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isFullscreenBouncer()Z

    .line 160
    move-result v2

    .line 163
    if-eqz v2, :cond_9

    .line 164
    goto :goto_4

    .line 166
    :cond_9
    move v2, v5

    .line 167
    goto :goto_5

    .line 168
    :cond_a
    :goto_4
    move v2, v3

    .line 169
    :goto_5
    if-eqz v2, :cond_b

    .line 170
    move v2, v3

    .line 172
    goto :goto_6

    .line 173
    :cond_b
    move v2, v5

    .line 174
    :goto_6
    if-nez v2, :cond_74

    .line 175
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 177
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 179
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 181
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowingOverDream:Z

    .line 183
    if-eqz v2, :cond_c

    .line 185
    goto/16 :goto_33

    .line 187
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 189
    move-result v2

    .line 192
    const/4 v4, 0x3

    .line 193
    if-eq v2, v3, :cond_d

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 196
    move-result v2

    .line 199
    if-ne v2, v4, :cond_e

    .line 200
    :cond_d
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 202
    iput-boolean v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    .line 204
    :cond_e
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 206
    iget-boolean v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    .line 208
    if-eqz v2, :cond_f

    .line 210
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 212
    move-result v2

    .line 215
    if-ne v2, v3, :cond_f

    .line 216
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 218
    invoke-virtual {v2, v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    .line 220
    :cond_f
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 223
    invoke-static {v2, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$minitDownStates(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 225
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 228
    iget-boolean v6, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    .line 230
    const/4 v7, 0x0

    .line 232
    if-nez v6, :cond_10

    .line 233
    iget v6, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    .line 235
    iget v8, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    .line 237
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 239
    invoke-virtual {v2, v6, v8, v7}, Lcom/android/systemui/shade/QuickSettingsController;->shouldQuickSettingsIntercept(FFF)Z

    .line 241
    move-result v2

    .line 244
    if-eqz v2, :cond_11

    .line 245
    :cond_10
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 247
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 249
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 251
    if-eqz v2, :cond_12

    .line 253
    :cond_11
    move v2, v3

    .line 255
    goto :goto_7

    .line 256
    :cond_12
    move v2, v5

    .line 257
    :goto_7
    if-eqz v2, :cond_13

    .line 258
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 260
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 262
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 264
    move-result v2

    .line 267
    if-eqz v2, :cond_13

    .line 268
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 270
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 272
    const-string v2, "onTouch: PulseExpansionHandler handled event"

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 276
    return v3

    .line 279
    :cond_13
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 280
    iget-boolean v6, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulsing:Z

    .line 282
    if-eqz v6, :cond_14

    .line 284
    iget-object v0, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 286
    const-string v2, "onTouch: eat touch, device pulsing"

    .line 288
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 290
    return v3

    .line 293
    :cond_14
    iget-boolean v6, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mListenForHeadsUp:Z

    .line 294
    if-eqz v6, :cond_16

    .line 296
    iget-object v6, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 298
    iget-boolean v8, v6, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    .line 300
    if-nez v8, :cond_16

    .line 302
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 304
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 306
    if-eqz v2, :cond_15

    .line 308
    move v2, v3

    .line 310
    goto :goto_8

    .line 311
    :cond_15
    move v2, v5

    .line 312
    :goto_8
    if-nez v2, :cond_16

    .line 313
    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 315
    move-result v2

    .line 318
    if-eqz v2, :cond_16

    .line 319
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 321
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 323
    const-string v6, "panel_open_peek"

    .line 325
    invoke-virtual {v2, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 327
    :cond_16
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 330
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 332
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 334
    move-result v2

    .line 337
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->handleMiuiTouch(Landroid/view/MotionEvent;)Z

    .line 338
    move-result v6

    .line 341
    if-eqz v6, :cond_17

    .line 342
    return v3

    .line 344
    :cond_17
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 345
    iget-object v8, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 347
    iget-boolean v8, v8, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    .line 349
    const/high16 v10, 0x3f800000    # 1.0f

    .line 351
    const/4 v12, 0x6

    .line 353
    const/4 v13, 0x2

    .line 354
    if-nez v8, :cond_42

    .line 355
    invoke-virtual {v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 357
    move-result v8

    .line 360
    iget-object v14, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 361
    iget-object v15, v14, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 363
    if-eqz v15, :cond_18

    .line 365
    iget-boolean v15, v14, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 367
    if-nez v15, :cond_18

    .line 369
    iget-boolean v14, v14, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    .line 371
    if-nez v14, :cond_18

    .line 373
    move v14, v3

    .line 375
    goto :goto_9

    .line 376
    :cond_18
    move v14, v5

    .line 377
    :goto_9
    iget-object v6, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 378
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 383
    move-result v15

    .line 386
    invoke-virtual {v6, v15}, Lcom/android/systemui/shade/QuickSettingsController;->isSplitShadeAndTouchXOutsideQs(F)Z

    .line 387
    move-result v15

    .line 390
    if-eqz v15, :cond_19

    .line 391
    goto/16 :goto_1b

    .line 393
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 395
    move-result v15

    .line 398
    iget v9, v6, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 399
    cmpl-float v9, v9, v10

    .line 401
    if-nez v9, :cond_1a

    .line 403
    iget v9, v6, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 405
    if-eq v9, v3, :cond_1a

    .line 407
    invoke-virtual {v6}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 409
    move-result v9

    .line 412
    if-eqz v9, :cond_1a

    .line 413
    move v9, v3

    .line 415
    goto :goto_a

    .line 416
    :cond_1a
    move v9, v5

    .line 417
    :goto_a
    iget-object v10, v6, Lcom/android/systemui/shade/QuickSettingsController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 418
    if-nez v15, :cond_1b

    .line 420
    if-eqz v9, :cond_1b

    .line 422
    const-string v9, "handleQsTouch: down action, QS tracking enabled"

    .line 424
    invoke-virtual {v10, v1, v9}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 426
    iput-boolean v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 429
    invoke-virtual {v6, v3, v5}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    .line 431
    iput-boolean v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mConflictingExpansionGesture:Z

    .line 434
    invoke-virtual {v6}, Lcom/android/systemui/shade/QuickSettingsController;->onExpansionStarted()V

    .line 436
    iget v9, v6, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 439
    iput v9, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 443
    move-result v9

    .line 446
    iput v9, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 449
    move-result v9

    .line 452
    iput v9, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 453
    :cond_1b
    iget-boolean v9, v6, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 455
    if-eqz v9, :cond_1c

    .line 457
    iput-boolean v5, v6, Lcom/android/systemui/shade/QuickSettingsController;->mExpandImmediate:Z

    .line 459
    :cond_1c
    iget-object v9, v6, Lcom/android/systemui/shade/QuickSettingsController;->mPanelViewControllerLazy:Ldagger/Lazy;

    .line 461
    if-nez v8, :cond_1e

    .line 463
    if-nez v14, :cond_1e

    .line 465
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 467
    move-result v14

    .line 470
    if-nez v14, :cond_1e

    .line 471
    sget-boolean v14, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    .line 473
    if-eqz v14, :cond_1d

    .line 475
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 477
    move-result-object v14

    .line 480
    check-cast v14, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 481
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 486
    move-result v14

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 490
    move-result v11

    .line 493
    const/high16 v7, -0x40800000    # -1.0f

    .line 494
    invoke-virtual {v6, v14, v11, v7}, Lcom/android/systemui/shade/QuickSettingsController;->shouldQuickSettingsIntercept(FFF)Z

    .line 496
    move-result v7

    .line 499
    if-eqz v7, :cond_1e

    .line 500
    iget-object v7, v6, Lcom/android/systemui/shade/QuickSettingsController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 502
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    const-string v7, "handleQsDown: down action, QS tracking enabled"

    .line 507
    invoke-virtual {v10, v1, v7}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 509
    iput-boolean v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 512
    invoke-virtual {v6}, Lcom/android/systemui/shade/QuickSettingsController;->onExpansionStarted()V

    .line 514
    iget v7, v6, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 517
    iput v7, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 521
    move-result v7

    .line 524
    iput v7, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 527
    move-result v7

    .line 530
    iput v7, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 531
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 533
    move-result-object v7

    .line 536
    check-cast v7, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 537
    invoke-virtual {v7}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    .line 539
    :cond_1e
    iget-boolean v7, v6, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 542
    if-nez v7, :cond_1f

    .line 544
    iget-boolean v7, v6, Lcom/android/systemui/shade/QuickSettingsController;->mLastShadeFlingWasExpanding:Z

    .line 546
    if-nez v7, :cond_1f

    .line 548
    invoke-virtual {v6}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 550
    move-result v7

    .line 553
    float-to-double v3, v7

    .line 554
    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    .line 555
    cmpg-double v3, v3, v16

    .line 560
    if-gtz v3, :cond_1f

    .line 562
    iget v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mShadeExpandedFraction:F

    .line 564
    float-to-double v3, v3

    .line 566
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 567
    cmpg-double v3, v3, v16

    .line 569
    if-gez v3, :cond_1f

    .line 571
    iput-boolean v5, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 573
    :cond_1f
    invoke-virtual {v6}, Lcom/android/systemui/shade/QuickSettingsController;->isExpandImmediate()Z

    .line 575
    move-result v3

    .line 578
    if-nez v3, :cond_3a

    .line 579
    iget-boolean v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 581
    if-eqz v3, :cond_3a

    .line 583
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 585
    move-result v3

    .line 588
    if-ne v3, v13, :cond_20

    .line 589
    const/4 v3, 0x1

    .line 591
    goto :goto_b

    .line 592
    :cond_20
    move v3, v5

    .line 593
    :goto_b
    if-eqz v3, :cond_21

    .line 594
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 596
    move-result-object v3

    .line 599
    check-cast v3, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 600
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isStatusBarExpandable()Z

    .line 602
    move-result v3

    .line 605
    if-nez v3, :cond_21

    .line 606
    goto/16 :goto_19

    .line 608
    :cond_21
    iget v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 610
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 612
    move-result v3

    .line 615
    if-gez v3, :cond_22

    .line 616
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 618
    move-result v3

    .line 621
    iput v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 622
    move v3, v5

    .line 624
    :cond_22
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 625
    move-result v4

    .line 628
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 629
    move-result v3

    .line 632
    iget v7, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 633
    sub-float v7, v4, v7

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 637
    move-result v11

    .line 640
    if-eqz v11, :cond_37

    .line 641
    const/4 v14, 0x1

    .line 643
    if-eq v11, v14, :cond_28

    .line 644
    if-eq v11, v13, :cond_25

    .line 646
    const/4 v14, 0x3

    .line 648
    if-eq v11, v14, :cond_28

    .line 649
    if-eq v11, v12, :cond_23

    .line 651
    goto/16 :goto_19

    .line 653
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 655
    move-result v4

    .line 658
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 659
    move-result v4

    .line 662
    iget v7, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 663
    if-ne v7, v4, :cond_39

    .line 665
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 667
    move-result v7

    .line 670
    if-eq v7, v4, :cond_24

    .line 671
    move v11, v5

    .line 673
    goto :goto_c

    .line 674
    :cond_24
    const/4 v11, 0x1

    .line 675
    :goto_c
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    .line 676
    move-result v4

    .line 679
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    .line 680
    move-result v7

    .line 683
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 684
    move-result v9

    .line 687
    iput v9, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 688
    iget v9, v6, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 690
    iput v9, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 692
    iput v4, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 694
    iput v7, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 696
    goto/16 :goto_19

    .line 698
    :cond_25
    iget v4, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 700
    add-float/2addr v4, v7

    .line 702
    invoke-virtual {v6, v4}, Lcom/android/systemui/shade/QuickSettingsController;->setExpansionHeight(F)V

    .line 703
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 706
    move-result-object v4

    .line 709
    check-cast v4, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 710
    iget-object v9, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 712
    check-cast v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 714
    iget-boolean v9, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpComingFromTouch:Z

    .line 716
    if-eqz v9, :cond_26

    .line 718
    const/high16 v9, 0x3fc00000    # 1.5f

    .line 720
    goto :goto_d

    .line 722
    :cond_26
    const/high16 v9, 0x3f800000    # 1.0f

    .line 723
    :goto_d
    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 725
    iget v4, v4, Lcom/android/systemui/shade/QuickSettingsController;->mFalsingThreshold:I

    .line 727
    int-to-float v4, v4

    .line 729
    mul-float/2addr v4, v9

    .line 730
    float-to-int v4, v4

    .line 731
    int-to-float v4, v4

    .line 732
    cmpl-float v4, v7, v4

    .line 733
    if-ltz v4, :cond_27

    .line 735
    const/4 v3, 0x1

    .line 737
    iput-boolean v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTouchAboveFalsingThreshold:Z

    .line 738
    :cond_27
    invoke-virtual {v6, v1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 740
    goto/16 :goto_19

    .line 743
    :cond_28
    const-string v3, "onQsTouch: up/cancel action, QS tracking disabled"

    .line 745
    invoke-virtual {v10, v1, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 747
    iput-boolean v5, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 750
    const/4 v3, -0x1

    .line 752
    iput v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTrackingPointer:I

    .line 753
    invoke-virtual {v6, v1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 755
    invoke-virtual {v6}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 758
    move-result v3

    .line 761
    const/4 v7, 0x0

    .line 762
    cmpl-float v3, v3, v7

    .line 763
    if-nez v3, :cond_2b

    .line 765
    iget v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 767
    cmpl-float v3, v4, v3

    .line 769
    if-ltz v3, :cond_29

    .line 771
    goto :goto_f

    .line 773
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 774
    move-result v3

    .line 777
    const/4 v7, 0x3

    .line 778
    if-ne v3, v7, :cond_2a

    .line 779
    const/4 v3, 0x1

    .line 781
    goto :goto_e

    .line 782
    :cond_2a
    move v3, v5

    .line 783
    :goto_e
    invoke-virtual {v6, v5, v3}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    .line 784
    const/4 v3, 0x0

    .line 787
    goto/16 :goto_18

    .line 788
    :cond_2b
    :goto_f
    const/4 v7, 0x3

    .line 790
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 791
    move-result v3

    .line 794
    if-ne v3, v7, :cond_2c

    .line 795
    const/4 v3, 0x1

    .line 797
    goto :goto_10

    .line 798
    :cond_2c
    move v3, v5

    .line 799
    :goto_10
    invoke-virtual {v6}, Lcom/android/systemui/shade/QuickSettingsController;->getCurrentVelocity$1()F

    .line 800
    move-result v7

    .line 803
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 804
    move-result-object v10

    .line 807
    check-cast v10, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 808
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 810
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 813
    move-result v16

    .line 816
    iget-object v11, v10, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 817
    iget v11, v11, Lcom/android/wm/shell/animation/FlingAnimationUtils;->mMinVelocityPxPerSecond:F

    .line 819
    cmpg-float v11, v16, v11

    .line 821
    if-gez v11, :cond_2d

    .line 823
    iget-object v10, v10, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 825
    invoke-virtual {v10}, Lcom/android/systemui/shade/QuickSettingsController;->computeExpansionFraction()F

    .line 827
    move-result v10

    .line 830
    const/high16 v11, 0x3f000000    # 0.5f

    .line 831
    cmpl-float v10, v10, v11

    .line 833
    if-lez v10, :cond_2e

    .line 835
    goto :goto_11

    .line 837
    :cond_2d
    const/4 v10, 0x0

    .line 838
    cmpl-float v11, v7, v10

    .line 839
    if-lez v11, :cond_2e

    .line 841
    :goto_11
    const/4 v10, 0x1

    .line 843
    goto :goto_12

    .line 844
    :cond_2e
    move v10, v5

    .line 845
    :goto_12
    iget-object v11, v6, Lcom/android/systemui/shade/QuickSettingsController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 846
    if-eqz v10, :cond_33

    .line 848
    invoke-interface {v11}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    .line 850
    move-result v16

    .line 853
    if-nez v16, :cond_32

    .line 854
    invoke-interface {v11}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    .line 856
    move-result v16

    .line 859
    if-eqz v16, :cond_2f

    .line 860
    invoke-interface {v11, v5}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 862
    move-result v11

    .line 865
    const/4 v14, 0x1

    .line 866
    goto :goto_13

    .line 867
    :cond_2f
    iget-boolean v11, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTouchAboveFalsingThreshold:Z

    .line 868
    const/4 v14, 0x1

    .line 870
    xor-int/2addr v11, v14

    .line 871
    :goto_13
    if-eqz v11, :cond_30

    .line 872
    goto :goto_15

    .line 874
    :cond_30
    invoke-virtual {v6}, Lcom/android/systemui/shade/QuickSettingsController;->getCurrentVelocity$1()F

    .line 875
    move-result v17

    .line 878
    iget v11, v6, Lcom/android/systemui/shade/QuickSettingsController;->mBarState:I

    .line 879
    if-ne v11, v14, :cond_31

    .line 881
    const/16 v14, 0xc1

    .line 883
    goto :goto_14

    .line 885
    :cond_31
    const/16 v14, 0xc2

    .line 886
    :goto_14
    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 888
    move-result-object v9

    .line 891
    check-cast v9, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 892
    iget-object v9, v9, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 894
    check-cast v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 896
    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 898
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    .line 900
    iget v11, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 902
    sub-float/2addr v4, v11

    .line 904
    div-float/2addr v4, v9

    .line 905
    float-to-int v4, v4

    .line 906
    div-float v9, v17, v9

    .line 907
    float-to-int v9, v9

    .line 909
    iget-object v11, v6, Lcom/android/systemui/shade/QuickSettingsController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 910
    invoke-virtual {v11, v14, v4, v9}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 912
    goto :goto_16

    .line 915
    :cond_32
    :goto_15
    move v10, v5

    .line 916
    goto :goto_16

    .line 917
    :cond_33
    move-object v9, v11

    .line 918
    const/4 v4, 0x0

    .line 919
    cmpg-float v11, v7, v4

    .line 920
    if-gez v11, :cond_34

    .line 922
    const/16 v4, 0xc

    .line 924
    invoke-interface {v9, v4}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 926
    :cond_34
    :goto_16
    if-eqz v10, :cond_35

    .line 929
    if-nez v3, :cond_35

    .line 931
    move v11, v5

    .line 933
    goto :goto_17

    .line 934
    :cond_35
    iget-boolean v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 935
    if-eqz v3, :cond_36

    .line 937
    move v11, v13

    .line 939
    goto :goto_17

    .line 940
    :cond_36
    const/4 v11, 0x1

    .line 941
    :goto_17
    const/4 v3, 0x0

    .line 942
    invoke-virtual {v6, v7, v11, v3, v5}, Lcom/android/systemui/shade/QuickSettingsController;->flingQs(FILcom/android/systemui/shade/QuickSettingsController$$ExternalSyntheticLambda3;Z)V

    .line 943
    :goto_18
    iget-object v4, v6, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 946
    if-eqz v4, :cond_39

    .line 948
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    .line 950
    iput-object v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 953
    goto :goto_19

    .line 955
    :cond_37
    const-string v7, "onQsTouch: down action, QS tracking enabled"

    .line 956
    invoke-virtual {v10, v1, v7}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 958
    const/4 v7, 0x1

    .line 961
    iput-boolean v7, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTracking:Z

    .line 962
    invoke-virtual {v6, v7, v5}, Lcom/android/systemui/shade/QuickSettingsController;->traceQsJank(ZZ)V

    .line 964
    iput v4, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchY:F

    .line 967
    iput v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialTouchX:F

    .line 969
    invoke-virtual {v6}, Lcom/android/systemui/shade/QuickSettingsController;->onExpansionStarted()V

    .line 971
    iget v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeight:F

    .line 974
    iput v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mInitialHeightOnTouch:F

    .line 976
    iget-object v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 978
    if-eqz v3, :cond_38

    .line 980
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 982
    :cond_38
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 985
    move-result-object v3

    .line 988
    iput-object v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    .line 989
    invoke-virtual {v6, v1}, Lcom/android/systemui/shade/QuickSettingsController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 991
    :cond_39
    :goto_19
    iget-boolean v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mConflictingExpansionGesture:Z

    .line 994
    if-nez v3, :cond_3a

    .line 996
    iget-boolean v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mSplitShadeEnabled:Z

    .line 998
    if-nez v3, :cond_3a

    .line 1000
    const/4 v3, 0x1

    .line 1002
    goto :goto_1c

    .line 1003
    :cond_3a
    const/4 v3, 0x3

    .line 1004
    if-eq v15, v3, :cond_3b

    .line 1005
    const/4 v3, 0x1

    .line 1007
    if-ne v15, v3, :cond_3c

    .line 1008
    goto :goto_1a

    .line 1010
    :cond_3b
    const/4 v3, 0x1

    .line 1011
    :goto_1a
    iput-boolean v5, v6, Lcom/android/systemui/shade/QuickSettingsController;->mConflictingExpansionGesture:Z

    .line 1012
    :cond_3c
    if-nez v15, :cond_3d

    .line 1014
    if-eqz v8, :cond_3d

    .line 1016
    invoke-virtual {v6}, Lcom/android/systemui/shade/QuickSettingsController;->isExpansionEnabled()Z

    .line 1018
    move-result v4

    .line 1021
    if-eqz v4, :cond_3d

    .line 1022
    iput-boolean v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTwoFingerExpandPossible:Z

    .line 1024
    :cond_3d
    iget-boolean v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mTwoFingerExpandPossible:Z

    .line 1026
    if-eqz v3, :cond_3f

    .line 1028
    invoke-virtual {v6, v1}, Lcom/android/systemui/shade/QuickSettingsController;->isOpenQsEvent(Landroid/view/MotionEvent;)Z

    .line 1030
    move-result v3

    .line 1033
    if-eqz v3, :cond_3f

    .line 1034
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 1036
    move-result v3

    .line 1039
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 1040
    move-result v3

    .line 1043
    iget v4, v6, Lcom/android/systemui/shade/QuickSettingsController;->mStatusBarMinHeight:I

    .line 1044
    int-to-float v4, v4

    .line 1046
    cmpg-float v3, v3, v4

    .line 1047
    if-gez v3, :cond_3f

    .line 1049
    iget-object v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1051
    const-string v4, "panel_open_qs"

    .line 1053
    const/4 v7, 0x1

    .line 1055
    invoke-virtual {v3, v4, v7}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1056
    invoke-virtual {v6, v7}, Lcom/android/systemui/shade/QuickSettingsController;->setExpandImmediate(Z)V

    .line 1059
    iget-object v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1062
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1064
    iget-object v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;

    .line 1067
    if-eqz v3, :cond_3e

    .line 1069
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1071
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeightToMaxHeight()V

    .line 1073
    :cond_3e
    iget-object v3, v6, Lcom/android/systemui/shade/QuickSettingsController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 1076
    if-eqz v3, :cond_3f

    .line 1078
    const/4 v4, 0x1

    .line 1080
    invoke-interface {v3, v4}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    .line 1081
    :cond_3f
    :goto_1b
    move v3, v5

    .line 1084
    :goto_1c
    if-eqz v3, :cond_41

    .line 1085
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1087
    move-result v2

    .line 1090
    if-eq v2, v13, :cond_40

    .line 1091
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1093
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1095
    const-string v2, "onTouch: handleQsTouch handled event"

    .line 1097
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 1099
    :cond_40
    const/4 v3, 0x1

    .line 1102
    return v3

    .line 1103
    :cond_41
    const/4 v3, 0x1

    .line 1104
    :cond_42
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1105
    move-result v4

    .line 1108
    if-nez v4, :cond_43

    .line 1109
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1111
    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1113
    move-result v4

    .line 1116
    if-eqz v4, :cond_43

    .line 1117
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1119
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1121
    const-string v4, "panel_open"

    .line 1123
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1125
    const/4 v2, 0x1

    .line 1128
    :cond_43
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1129
    iget-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    .line 1131
    if-eqz v4, :cond_44

    .line 1133
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1135
    const-string v4, "handleTouch: touch ignored due to instant expanding"

    .line 1137
    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 1139
    goto :goto_1d

    .line 1142
    :cond_44
    iget-boolean v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    .line 1143
    if-eqz v3, :cond_45

    .line 1145
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1147
    move-result v3

    .line 1150
    const/4 v4, 0x3

    .line 1151
    if-eq v3, v4, :cond_45

    .line 1152
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1154
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1156
    const-string v4, "handleTouch: non-cancel action, touch disabled"

    .line 1158
    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 1160
    goto :goto_1d

    .line 1163
    :cond_45
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1164
    iget-boolean v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    .line 1166
    if-eqz v3, :cond_46

    .line 1168
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1170
    move-result v3

    .line 1173
    if-eqz v3, :cond_46

    .line 1174
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1176
    iget-object v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1178
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 1180
    check-cast v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 1182
    iget v3, v3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 1184
    const-string v6, "handleTouch: non-down action, motion was aborted"

    .line 1186
    invoke-virtual {v4, v1, v3, v6}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    .line 1188
    goto :goto_1d

    .line 1191
    :cond_46
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1192
    iget-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsDragEnabled:Z

    .line 1194
    if-nez v4, :cond_48

    .line 1196
    iget-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 1198
    if-eqz v4, :cond_47

    .line 1200
    const/4 v4, 0x1

    .line 1202
    invoke-virtual {v3, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped(Z)V

    .line 1203
    :cond_47
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1206
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1208
    const-string v4, "handleTouch: drag not enabled"

    .line 1210
    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 1212
    :goto_1d
    move/from16 v16, v5

    .line 1215
    const/4 v6, 0x1

    .line 1217
    goto/16 :goto_30

    .line 1218
    :cond_48
    iget v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 1220
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 1222
    move-result v3

    .line 1225
    if-gez v3, :cond_49

    .line 1226
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1228
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 1230
    move-result v4

    .line 1233
    iput v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 1234
    move v3, v5

    .line 1236
    :cond_49
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 1237
    move-result v4

    .line 1240
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 1241
    move-result v3

    .line 1244
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1245
    move-result v6

    .line 1248
    if-eqz v6, :cond_4b

    .line 1249
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1251
    move-result v6

    .line 1254
    if-ne v6, v13, :cond_4a

    .line 1255
    goto :goto_1e

    .line 1257
    :cond_4a
    const/4 v7, 0x1

    .line 1258
    goto :goto_22

    .line 1259
    :cond_4b
    :goto_1e
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1260
    iget-boolean v7, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 1262
    if-eqz v7, :cond_4c

    .line 1264
    iput-boolean v5, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 1266
    goto :goto_1f

    .line 1268
    :cond_4c
    invoke-virtual {v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1269
    move-result v7

    .line 1272
    if-nez v7, :cond_4e

    .line 1273
    iget v7, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    .line 1275
    if-eqz v7, :cond_4d

    .line 1277
    goto :goto_20

    .line 1279
    :cond_4d
    :goto_1f
    move v7, v5

    .line 1280
    goto :goto_21

    .line 1281
    :cond_4e
    :goto_20
    const/4 v7, 0x1

    .line 1282
    :goto_21
    iput-boolean v7, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 1283
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1285
    const/4 v7, 0x1

    .line 1287
    iput-boolean v7, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mIgnoreXTouchSlop:Z

    .line 1288
    :goto_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1290
    move-result v6

    .line 1293
    const-string/jumbo v8, "systemui.shade"

    .line 1294
    if-eqz v6, :cond_67

    .line 1297
    if-eq v6, v7, :cond_62

    .line 1299
    if-eq v6, v13, :cond_53

    .line 1301
    const/4 v7, 0x3

    .line 1303
    if-eq v6, v7, :cond_62

    .line 1304
    const/4 v7, 0x5

    .line 1306
    if-eq v6, v7, :cond_51

    .line 1307
    if-eq v6, v12, :cond_4f

    .line 1309
    goto/16 :goto_29

    .line 1311
    :cond_4f
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1313
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1315
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 1318
    move-result v3

    .line 1321
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 1322
    move-result v3

    .line 1325
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1326
    iget v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 1328
    if-ne v4, v3, :cond_66

    .line 1330
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 1332
    move-result v4

    .line 1335
    if-eq v4, v3, :cond_50

    .line 1336
    move v3, v5

    .line 1338
    goto :goto_23

    .line 1339
    :cond_50
    const/4 v3, 0x1

    .line 1340
    :goto_23
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 1341
    move-result v4

    .line 1344
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 1345
    move-result v6

    .line 1348
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1349
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 1351
    move-result v1

    .line 1354
    iput v1, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    .line 1355
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1357
    const/4 v3, 0x1

    .line 1359
    iput-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHandlingPointerUp:Z

    .line 1360
    iget v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 1362
    invoke-static {v1, v6, v4, v3, v7}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    .line 1364
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1367
    iput-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHandlingPointerUp:Z

    .line 1369
    goto/16 :goto_29

    .line 1371
    :cond_51
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1373
    iget-object v7, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1375
    iget-object v6, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 1377
    check-cast v6, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 1379
    iget v6, v6, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 1381
    const-string v8, "handleTouch: pointer down action"

    .line 1383
    invoke-virtual {v7, v1, v6, v8}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    .line 1385
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1388
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1390
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1393
    iget-object v7, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 1395
    check-cast v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 1397
    iget v7, v7, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 1399
    const/4 v8, 0x1

    .line 1401
    if-ne v7, v8, :cond_52

    .line 1402
    iput-boolean v8, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    .line 1404
    invoke-static {v6, v1, v4, v3, v8}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mendMotionEvent(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;FFZ)V

    .line 1406
    move/from16 v16, v5

    .line 1409
    move v6, v8

    .line 1411
    goto/16 :goto_30

    .line 1412
    :cond_52
    move v6, v8

    .line 1414
    goto/16 :goto_2e

    .line 1415
    :cond_53
    sget-boolean v6, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    .line 1417
    if-eqz v6, :cond_54

    .line 1419
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1421
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1423
    :cond_54
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1426
    invoke-virtual {v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1428
    move-result v6

    .line 1431
    if-eqz v6, :cond_55

    .line 1432
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1434
    iput-boolean v5, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    .line 1436
    iget v7, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 1438
    iget-object v6, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1440
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1442
    sget-object v9, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 1445
    sget-object v10, Lcom/android/systemui/shade/ShadeLogger$logHasVibrated$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logHasVibrated$2;

    .line 1447
    iget-object v6, v6, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 1449
    const/4 v12, 0x0

    .line 1451
    invoke-virtual {v6, v8, v9, v10, v12}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 1452
    move-result-object v8

    .line 1455
    invoke-interface {v8, v5}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 1456
    float-to-double v9, v7

    .line 1459
    invoke-interface {v8, v9, v10}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 1460
    invoke-virtual {v6, v8}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 1463
    :cond_55
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1466
    invoke-static {v6, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 1468
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1471
    invoke-virtual {v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1473
    move-result v6

    .line 1476
    if-nez v6, :cond_56

    .line 1477
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1479
    const/4 v7, 0x1

    .line 1481
    invoke-virtual {v6, v7}, Lcom/android/systemui/shade/NotificationPanelViewController;->maybeVibrateOnOpening(Z)V

    .line 1482
    :cond_56
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1485
    iget v6, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 1487
    sub-float v6, v3, v6

    .line 1489
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 1491
    move-result v7

    .line 1494
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1495
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1497
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 1500
    move-result v1

    .line 1503
    const/4 v9, 0x1

    .line 1504
    if-ne v1, v9, :cond_57

    .line 1505
    iget v1, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    .line 1507
    int-to-float v1, v1

    .line 1509
    iget v8, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mSlopMultiplier:F

    .line 1510
    mul-float/2addr v1, v8

    .line 1512
    goto :goto_24

    .line 1513
    :cond_57
    iget v1, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlop:I

    .line 1514
    int-to-float v1, v1

    .line 1516
    :goto_24
    cmpl-float v1, v7, v1

    .line 1517
    if-lez v1, :cond_5a

    .line 1519
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 1521
    move-result v1

    .line 1524
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1525
    iget v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    .line 1527
    sub-float v7, v4, v7

    .line 1529
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 1531
    move-result v7

    .line 1534
    cmpl-float v1, v1, v7

    .line 1535
    if-gtz v1, :cond_58

    .line 1537
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1539
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIgnoreXTouchSlop:Z

    .line 1541
    if-eqz v1, :cond_5a

    .line 1543
    :cond_58
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1545
    const/4 v7, 0x1

    .line 1547
    iput-boolean v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    .line 1548
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 1550
    if-eqz v7, :cond_5a

    .line 1552
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 1554
    if-nez v7, :cond_5a

    .line 1556
    iget-boolean v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    .line 1558
    if-nez v7, :cond_5a

    .line 1560
    iget v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    .line 1562
    const/4 v8, 0x0

    .line 1564
    cmpl-float v7, v7, v8

    .line 1565
    if-eqz v7, :cond_59

    .line 1567
    iget v6, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 1569
    invoke-static {v1, v4, v3, v5, v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    .line 1571
    const/4 v6, 0x0

    .line 1574
    :cond_59
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1575
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 1577
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1580
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStarted()V

    .line 1582
    :cond_5a
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1585
    iget v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    .line 1587
    add-float/2addr v1, v6

    .line 1589
    const/4 v7, 0x0

    .line 1590
    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    .line 1591
    move-result v1

    .line 1594
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1595
    iget v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinExpandHeight:F

    .line 1597
    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    .line 1599
    move-result v1

    .line 1602
    neg-float v7, v6

    .line 1603
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1604
    iget-object v9, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1606
    check-cast v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 1608
    iget-boolean v9, v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpComingFromTouch:Z

    .line 1610
    if-eqz v9, :cond_5b

    .line 1612
    const/high16 v9, 0x3fc00000    # 1.5f

    .line 1614
    goto :goto_25

    .line 1616
    :cond_5b
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1617
    :goto_25
    iget v10, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mUnlockFalsingThreshold:I

    .line 1619
    int-to-float v10, v10

    .line 1621
    mul-float/2addr v10, v9

    .line 1622
    float-to-int v9, v10

    .line 1623
    int-to-float v9, v9

    .line 1624
    cmpl-float v7, v7, v9

    .line 1625
    if-ltz v7, :cond_5e

    .line 1627
    const/4 v7, 0x1

    .line 1629
    iput-boolean v7, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    .line 1630
    iget v7, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    .line 1632
    sub-float/2addr v4, v7

    .line 1634
    iget v7, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    .line 1635
    sub-float/2addr v3, v7

    .line 1637
    const/4 v7, 0x0

    .line 1638
    cmpl-float v9, v3, v7

    .line 1639
    if-ltz v9, :cond_5c

    .line 1641
    goto :goto_26

    .line 1643
    :cond_5c
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 1644
    move-result v3

    .line 1647
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 1648
    move-result v4

    .line 1651
    cmpl-float v3, v3, v4

    .line 1652
    if-ltz v3, :cond_5d

    .line 1654
    const/4 v3, 0x1

    .line 1656
    goto :goto_27

    .line 1657
    :cond_5d
    :goto_26
    move v3, v5

    .line 1658
    :goto_27
    iput-boolean v3, v8, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpwardsWhenThresholdReached:Z

    .line 1659
    :cond_5e
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1661
    iget-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 1663
    if-eqz v4, :cond_5f

    .line 1665
    iget-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 1667
    if-eqz v4, :cond_66

    .line 1669
    :cond_5f
    iget-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    .line 1671
    if-nez v4, :cond_66

    .line 1673
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 1675
    invoke-virtual {v3}, Lcom/android/systemui/shade/QuickSettingsController;->isTrackingBlocked()Z

    .line 1677
    move-result v3

    .line 1680
    if-nez v3, :cond_66

    .line 1681
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1683
    iget-object v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 1685
    const/4 v7, 0x0

    .line 1687
    cmpg-float v6, v6, v7

    .line 1688
    if-gtz v6, :cond_60

    .line 1690
    const/4 v6, 0x1

    .line 1692
    goto :goto_28

    .line 1693
    :cond_60
    move v6, v5

    .line 1694
    :goto_28
    if-nez v6, :cond_61

    .line 1695
    iget-boolean v7, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    .line 1697
    if-eqz v7, :cond_61

    .line 1699
    const/4 v7, 0x1

    .line 1701
    iput-boolean v7, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    .line 1702
    :cond_61
    iput-boolean v6, v4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    .line 1704
    invoke-virtual {v3, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedHeightInternal(F)V

    .line 1706
    goto :goto_29

    .line 1709
    :cond_62
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1710
    iget-object v6, v6, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1712
    const-string v7, "onTouch: up/cancel action"

    .line 1714
    invoke-virtual {v6, v1, v7}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 1716
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1719
    invoke-static {v6, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 1721
    iget-object v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1724
    invoke-static {v6, v1, v4, v3, v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mendMotionEvent(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;FFZ)V

    .line 1726
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1729
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1731
    if-nez v3, :cond_66

    .line 1733
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 1735
    move-result v1

    .line 1738
    const/4 v6, 0x1

    .line 1739
    if-ne v1, v6, :cond_64

    .line 1740
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1742
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 1744
    iget-object v1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 1746
    if-nez v1, :cond_63

    .line 1748
    goto/16 :goto_2e

    .line 1750
    :cond_63
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 1752
    move-result-object v1

    .line 1755
    invoke-virtual {v1, v5}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 1756
    goto/16 :goto_2e

    .line 1759
    :cond_64
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1761
    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 1763
    iget-object v1, v1, Lcom/android/systemui/shade/QuickSettingsController;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 1765
    if-nez v1, :cond_65

    .line 1767
    goto/16 :goto_2e

    .line 1769
    :cond_65
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 1771
    move-result-object v1

    .line 1774
    invoke-virtual {v1, v5}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 1775
    goto/16 :goto_2e

    .line 1778
    :cond_66
    :goto_29
    const/4 v6, 0x1

    .line 1780
    goto/16 :goto_2e

    .line 1781
    :cond_67
    move v6, v7

    .line 1783
    sget-boolean v7, Lcom/android/systemui/shared/system/QuickStepContract;->ALLOW_BACK_GESTURE_IN_SHADE:Z

    .line 1784
    if-eqz v7, :cond_68

    .line 1786
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1788
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1790
    :cond_68
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1793
    iget-object v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1795
    const-string v9, "onTouch: down action"

    .line 1797
    invoke-virtual {v7, v1, v9}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 1799
    iget-object v7, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1802
    iget v9, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    .line 1804
    invoke-static {v7, v4, v3, v5, v9}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    .line 1806
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1809
    const/4 v4, 0x0

    .line 1811
    iput v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mMinExpandHeight:F

    .line 1812
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1814
    move-result v4

    .line 1817
    iput-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    .line 1818
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1820
    iget-object v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 1822
    iget-boolean v7, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    .line 1824
    iget v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    .line 1826
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1828
    sget-object v9, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 1831
    sget-object v10, Lcom/android/systemui/shade/ShadeLogger$logPanelClosedOnDown$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logPanelClosedOnDown$2;

    .line 1833
    iget-object v4, v4, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 1835
    const/4 v11, 0x0

    .line 1837
    invoke-virtual {v4, v8, v9, v10, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 1838
    move-result-object v8

    .line 1841
    const-string v9, "handle down touch"

    .line 1842
    invoke-interface {v8, v9}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 1844
    invoke-interface {v8, v7}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 1847
    float-to-double v9, v3

    .line 1850
    invoke-interface {v8, v9, v10}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 1851
    invoke-virtual {v4, v8}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 1854
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1857
    iput-boolean v5, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasLayoutedSinceDown:Z

    .line 1859
    iput-boolean v5, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    .line 1861
    iput-boolean v5, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    .line 1863
    iget-object v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 1865
    check-cast v4, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 1867
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1869
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1872
    move-result-wide v7

    .line 1875
    iput-wide v7, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownTime:J

    .line 1876
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1878
    iput-boolean v5, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    .line 1880
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1882
    move-result v4

    .line 1885
    if-eqz v4, :cond_69

    .line 1886
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1888
    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1890
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 1892
    if-eqz v4, :cond_69

    .line 1894
    move v4, v6

    .line 1896
    goto :goto_2a

    .line 1897
    :cond_69
    move v4, v5

    .line 1898
    :goto_2a
    iput-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    .line 1899
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1901
    invoke-static {v3, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    .line 1903
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1906
    iget-object v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1908
    if-eqz v4, :cond_6a

    .line 1910
    iget-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mHintAnimationRunning:Z

    .line 1912
    if-nez v4, :cond_6a

    .line 1914
    iget-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    .line 1916
    if-nez v4, :cond_6a

    .line 1918
    move/from16 v16, v6

    .line 1920
    goto :goto_2b

    .line 1922
    :cond_6a
    move/from16 v16, v5

    .line 1923
    :goto_2b
    iget-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 1925
    if-eqz v4, :cond_6b

    .line 1927
    if-eqz v16, :cond_6e

    .line 1929
    :cond_6b
    if-nez v16, :cond_6d

    .line 1931
    iget-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceededBeforeDown:Z

    .line 1933
    if-eqz v4, :cond_6c

    .line 1935
    goto :goto_2c

    .line 1937
    :cond_6c
    move v4, v5

    .line 1938
    goto :goto_2d

    .line 1939
    :cond_6d
    :goto_2c
    move v4, v6

    .line 1940
    :goto_2d
    iput-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    .line 1941
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    .line 1943
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1946
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStarted()V

    .line 1948
    :cond_6e
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1951
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    .line 1953
    move-result v3

    .line 1956
    if-eqz v3, :cond_6f

    .line 1957
    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 1959
    iget-object v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1961
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    .line 1963
    if-nez v4, :cond_6f

    .line 1965
    iget-object v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1967
    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 1969
    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    .line 1971
    if-nez v4, :cond_6f

    .line 1973
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    .line 1975
    iget-object v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 1978
    check-cast v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 1980
    iget-object v7, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1982
    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1984
    int-to-float v8, v8

    .line 1986
    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1987
    int-to-float v7, v7

    .line 1989
    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    .line 1990
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    .line 1992
    move-result v4

    .line 1995
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 1996
    move-result v9

    .line 1999
    div-float/2addr v9, v8

    .line 2000
    const/high16 v8, 0x42c80000    # 100.0f

    .line 2001
    mul-float/2addr v9, v8

    .line 2003
    float-to-int v9, v9

    .line 2004
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 2005
    move-result v1

    .line 2008
    div-float/2addr v1, v7

    .line 2009
    mul-float/2addr v1, v8

    .line 2010
    float-to-int v1, v1

    .line 2011
    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 2012
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2014
    new-instance v7, Landroid/metrics/LogMaker;

    .line 2017
    const/16 v8, 0x530

    .line 2019
    invoke-direct {v7, v8}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2021
    const/4 v8, 0x4

    .line 2024
    invoke-virtual {v7, v8}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2025
    move-result-object v7

    .line 2028
    const/16 v8, 0x52e

    .line 2029
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2031
    move-result-object v9

    .line 2034
    invoke-virtual {v7, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2035
    move-result-object v7

    .line 2038
    const/16 v8, 0x52f

    .line 2039
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2041
    move-result-object v1

    .line 2044
    invoke-virtual {v7, v8, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2045
    move-result-object v1

    .line 2048
    const/16 v7, 0x531

    .line 2049
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2051
    move-result-object v4

    .line 2054
    invoke-virtual {v1, v7, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 2055
    move-result-object v1

    .line 2058
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 2059
    invoke-virtual {v3, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2061
    sget-object v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCKED_NOTIFICATION_PANEL_EXPAND:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 2064
    new-instance v3, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 2066
    invoke-direct {v3}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    .line 2068
    invoke-virtual {v3, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 2071
    :cond_6f
    :goto_2e
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2074
    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    .line 2076
    if-eqz v3, :cond_71

    .line 2078
    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTracking:Z

    .line 2080
    if-eqz v1, :cond_70

    .line 2082
    goto :goto_2f

    .line 2084
    :cond_70
    move/from16 v16, v5

    .line 2085
    goto :goto_30

    .line 2087
    :cond_71
    :goto_2f
    move/from16 v16, v6

    .line 2088
    :goto_30
    or-int v1, v2, v16

    .line 2090
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2092
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 2094
    if-eqz v0, :cond_73

    .line 2096
    if-eqz v1, :cond_72

    .line 2098
    goto :goto_31

    .line 2100
    :cond_72
    move v3, v5

    .line 2101
    goto :goto_32

    .line 2102
    :cond_73
    :goto_31
    move v3, v6

    .line 2103
    :goto_32
    return v3

    .line 2104
    :cond_74
    :goto_33
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2105
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    .line 2107
    const-string v2, "onTouch: ignore touch, bouncer scrimmed or showing over dream"

    .line 2109
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 2111
    return v5
    .line 2114
.end method
