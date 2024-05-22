.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$initDismissView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$initDismissView$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$initDismissView$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iget-object v0, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    move-result v3

    .line 26
    move v4, v1

    .line 27
    :goto_0
    if-ge v4, v3, :cond_1

    .line 28
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object v5

    .line 33
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 34
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 36
    move-result v6

    .line 39
    const/16 v7, 0x8

    .line 40
    if-eq v6, v7, :cond_0

    .line 42
    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 44
    if-eqz v6, :cond_0

    .line 46
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    .line 48
    move-result v6

    .line 51
    if-eqz v6, :cond_0

    .line 52
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isVisible(Landroid/view/View;)Z

    .line 57
    move-result v6

    .line 60
    if-eqz v6, :cond_0

    .line 61
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 66
    goto :goto_0

    .line 68
    :cond_1
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMiuiClearAllListener:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;

    .line 69
    if-eqz v3, :cond_2

    .line 71
    const/4 v4, 0x2

    .line 73
    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;->onStart(ILjava/util/List;)V

    .line 74
    :cond_2
    new-instance v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$clearUnimportantNotifications$1;

    .line 77
    invoke-direct {v3, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutExtKt$clearUnimportantNotifications$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Ljava/util/ArrayList;)V

    .line 79
    invoke-virtual {p1, v0, v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->performDismissAllAnimations(Ljava/util/ArrayList;ZLjava/util/function/Consumer;)V

    .line 82
    goto :goto_1

    .line 85
    :cond_3
    iget-object p1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNotificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 86
    const/4 v0, 0x1

    .line 88
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearNotifications(IZ)V

    .line 89
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$initDismissView$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 92
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mDismissView:Lcom/android/systemui/statusbar/views/DismissView;

    .line 94
    if-eqz p0, :cond_4

    .line 96
    new-instance p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$initDismissView$1$1;

    .line 98
    invoke-direct {p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$initDismissView$1$1;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/miui/systemui/widget/CircleAndTickAnimView;->stopAnimator()V

    .line 103
    iput-boolean v1, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->isNormalDrawableShow:Z

    .line 106
    iget-object v0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 108
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 110
    iget-object p0, p0, Lcom/miui/systemui/widget/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 113
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 115
    :cond_4
    const-class p0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 118
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 120
    move-result-object p0

    .line 123
    check-cast p0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 124
    check-cast p0, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 126
    const/16 p1, 0x5d

    .line 128
    const/4 v0, 0x0

    .line 130
    const/16 v2, 0xd4

    .line 131
    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(ILjava/lang/String;II)V

    .line 133
    return-void
    .line 136
.end method
