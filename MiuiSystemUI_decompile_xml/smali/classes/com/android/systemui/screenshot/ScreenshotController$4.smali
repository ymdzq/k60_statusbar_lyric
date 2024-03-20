.class public final Lcom/android/systemui/screenshot/ScreenshotController$4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 6
    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mOnBackInvokedCallback:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda3;

    .line 12
    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, v0, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 15
    return-void
    .line 18
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotView:Lcom/android/systemui/screenshot/ScreenshotView;

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 6
    move-result-object p1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$4;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController;->mOnBackInvokedCallback:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda3;

    .line 12
    invoke-interface {p1, p0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 14
    return-void
    .line 17
.end method
