.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/os/UserHandle;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->f$1:Landroid/os/UserHandle;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->f$1:Landroid/os/UserHandle;

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController;->requestScrollCapture(Landroid/os/UserHandle;)V

    .line 12
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 15
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->peekDecorView()Landroid/view/View;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 21
    move-result-object v1

    .line 24
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$7;

    .line 25
    invoke-direct {v2, v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController$7;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Landroid/os/UserHandle;)V

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V

    .line 30
    return-void

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->f$1:Landroid/os/UserHandle;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    const-string v1, "Screenshot"

    .line 41
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mLongScreenshotFuture:Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 43
    invoke-virtual {v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->get()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 48
    check-cast v2, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    iget-object v3, v2, Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;->mImageTileSet:Lcom/android/systemui/screenshot/ImageTileSet;

    .line 51
    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ImageTileSet;->getHeight()I

    .line 53
    move-result v3

    .line 56
    if-nez v3, :cond_0

    .line 57
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->restoreNonScrollingUi()V

    .line 61
    goto :goto_1

    .line 64
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mLongScreenshotHolder:Lcom/android/systemui/screenshot/LongScreenshotData;

    .line 65
    iget-object v4, v3, Lcom/android/systemui/screenshot/LongScreenshotData;->mLongScreenshot:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 69
    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;

    .line 72
    invoke-direct {v4, v0, v2}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScrollCaptureController$LongScreenshot;)V

    .line 74
    iget-object v2, v3, Lcom/android/systemui/screenshot/LongScreenshotData;->mTransitionDestinationCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79
    new-instance v2, Landroid/content/Intent;

    .line 82
    const-class v3, Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 84
    iget-object v4, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 86
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string/jumbo v3, "screenshot-userhandle"

    .line 91
    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    const/high16 p0, 0x14000000

    .line 97
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 99
    const/4 p0, 0x0

    .line 102
    invoke-static {v4, p0, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    .line 103
    move-result-object v3

    .line 106
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 107
    move-result-object v3

    .line 110
    invoke-virtual {v4, v2, v3}, Landroid/window/WindowContext;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 111
    new-instance v2, Landroid/view/RemoteAnimationAdapter;

    .line 114
    sget-object v6, Lcom/android/systemui/screenshot/ScreenshotController;->SCREENSHOT_REMOTE_RUNNER:Lcom/android/systemui/screenshot/ScreenshotController$1;

    .line 116
    const-wide/16 v7, 0x0

    .line 118
    const-wide/16 v9, 0x0

    .line 120
    move-object v5, v2

    .line 122
    invoke-direct/range {v5 .. v10}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    .line 123
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 126
    move-result-object v3

    .line 129
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    invoke-interface {v3, v2, p0}, Landroid/view/IWindowManager;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    goto :goto_1

    .line 138
    :catch_0
    move-exception p0

    .line 139
    const-string v0, "Error overriding screenshot app transition"

    .line 140
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    goto :goto_1

    .line 145
    :catch_1
    move-exception p0

    .line 146
    const-string v2, "Exception"

    .line 147
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->restoreNonScrollingUi()V

    .line 154
    goto :goto_1

    .line 157
    :catch_2
    const-string p0, "Long screenshot cancelled"

    .line 158
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_1
    return-void

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 164
.end method
