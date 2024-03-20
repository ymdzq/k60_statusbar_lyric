.class public final Lcom/android/systemui/screenshot/ScreenshotController$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final synthetic val$onAnimationComplete:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/screenshot/ScreenshotController$9;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$9;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$9;->val$onAnimationComplete:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$9;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 8
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$9;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$9;->val$onAnimationComplete:Ljava/lang/Object;

    .line 13
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    .line 15
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 17
    invoke-virtual {p1, p0}, Lcom/android/systemui/screenshot/ScreenshotView;->setChipIntents(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    .line 19
    return-void

    .line 22
    :pswitch_1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 23
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$9;->val$onAnimationComplete:Ljava/lang/Object;

    .line 26
    check-cast p0, Ljava/lang/Runnable;

    .line 28
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 30
    return-void

    .line 33
    :goto_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 34
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$9;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 37
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 39
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$9;->val$onAnimationComplete:Ljava/lang/Object;

    .line 41
    check-cast p0, Lcom/android/systemui/screenshot/ScreenshotController$5;

    .line 43
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$5;->this$0:Ljava/lang/Object;

    .line 45
    check-cast p0, Landroid/app/Notification$Action;

    .line 47
    invoke-virtual {p1, p0}, Lcom/android/systemui/screenshot/ScreenshotView;->addQuickShareChip(Landroid/app/Notification$Action;)V

    .line 49
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 54
.end method
