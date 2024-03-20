.class public final Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $firstChildBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field public final synthetic $r8$classId:I

.field public final synthetic $summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$firstChildBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->setExpandAnimating(Z)V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->setAnimCanceled(Z)V

    .line 17
    return-void

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 21
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->setCollapseAnimating(Z)V

    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->setAnimCanceled(Z)V

    .line 28
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 32
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 10
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->setExpandAnimating(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 15
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->setPreviousAnimator(Landroid/animation/ValueAnimator;)V

    .line 17
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 20
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->getAnimCanceled()Z

    .line 22
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$firstChildBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 34
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :goto_0
    return-void

    .line 39
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 40
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->setCollapseAnimating(Z)V

    .line 42
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 45
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->setPreviousAnimator(Landroid/animation/ValueAnimator;)V

    .line 47
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 50
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;->getAnimCanceled()Z

    .line 52
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    goto :goto_2

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 68
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 77
    move-result p0

    .line 80
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;->setActualHeight(I)V

    .line 81
    :goto_2
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 86
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$r8$classId:I

    .line 2
    const/16 v0, 0x8

    .line 4
    const/4 v1, 0x0

    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 9
    goto :goto_0

    .line 12
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 15
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 18
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$firstChildBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer;

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isBackgroundBlurOpened(Landroid/content/Context;)Z

    .line 34
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 40
    const/4 v0, 0x4

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$firstChildBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 46
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :cond_0
    return-void

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 52
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$summaryBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 57
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationChildrenContainer$startBackgroundAnimation$1;->$firstChildBackground:Lcom/android/systemui/statusbar/notification/row/NotificationBackgroundView;

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 68
.end method
