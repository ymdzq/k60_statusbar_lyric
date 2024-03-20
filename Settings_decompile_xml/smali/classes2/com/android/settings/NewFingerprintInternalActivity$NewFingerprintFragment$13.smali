.class Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Lcom/android/settings/FingerprintAddListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mEnrollHelpInfoRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    new-instance p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13$1;

    invoke-direct {p1, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13$1;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;)V

    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->mEnrollHelpInfoRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private handleSimilarFingerprintInputed()V
    .locals 2

    .line 735
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->onFingerprintImageProcessed()V

    .line 736
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmIsShowHelpInfo(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v0, v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->add_fingerprint_similar_fingerprint_input_error_msg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 738
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$msetContentDescription(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onFingerprintImageProcessed()V
    .locals 5

    .line 816
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmIsStartFingerprint(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v1, "start"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 818
    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string v3, "end"

    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    .line 819
    iget-object v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v2, v2, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionImageView:Landroid/widget/ImageView;

    filled-new-array {v2}, [Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-instance v3, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13$2;

    invoke-direct {v3, p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13$2;-><init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;)V

    invoke-interface {v2, v3}, Lmiuix/animation/IStateStyle;->addListener(Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    .line 826
    invoke-interface {p0, v0, v1, v2}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-void
.end method


# virtual methods
.method public addFingerprintCompleted()V
    .locals 4

    .line 748
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmStartEnrolling(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v0, v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v0, v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmBackImage(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmBackImage(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v0, v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    invoke-virtual {v0}, Lcom/android/settings/MutedVideoView;->isPlaying()Z

    move-result v0

    const-string v1, "finger_enroll_success_motion"

    if-nez v0, :cond_2

    .line 756
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0, v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$mgenerateViewUri(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v3, v3, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    invoke-static {v0, v1, v3}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$mplayVideo(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;Lcom/android/settings/MutedVideoView;)V

    goto :goto_0

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0, v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$mgenerateViewUri(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmNextVideoUri(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;)V

    .line 760
    :goto_0
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->onFingerprintAddCompleted()V

    .line 761
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0, v2}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmIsStartFingerprint(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Z)V

    .line 762
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {p0, v2}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmStartEnrolling(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Z)V

    return-void
.end method

.method public addFingerprintFailed()V
    .locals 3

    .line 767
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v0, v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->add_fingerprint_failed_retry_text:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    .line 773
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {p0, v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmIsStartFingerprint(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Z)V

    return-void
.end method

.method public addFingerprintProgress(I)V
    .locals 7

    .line 778
    const-class v0, Lcom/android/settings/NewFingerprintInternalActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "progress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v4}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmProgress(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmStartEnrolling(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 780
    :cond_0
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->mEnrollHelpInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 781
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->onFingerprintImageProcessed()V

    .line 782
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmIsStartFingerprint(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 783
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v1, v2}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmIsStartFingerprint(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Z)V

    .line 784
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v1, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmTotalStepNum(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmProgress(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 787
    invoke-direct {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->handleSimilarFingerprintInputed()V

    return-void

    .line 789
    :cond_2
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3

    .line 790
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v1, v4}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmIsShowHelpInfo(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Z)V

    .line 791
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v1, v1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    sget v5, Lcom/android/settings/R$string;->add_fingerprint_put_finger_title:I

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 792
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$msetContentDescription(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)V

    .line 794
    :cond_3
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$sfgetSTEPS_NUM()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v6}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmTotalStepNum(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v6

    sub-int/2addr v6, p1

    add-int/2addr v6, v2

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v6}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmTotalStepNum(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v6

    div-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v1, v5}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V

    .line 795
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v5

    if-gtz v5, :cond_4

    move v5, v2

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v5}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v5

    :goto_0
    invoke-static {v1, v5}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V

    .line 796
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v5}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v3}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmTotalStepNum(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$sfgetSTEPS_NUM()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v3}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmTotalStepNum(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v3

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x2

    mul-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v3}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmTotalStepNum(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v3

    div-int/2addr v1, v3

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    invoke-static {v0, v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputnextInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V

    .line 798
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetnextInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v1

    if-gtz v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetnextInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v2

    :goto_1
    invoke-static {v0, v2}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputnextInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V

    .line 799
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "finger_enroll_motion_%02d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$mgenerateViewUri(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v2, v2, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mStepVideoView:Lcom/android/settings/MutedVideoView;

    invoke-static {v0, v1, v2}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$mplayVideo(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Landroid/net/Uri;Lcom/android/settings/MutedVideoView;)V

    .line 801
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0, p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmProgress(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V

    .line 802
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetnextInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V

    .line 803
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {p1, v4}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmFailTime(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;I)V

    .line 804
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v0, p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {p1, v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$mdismissAlertDialog(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Lmiuix/appcompat/app/AlertDialog;)V

    .line 805
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mOnInputFailedAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 807
    iget-object v0, p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionTitle:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result p1

    const/16 v1, 0xf

    if-ge p1, v1, :cond_6

    .line 808
    sget p1, Lcom/android/settings/R$string;->add_fingerprint_put_finger_title:I

    goto :goto_2

    .line 809
    :cond_6
    sget p1, Lcom/android/settings/R$string;->add_fingerprint_edge_instruction_title:I

    .line 807
    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 810
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mInstructionText:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmInputStep(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)I

    move-result p0

    if-ge p0, v1, :cond_7

    .line 811
    sget p0, Lcom/android/settings/R$string;->add_fingerprint_put_finger_msg:I

    goto :goto_3

    .line 812
    :cond_7
    sget p0, Lcom/android/settings/R$string;->add_fingerprint_put_finger_edge_msg:I

    .line 810
    :goto_3
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 3

    .line 717
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fputmEnrollHelpInfoText(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;Ljava/lang/String;)V

    .line 719
    const-class v0, Lcom/android/settings/NewFingerprintInternalActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "helpMsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; helpString="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$13;->mEnrollHelpInfoRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
