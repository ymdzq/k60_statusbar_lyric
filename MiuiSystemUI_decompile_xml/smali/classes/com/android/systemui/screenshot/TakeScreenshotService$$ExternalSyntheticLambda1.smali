.class public final synthetic Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda1;->f$2:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 6
    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotData;

    .line 8
    iget-object v2, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 10
    iget v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->source:I

    .line 12
    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotEvent;->getScreenshotSource(I)Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 14
    move-result-object v3

    .line 17
    iget-object v4, p1, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    .line 18
    const-string v5, ""

    .line 20
    if-nez v4, :cond_0

    .line 22
    move-object v4, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 29
    :goto_0
    const/4 v6, 0x0

    .line 30
    invoke-interface {v2, v3, v6, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    const-string v3, "Screenshot request: "

    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 47
    const-string v3, "Screenshot"

    .line 48
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 58
    iput-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 61
    iget p0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    .line 63
    const/4 v2, 0x1

    .line 65
    if-ne p0, v2, :cond_1

    .line 66
    new-instance p0, Landroid/util/DisplayMetrics;

    .line 68
    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    iget-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 73
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    iget-object v7, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 78
    invoke-virtual {v7, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 80
    move-result-object v7

    .line 83
    invoke-virtual {v7, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 84
    new-instance v7, Landroid/graphics/Rect;

    .line 87
    iget v8, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 89
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 91
    invoke-direct {v7, v6, v6, v8, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mImageCapture:Lcom/android/systemui/screenshot/ImageCaptureImpl;

    .line 99
    invoke-virtual {p0, v7}, Lcom/android/systemui/screenshot/ImageCaptureImpl;->captureDisplay(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 101
    move-result-object p0

    .line 104
    iput-object p0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 105
    iput-object v7, p1, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    .line 107
    :cond_1
    iget-object p0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 109
    const/4 v4, 0x2

    .line 111
    const/4 v7, 0x0

    .line 112
    if-nez p0, :cond_2

    .line 113
    const-string p0, "handleScreenshot: Screenshot bitmap was null"

    .line 115
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    .line 120
    const p1, 0x7f130a87    # @string/screenshot_failed_to_capture_text 'Taking screenshots isn't allowed by the app or your organization'

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController;->notifyScreenshotError(I)V

    .line 125
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mCurrentRequestCallback:Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallback;

    .line 128
    if-eqz p0, :cond_10

    .line 130
    check-cast p0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;

    .line 132
    const-string p1, "ignored remote exception"

    .line 134
    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$RequestCallbackImpl;->mReplyTo:Landroid/os/Messenger;

    .line 136
    sget v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->$r8$clinit:I

    .line 138
    :try_start_0
    invoke-static {v7, v2, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 140
    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    invoke-static {v3, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :goto_1
    :try_start_1
    invoke-static {v7, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 152
    move-result-object v0

    .line 155
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    goto/16 :goto_b

    .line 159
    :catch_1
    move-exception p0

    .line 161
    invoke-static {v3, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    goto/16 :goto_b

    .line 165
    :cond_2
    iput-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 167
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    .line 169
    iget-object v8, p1, Lcom/android/systemui/screenshot/ScreenshotData;->topComponent:Landroid/content/ComponentName;

    .line 171
    if-nez v8, :cond_3

    .line 173
    goto :goto_2

    .line 175
    :cond_3
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 176
    move-result-object v5

    .line 179
    :goto_2
    iput-object v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    .line 180
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 182
    move-result-object v5

    .line 185
    iget-object v8, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 186
    invoke-virtual {v8, v5, v6}, Landroid/window/WindowContext;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 188
    move-result-object v5

    .line 191
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 192
    move-result-object v5

    .line 195
    const-string/jumbo v9, "user_setup_complete"

    .line 196
    invoke-static {v5, v9, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 199
    move-result v5

    .line 202
    if-ne v5, v2, :cond_4

    .line 203
    move v5, v2

    .line 205
    goto :goto_3

    .line 206
    :cond_4
    move v5, v6

    .line 207
    :goto_3
    if-nez v5, :cond_5

    .line 208
    const-string p0, "User setup not complete, displaying toast only"

    .line 210
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 215
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda4;

    .line 217
    invoke-direct {p1, v0, v2}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    .line 219
    iget-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mCameraSound:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 222
    iget-object v2, v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->delegate:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture$1;

    .line 224
    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mBgExecutor:Ljava/util/concurrent/ExecutorService;

    .line 226
    invoke-virtual {v2, p1, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 228
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda7;

    .line 231
    invoke-direct {p1, v0, v1}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/util/function/Consumer;)V

    .line 233
    invoke-virtual {v0, p0, v1, p1, v7}, Lcom/android/systemui/screenshot/ScreenshotController;->saveScreenshotInWorkerThread(Landroid/os/UserHandle;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;)V

    .line 236
    goto/16 :goto_b

    .line 239
    :cond_5
    new-instance v3, Landroid/content/Intent;

    .line 241
    const-string v5, "com.android.systemui.SCREENSHOT"

    .line 243
    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    iget-object v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 248
    invoke-virtual {v5, v3}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast$1(Landroid/content/Intent;)V

    .line 250
    invoke-virtual {v8}, Landroid/window/WindowContext;->getResources()Landroid/content/res/Resources;

    .line 253
    move-result-object v3

    .line 256
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 257
    move-result-object v3

    .line 260
    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 261
    if-ne v3, v2, :cond_6

    .line 263
    move v3, v2

    .line 265
    goto :goto_4

    .line 266
    :cond_6
    move v3, v6

    .line 267
    :goto_4
    iput-boolean v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotTakenInPortrait:Z

    .line 268
    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 270
    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 272
    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 275
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 277
    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;

    .line 280
    invoke-direct {v3, v0, p1, v2}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotData;I)V

    .line 282
    invoke-virtual {v0, v3}, Lcom/android/systemui/screenshot/ScreenshotController;->withWindowAttached(Ljava/lang/Runnable;)V

    .line 285
    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 288
    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenshotView;->reset()V

    .line 290
    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 293
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 295
    move-result v3

    .line 298
    if-eqz v3, :cond_8

    .line 299
    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 301
    iget-object v3, v3, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Lcom/android/systemui/screenshot/DraggableConstraintLayout;

    .line 303
    iget-object v3, v3, Lcom/android/systemui/screenshot/DraggableConstraintLayout;->mSwipeDismissHandler:Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;

    .line 305
    iget-object v3, v3, Lcom/android/systemui/screenshot/DraggableConstraintLayout$SwipeDismissHandler;->mDismissAnimation:Landroid/animation/ValueAnimator;

    .line 307
    if-eqz v3, :cond_7

    .line 309
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 311
    move-result v3

    .line 314
    if-eqz v3, :cond_7

    .line 315
    move v3, v2

    .line 317
    goto :goto_5

    .line 318
    :cond_7
    move v3, v6

    .line 319
    :goto_5
    if-nez v3, :cond_8

    .line 320
    sget-object v3, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_REENTERED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 322
    iget-object v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 324
    invoke-interface {v5, v3, v6, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 326
    :cond_8
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 329
    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mPackageName:Ljava/lang/String;

    .line 331
    iput-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPackageName:Ljava/lang/String;

    .line 333
    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowManager:Landroid/view/WindowManager;

    .line 335
    invoke-interface {v3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 337
    move-result-object v5

    .line 340
    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 341
    move-result-object v5

    .line 344
    invoke-virtual {p0, v5}, Lcom/android/systemui/screenshot/ScreenshotView;->updateOrientation(Landroid/view/WindowInsets;)V

    .line 345
    iget-object p0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 348
    new-instance v5, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;

    .line 350
    invoke-direct {v5, v0, v6}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    .line 352
    new-instance v7, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;

    .line 355
    invoke-direct {v7, v0, v2}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    .line 357
    invoke-virtual {v0, p0, v1, v5, v7}, Lcom/android/systemui/screenshot/ScreenshotController;->saveScreenshotInWorkerThread(Landroid/os/UserHandle;Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda0;)V

    .line 360
    invoke-virtual {v0, v2}, Lcom/android/systemui/screenshot/ScreenshotController;->setWindowFocusable(Z)V

    .line 363
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 366
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 368
    iget-object p0, p1, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 371
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;

    .line 373
    invoke-direct {v1, v0, p0, v6}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/os/UserHandle;I)V

    .line 375
    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotController;->withWindowAttached(Ljava/lang/Runnable;)V

    .line 378
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    .line 383
    move-result-object v1

    .line 386
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 387
    move-result v5

    .line 390
    if-nez v5, :cond_a

    .line 391
    iget-boolean v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mBlockAttach:Z

    .line 393
    if-eqz v5, :cond_9

    .line 395
    goto :goto_6

    .line 397
    :cond_9
    iput-boolean v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mBlockAttach:Z

    .line 398
    iget-object v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 400
    invoke-interface {v3, v1, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    invoke-virtual {v1}, Landroid/view/View;->requestApplyInsets()V

    .line 405
    :cond_a
    :goto_6
    iget v1, p1, Lcom/android/systemui/screenshot/ScreenshotData;->type:I

    .line 408
    const/4 v3, 0x3

    .line 410
    if-ne v1, v3, :cond_e

    .line 411
    iget-object v1, p1, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    .line 413
    if-eqz v1, :cond_d

    .line 415
    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 417
    iget-object v5, p1, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    .line 419
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 421
    move-result v7

    .line 424
    iget v9, v5, Landroid/graphics/Insets;->left:I

    .line 425
    sub-int/2addr v7, v9

    .line 427
    iget v9, v5, Landroid/graphics/Insets;->right:I

    .line 428
    sub-int/2addr v7, v9

    .line 430
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 431
    move-result v9

    .line 434
    iget v10, v5, Landroid/graphics/Insets;->top:I

    .line 435
    sub-int/2addr v9, v10

    .line 437
    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    .line 438
    sub-int/2addr v9, v5

    .line 440
    if-eqz v9, :cond_c

    .line 441
    if-eqz v7, :cond_c

    .line 443
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 445
    move-result v5

    .line 448
    if-eqz v5, :cond_c

    .line 449
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 451
    move-result v3

    .line 454
    if-nez v3, :cond_b

    .line 455
    goto :goto_7

    .line 457
    :cond_b
    int-to-float v3, v7

    .line 458
    int-to-float v5, v9

    .line 459
    div-float/2addr v3, v5

    .line 460
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 461
    move-result v5

    .line 464
    int-to-float v5, v5

    .line 465
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 466
    move-result v1

    .line 469
    int-to-float v1, v1

    .line 470
    div-float/2addr v5, v1

    .line 471
    sub-float/2addr v3, v5

    .line 472
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 473
    move-result v1

    .line 476
    const v3, 0x3dcccccd    # 0.1f

    .line 477
    cmpg-float v1, v1, v3

    .line 480
    if-gez v1, :cond_c

    .line 482
    move v1, v2

    .line 484
    goto :goto_8

    .line 485
    :cond_c
    :goto_7
    move v1, v6

    .line 486
    :goto_8
    if-eqz v1, :cond_d

    .line 487
    move v2, v6

    .line 489
    goto :goto_9

    .line 490
    :cond_d
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 491
    iput-object v1, p1, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    .line 493
    new-instance v1, Landroid/graphics/Rect;

    .line 495
    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 497
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 499
    move-result v3

    .line 502
    iget-object v5, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 503
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 505
    move-result v5

    .line 508
    invoke-direct {v1, v6, v6, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 509
    iput-object v1, p1, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    .line 512
    :cond_e
    :goto_9
    iget-object v1, p1, Lcom/android/systemui/screenshot/ScreenshotData;->screenBounds:Landroid/graphics/Rect;

    .line 514
    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;

    .line 516
    invoke-direct {v3, v0, p1, v6}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotData;I)V

    .line 518
    iget-object v5, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 521
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 523
    move-result-object v5

    .line 526
    new-instance v7, Lcom/android/systemui/screenshot/ScreenshotController$6;

    .line 527
    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/systemui/screenshot/ScreenshotController$6;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/graphics/Rect;ZLcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda1;)V

    .line 529
    invoke-virtual {v5, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 532
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 535
    invoke-virtual {v8}, Landroid/window/WindowContext;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 537
    move-result-object v2

    .line 540
    const v3, 0x7f0816cc    # @drawable/overlay_badge_background 'res/drawable/overlay_badge_background.xml'

    .line 541
    invoke-virtual {v8, v3}, Landroid/window/WindowContext;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 544
    move-result-object v3

    .line 547
    iget-object v5, p1, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    .line 548
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 550
    move-result-object v2

    .line 553
    iget-object v3, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotBadge:Landroid/widget/ImageView;

    .line 554
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 556
    iget-object v1, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotBadge:Landroid/widget/ImageView;

    .line 559
    if-eqz v2, :cond_f

    .line 561
    goto :goto_a

    .line 563
    :cond_f
    const/16 v6, 0x8

    .line 564
    :goto_a
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 569
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    iget-object v2, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 574
    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    .line 576
    iget-object v5, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 578
    iget-object v6, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mResources:Landroid/content/res/Resources;

    .line 580
    invoke-static {v6, v2, v3}, Lcom/android/systemui/screenshot/ScreenshotView;->createScreenDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Insets;)Landroid/graphics/drawable/Drawable;

    .line 582
    move-result-object v2

    .line 585
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 586
    iget-object v2, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 589
    iget-object v1, v1, Lcom/android/systemui/screenshot/ScreenshotView;->mResources:Landroid/content/res/Resources;

    .line 591
    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotData;->bitmap:Landroid/graphics/Bitmap;

    .line 593
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotData;->insets:Landroid/graphics/Insets;

    .line 595
    invoke-static {v1, v3, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->createScreenDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Insets;)Landroid/graphics/drawable/Drawable;

    .line 597
    move-result-object p1

    .line 600
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    sget-object p1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 604
    iget-object p1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 606
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 608
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    .line 611
    move-result-object p0

    .line 614
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    .line 615
    invoke-direct {p1}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;-><init>()V

    .line 617
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 620
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotHandler:Lcom/android/systemui/screenshot/TimeoutHandler;

    .line 623
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 625
    :cond_10
    :goto_b
    return-void
    .line 628
.end method
