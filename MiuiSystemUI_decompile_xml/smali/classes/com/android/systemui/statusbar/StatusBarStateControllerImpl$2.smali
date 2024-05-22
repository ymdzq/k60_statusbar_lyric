.class public final Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_1

    .line 8
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 9
    if-eqz p0, :cond_1

    .line 11
    const/16 p0, 0x18

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    const/16 p0, 0x17

    .line 16
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 18
    :goto_1
    return-void
    .line 21
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_1

    .line 8
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 9
    if-eqz p0, :cond_1

    .line 11
    const/16 p0, 0x18

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    const/16 p0, 0x17

    .line 16
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 18
    :goto_1
    return-void
    .line 21
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->beginInteractionJankMonitor()V

    .line 4
    return-void
    .line 7
.end method
