.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$endNssCoveringQsMotion$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $toCover:Z

.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$endNssCoveringQsMotion$2;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$endNssCoveringQsMotion$2;->$toCover:Z

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$endNssCoveringQsMotion$2;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$endNssCoveringQsMotion$2;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 11
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    .line 14
    return-void
    .line 16
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$endNssCoveringQsMotion$2;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$endNssCoveringQsMotion$2;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 11
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mQsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    .line 14
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNssCoveringQs:Z

    .line 17
    iget-boolean p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$endNssCoveringQsMotion$2;->$toCover:Z

    .line 19
    if-eqz p0, :cond_1

    .line 21
    iget-object p0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsController;->getHeaderHeight()I

    .line 25
    move-result p0

    .line 28
    int-to-float p0, p0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$calculateNotificationsTopPadding$s95694906(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)F

    .line 31
    move-result p0

    .line 34
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->updateScrollerTopPadding(F)V

    .line 35
    return-void
    .line 38
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
