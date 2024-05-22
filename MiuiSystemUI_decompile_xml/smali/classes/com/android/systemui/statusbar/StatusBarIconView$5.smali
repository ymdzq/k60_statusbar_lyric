.class public final Lcom/android/systemui/statusbar/StatusBarIconView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

.field public final synthetic val$endRunnable:Ljava/lang/Runnable;

.field public final synthetic val$runRunnable:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/StatusBarIconView;ZLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->val$runRunnable:Z

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->val$endRunnable:Ljava/lang/Runnable;

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
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/android/systemui/statusbar/StatusBarIconView;->mDotAnimator:Landroid/animation/ObjectAnimator;

    .line 5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->val$runRunnable:Z

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarIconView$5;->val$endRunnable:Ljava/lang/Runnable;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 15
    :cond_0
    return-void
    .line 18
.end method
