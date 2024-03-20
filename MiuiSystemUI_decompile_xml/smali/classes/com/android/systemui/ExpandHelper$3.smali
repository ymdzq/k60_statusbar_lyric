.class public final Lcom/android/systemui/ExpandHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/ExpandHelper;

.field public final synthetic val$expand:Z

.field public final synthetic val$scaledView:Landroid/view/View;

.field public final synthetic val$wasClosed:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/ExpandHelper;Lcom/android/systemui/statusbar/notification/row/ExpandableView;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper$3;->val$scaledView:Landroid/view/View;

    .line 4
    iput-boolean p3, p0, Lcom/android/systemui/ExpandHelper$3;->val$expand:Z

    .line 6
    iput-boolean p4, p0, Lcom/android/systemui/ExpandHelper$3;->val$wasClosed:Z

    .line 8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper$3;->mCancelled:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/ExpandHelper$3;->mCancelled:Z

    .line 2
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    .line 7
    iget-object p1, p1, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper$3;->val$scaledView:Landroid/view/View;

    .line 11
    iget-boolean v2, p0, Lcom/android/systemui/ExpandHelper$3;->val$expand:Z

    .line 13
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 15
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 17
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    .line 20
    iget-boolean v1, p1, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 22
    if-nez v1, :cond_1

    .line 24
    iget-object p1, p1, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 26
    const/4 v1, 0x0

    .line 28
    iput-object v1, p1, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    .line 32
    iget-object p1, p1, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 34
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper$3;->val$scaledView:Landroid/view/View;

    .line 36
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    instance-of p1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 43
    if-eqz p1, :cond_1

    .line 45
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 47
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGroupExpansionChanging(Z)V

    .line 49
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    .line 52
    iget-object p1, p1, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 54
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper$3;->val$scaledView:Landroid/view/View;

    .line 56
    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;

    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$7;->setUserLockedChild(Landroid/view/View;Z)V

    .line 60
    iget-object p1, p0, Lcom/android/systemui/ExpandHelper$3;->this$0:Lcom/android/systemui/ExpandHelper;

    .line 63
    iget-object p1, p1, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 65
    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    iget-boolean p0, p0, Lcom/android/systemui/ExpandHelper$3;->val$wasClosed:Z

    .line 70
    if-eqz p0, :cond_2

    .line 72
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 74
    move-result-object p0

    .line 77
    const/4 p1, 0x3

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 79
    :cond_2
    return-void
    .line 82
.end method
