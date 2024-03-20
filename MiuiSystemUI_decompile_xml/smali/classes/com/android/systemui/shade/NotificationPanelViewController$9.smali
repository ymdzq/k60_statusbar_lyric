.class public final Lcom/android/systemui/shade/NotificationPanelViewController$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final synthetic val$onAnimationFinished:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$9;->val$onAnimationFinished:Ljava/lang/Runnable;

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
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$9;->mCancelled:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$9;->mCancelled:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$9;->val$onAnimationFinished:Ljava/lang/Runnable;

    .line 12
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$9;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$9;->val$onAnimationFinished:Ljava/lang/Runnable;

    .line 20
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->getMaxPanelHeight()I

    .line 22
    move-result v0

    .line 25
    int-to-float v0, v0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->createHeightAnimator(FF)Landroid/animation/ValueAnimator;

    .line 28
    move-result-object v0

    .line 31
    const-wide/16 v1, 0x1c2

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 34
    iget-object v1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    .line 37
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 39
    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$10;

    .line 42
    invoke-direct {v1, p1, p0}, Lcom/android/systemui/shade/NotificationPanelViewController$10;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Ljava/lang/Runnable;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 47
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 50
    invoke-virtual {p1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 53
    :goto_0
    return-void
    .line 56
.end method
