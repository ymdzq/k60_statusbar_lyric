.class public final Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;->this$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPipTransitionCanceled(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPipTransitionFinished(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;->this$0:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPostPipTransitionCallback:Ljava/lang/Runnable;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 8
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->mPostPipTransitionCallback:Ljava/lang/Runnable;

    .line 12
    :cond_0
    return-void
    .line 14
.end method

.method public final onPipTransitionStarted(ILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
