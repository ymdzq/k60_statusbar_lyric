.class public final Lcom/android/wm/shell/common/split/SplitLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final synthetic val$flingFinishedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$1;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$1;->val$flingFinishedCallback:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$1;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    .line 5
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsFling:Z

    .line 8
    return-void
    .line 10
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$1;->val$flingFinishedCallback:Ljava/lang/Runnable;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    :cond_0
    const/16 p1, 0x34

    .line 9
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 15
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$1;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 18
    const/4 v0, 0x0

    .line 20
    iput-object v0, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerFlingAnimator:Landroid/animation/ValueAnimator;

    .line 21
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->setFlingFinished()V

    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$1;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mIsFling:Z

    .line 36
    return-void
    .line 38
.end method
