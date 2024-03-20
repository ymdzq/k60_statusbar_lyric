.class public final Lcom/android/systemui/assist/AssistManager$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$1;->this$0:Lcom/android/systemui/assist/AssistManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAssistantGestureCompletion(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$1;->this$0:Lcom/android/systemui/assist/AssistManager;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/ui/DefaultUiController;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/DefaultUiController;->animateInvocationCompletion()V

    .line 6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/assist/ui/DefaultUiController;->logInvocationProgressMetrics(FZ)V

    .line 13
    return-void
    .line 16
.end method

.method public final onAssistantProgress(F)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$1;->this$0:Lcom/android/systemui/assist/AssistManager;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/ui/DefaultUiController;

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    cmpl-float v1, p1, v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/DefaultUiController;->animateInvocationCompletion()V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    cmpl-float v1, p1, v1

    .line 19
    if-nez v1, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/DefaultUiController;->hide()V

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    if-nez v0, :cond_3

    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    .line 29
    const/4 v2, 0x1

    .line 31
    if-nez v1, :cond_2

    .line 32
    iget-object v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    .line 34
    iget-object v3, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 36
    iget-object v4, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mWindowManager:Landroid/view/WindowManager;

    .line 38
    invoke-interface {v4, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    iput-boolean v2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    .line 43
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    .line 45
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/ui/DefaultUiController;->setProgressInternal(F)V

    .line 47
    :goto_0
    iput p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLastInvocationProgress:F

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/assist/ui/DefaultUiController;->logInvocationProgressMetrics(FZ)V

    .line 52
    return-void
    .line 55
.end method
