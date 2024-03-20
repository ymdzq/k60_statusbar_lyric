.class final Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $onAnimationFinished:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lcom/android/systemui/animation/AnimatedDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/AnimatedDialog;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->$onAnimationFinished:Lkotlin/jvm/functions/Function1;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    .line 13
    iget-object v1, v1, Lcom/android/systemui/animation/AnimatedDialog;->backgroundLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    .line 22
    iget-object v0, v0, Lcom/android/systemui/animation/AnimatedDialog;->controller:Lcom/android/systemui/animation/DialogLaunchAnimator$Controller;

    .line 24
    check-cast v0, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 26
    iget-object v0, v0, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;->source:Landroid/view/View;

    .line 28
    instance-of v1, v0, Lcom/android/systemui/animation/LaunchableView;

    .line 30
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/android/systemui/animation/LaunchableView;

    .line 35
    invoke-interface {v0, v2}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->this$0:Lcom/android/systemui/animation/AnimatedDialog;

    .line 44
    new-instance v1, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2$1;

    .line 46
    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;->$onAnimationFinished:Lkotlin/jvm/functions/Function1;

    .line 48
    invoke-direct {v1, v0, p0}, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;Lkotlin/jvm/functions/Function1;)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/systemui/animation/AnimatedDialog;->synchronizeNextDraw(Lkotlin/jvm/functions/Function0;)V

    .line 53
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    return-object p0
    .line 58
.end method
