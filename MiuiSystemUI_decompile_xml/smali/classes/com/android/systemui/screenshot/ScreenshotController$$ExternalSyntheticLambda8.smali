.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_3

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 9
    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotController;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 13
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotController$5;

    .line 15
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    .line 27
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$9;

    .line 29
    const/4 v3, 0x2

    .line 31
    invoke-direct {v2, v0, p0, v3}, Lcom/android/systemui/screenshot/ScreenshotController$9;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/lang/Object;I)V

    .line 32
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 39
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$5;->this$0:Ljava/lang/Object;

    .line 41
    check-cast p0, Landroid/app/Notification$Action;

    .line 43
    invoke-virtual {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotView;->addQuickShareChip(Landroid/app/Notification$Action;)V

    .line 45
    :goto_0
    return-void

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 49
    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotController;

    .line 51
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 53
    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 55
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    .line 57
    const/4 v1, 0x0

    .line 59
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 60
    invoke-virtual {v0}, Landroid/window/WindowContext;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v3

    .line 65
    const v4, 0x1040240    # @android:string/config_emergency_call_number

    .line 66
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 72
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 76
    move-result-object v2

    .line 79
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    .line 80
    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 82
    const/16 v4, 0xd

    .line 85
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 87
    move-result-object v3

    .line 90
    const/4 v4, 0x4

    .line 91
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 92
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 96
    move-result-object v3

    .line 99
    invoke-static {}, Landroid/media/AudioSystem;->newAudioSessionId()I

    .line 100
    move-result v4

    .line 103
    invoke-static {v0, v2, v1, v3, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    .line 104
    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v2, "Screenshot"

    .line 113
    const-string v3, "Screenshot sound initialization failed"

    .line 115
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-virtual {p0, v1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)V

    .line 120
    :goto_1
    return-void

    .line 123
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 124
    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotController;

    .line 126
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 128
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    .line 130
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    .line 132
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    .line 136
    move-result v1

    .line 139
    if-eqz v1, :cond_1

    .line 140
    iget-object v1, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotAnimation:Landroid/animation/Animator;

    .line 142
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotController$9;

    .line 144
    const/4 v3, 0x1

    .line 146
    invoke-direct {v2, v0, p0, v3}, Lcom/android/systemui/screenshot/ScreenshotController$9;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/lang/Object;I)V

    .line 147
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 150
    goto :goto_2

    .line 153
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 154
    invoke-virtual {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotView;->setChipIntents(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    .line 156
    :goto_2
    return-void

    .line 159
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 160
    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotController$7;

    .line 162
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 164
    check-cast p0, Landroid/os/UserHandle;

    .line 166
    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController$7;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 168
    invoke-virtual {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController;->requestScrollCapture(Landroid/os/UserHandle;)V

    .line 170
    return-void

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 174
.end method
