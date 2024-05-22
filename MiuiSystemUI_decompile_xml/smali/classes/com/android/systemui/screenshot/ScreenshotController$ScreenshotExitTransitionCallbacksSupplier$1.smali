.class public final Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/app/ExitTransitionCoordinator$ExitTransitionCallbacks;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final hideSharedElements()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier$1;->this$1:Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier;

    .line 7
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$ScreenshotExitTransitionCallbacksSupplier;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 9
    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->-$$Nest$mfinishDismiss(Lcom/android/systemui/screenshot/ScreenshotController;)V

    .line 11
    return-void
    .line 14
.end method

.method public final isReturnTransitionAllowed()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onFinish()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
