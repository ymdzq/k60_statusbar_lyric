.class public final Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mWasCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field public final synthetic val$isAppearing:Z

.field public final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$onFinishedRunnable:Ljava/lang/Runnable;

    .line 4
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$isAppearing:Z

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->mWasCancelled:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$onFinishedRunnable:Ljava/lang/Runnable;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->mWasCancelled:Z

    .line 9
    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 13
    sget v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->$r8$clinit:I

    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 18
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 21
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$isAppearing:Z

    .line 23
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onAppearAnimationFinished(Z)V

    .line 25
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 28
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 32
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$isAppearing:Z

    .line 34
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->-$$Nest$mgetCujType(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)I

    .line 36
    move-result p0

    .line 39
    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 44
    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 48
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$isAppearing:Z

    .line 50
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->-$$Nest$mgetCujType(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)I

    .line 52
    move-result p0

    .line 55
    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 56
    :goto_0
    return-void
    .line 59
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->mWasCancelled:Z

    .line 3
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->val$isAppearing:Z

    .line 7
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->-$$Nest$mgetCujType(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)I

    .line 9
    move-result p1

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$2;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 13
    invoke-static {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 15
    move-result-object p0

    .line 18
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 23
    return-void
    .line 26
.end method
