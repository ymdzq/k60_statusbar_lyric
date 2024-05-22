.class public final synthetic Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScrollCaptureController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScrollCaptureController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScrollCaptureController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const-string v1, "Screenshot"

    .line 4
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_1

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScrollCaptureController;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 13
    new-instance v1, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;

    .line 15
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 19
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;-><init>(Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;Lcom/android/systemui/screenshot/ImageTileSet;)V

    .line 21
    invoke-virtual {v0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V

    .line 24
    return-void

    .line 27
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScrollCaptureController;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mTileFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 33
    invoke-virtual {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->get()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Lcom/android/systemui/screenshot/ScrollCaptureClient$CaptureResult;

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScrollCaptureController;->onCaptureResult(Lcom/android/systemui/screenshot/ScrollCaptureClient$CaptureResult;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string/jumbo v2, "requestTile failed!"

    .line 46
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 52
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)V

    .line 54
    goto :goto_0

    .line 57
    :catch_1
    const-string/jumbo p0, "requestTile cancelled"

    .line 58
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 64
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScrollCaptureController;

    .line 65
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mCancelled:Z

    .line 68
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mSessionFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 70
    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {v3, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->cancel(Z)Z

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mTileFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 77
    if-eqz v3, :cond_1

    .line 79
    invoke-virtual {v3, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->cancel(Z)Z

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    .line 84
    if-eqz v3, :cond_2

    .line 86
    check-cast v3, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;

    .line 88
    const-string v4, "end()"

    .line 90
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v1, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper$$ExternalSyntheticLambda0;

    .line 95
    invoke-direct {v1, v3, v0}, Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ScrollCaptureClient$SessionWrapper;I)V

    .line 97
    invoke-static {v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 103
    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_FAILURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 105
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mWindowOwner:Ljava/lang/String;

    .line 107
    invoke-interface {v0, v1, v2, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 109
    return-void

    .line 112
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/screenshot/ScrollCaptureController;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 115
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mSessionFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 117
    invoke-virtual {v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->get()Ljava/lang/Object;

    .line 119
    move-result-object v3

    .line 122
    check-cast v3, Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    .line 123
    iput-object v3, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mSession:Lcom/android/systemui/screenshot/ScrollCaptureClient$Session;

    .line 125
    sget-object v3, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_STARTED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 127
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mWindowOwner:Ljava/lang/String;

    .line 129
    invoke-interface {v0, v3, v2, v4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/ScrollCaptureController;->requestNextTile(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    .line 134
    goto :goto_2

    .line 137
    :catch_2
    move-exception v3

    .line 138
    const-string/jumbo v4, "session start failed!"

    .line 139
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mCaptureCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 145
    invoke-virtual {v1, v3}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)V

    .line 147
    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_LONG_SCREENSHOT_FAILURE:Lcom/android/systemui/screenshot/ScreenshotEvent;

    .line 150
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScrollCaptureController;->mWindowOwner:Ljava/lang/String;

    .line 152
    invoke-interface {v0, v1, v2, p0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    .line 154
    :goto_2
    return-void

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 158
.end method
