.class Lcom/android/settings/GxzwNewFingerprintFragment$4;
.super Ljava/lang/Object;
.source "GxzwNewFingerprintFragment.java"

# interfaces
.implements Lcom/android/settings/FingerprintAddListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GxzwNewFingerprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mActionOnAddCompletedRunnable:Ljava/lang/Runnable;

.field private mEnrollHelpInfoRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/settings/GxzwNewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    new-instance p1, Lcom/android/settings/GxzwNewFingerprintFragment$4$1;

    invoke-direct {p1, p0}, Lcom/android/settings/GxzwNewFingerprintFragment$4$1;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment$4;)V

    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->mEnrollHelpInfoRunnable:Ljava/lang/Runnable;

    .line 557
    new-instance p1, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;

    invoke-direct {p1, p0}, Lcom/android/settings/GxzwNewFingerprintFragment$4$2;-><init>(Lcom/android/settings/GxzwNewFingerprintFragment$4;)V

    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->mActionOnAddCompletedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private handleSimilarFingerprintInputed()V
    .locals 3

    .line 531
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment$4;->onFingerprintImageProcessed()V

    .line 532
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mplayStepAnimation(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmIsShowHelpInfo(Lcom/android/settings/GxzwNewFingerprintFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionTitle(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->gxzw_add_fingerprint_move_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionText(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->gxzw_add_fingerprint_move_message:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$msetContentDescription(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V

    .line 538
    :cond_0
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mvibrateDoubleClick(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    return-void
.end method

.method private onFingerprintImageProcessed()V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmIsStartFingerprint(Lcom/android/settings/GxzwNewFingerprintFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmStepView(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionTitle(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->gxzw_add_fingerprint_put_finger_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 632
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionText(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->gxzw_add_fingerprint_put_finger_message:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFingerprintCompleted()V
    .locals 4

    .line 547
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmStartEnrolling(Lcom/android/settings/GxzwNewFingerprintFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmEnrollSuccessNewEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmEnrollSuccessRtpEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v2

    const/16 v3, 0x3c

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mperformExtHapticFeedback(Lcom/android/settings/GxzwNewFingerprintFragment;III)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mplayStepAnimation(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->mActionOnAddCompletedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmIsStartFingerprint(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V

    .line 553
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmStartEnrolling(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V

    .line 554
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mshowGxzwTips(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V

    return-void
.end method

.method public addFingerprintFailed()V
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->add_fingerprint_failed_retry_text:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {v0}, Lcom/android/settings/BaseFragment;->finish()V

    .line 589
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmIsStartFingerprint(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V

    return-void
.end method

.method public addFingerprintProgress(I)V
    .locals 6

    .line 594
    const-class v0, Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v3}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmProgress(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmStartEnrolling(Lcom/android/settings/GxzwNewFingerprintFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmEnrollSuccessNewEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v3}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmEnrollSuccessRtpEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v3

    const/16 v4, 0x3c

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mperformExtHapticFeedback(Lcom/android/settings/GxzwNewFingerprintFragment;III)V

    .line 598
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    sget v1, Lcom/android/settings/R$string;->gxzw_enroll_again:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$msetContentDescription(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->mEnrollHelpInfoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 600
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment$4;->onFingerprintImageProcessed()V

    .line 601
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmIsStartFingerprint(Lcom/android/settings/GxzwNewFingerprintFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmIsStartFingerprint(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V

    .line 603
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, v3}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmTotalStepNum(Lcom/android/settings/GxzwNewFingerprintFragment;I)V

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmProgress(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 606
    invoke-direct {p0}, Lcom/android/settings/GxzwNewFingerprintFragment$4;->handleSimilarFingerprintInputed()V

    return-void

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmIsShowHelpInfo(Lcom/android/settings/GxzwNewFingerprintFragment;Z)V

    .line 610
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionTitle(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v4, Lcom/android/settings/R$string;->gxzw_add_fingerprint_put_finger_title:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 613
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmTotalStepNum(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v4

    sub-int/2addr v4, p1

    mul-int/lit8 v4, v4, 0x14

    iget-object v5, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v5}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmTotalStepNum(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v5

    div-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v0, v4}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;I)V

    .line 614
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v4

    if-gtz v4, :cond_3

    move v4, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v4}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v4

    :goto_0
    invoke-static {v0, v4}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;I)V

    .line 615
    const-class v0, Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v5}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmTotalStepNum(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmTotalStepNum(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v2

    sub-int/2addr v2, p1

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x14

    iget-object v4, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v4}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmTotalStepNum(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v4

    div-int/2addr v2, v4

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v0, v2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmNextInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;I)V

    .line 617
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmNextInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v2

    if-gtz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmNextInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v1

    :goto_1
    invoke-static {v0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmNextInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;I)V

    .line 618
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mplayStepAnimation(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    .line 620
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0, p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmProgress(Lcom/android/settings/GxzwNewFingerprintFragment;I)V

    .line 621
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmNextInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmInputStep(Lcom/android/settings/GxzwNewFingerprintFragment;I)V

    .line 622
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1, v3}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmFailTime(Lcom/android/settings/GxzwNewFingerprintFragment;I)V

    .line 623
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmOnInputFailedAlertDialog(Lcom/android/settings/GxzwNewFingerprintFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mdismissAlertDialog(Lcom/android/settings/GxzwNewFingerprintFragment;Lmiuix/appcompat/app/AlertDialog;)V

    .line 624
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmOnInputFailedAlertDialog(Lcom/android/settings/GxzwNewFingerprintFragment;Lmiuix/appcompat/app/AlertDialog;)V

    .line 625
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionText(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->gxzw_add_fingerprint_put_finger_message:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 3

    .line 485
    const-class v0, Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrollmentHelp helpMsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";helpString"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0x401

    if-eq p1, v0, :cond_1

    .line 513
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 514
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fputmEnrollHelpInfoText(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V

    .line 515
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmHandler(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->mEnrollHelpInfoRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    .line 501
    :cond_1
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionTitle(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->gxzw_add_fingerprint_move_title:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 502
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionText(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->gxzw_add_fingerprint_move_message:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 503
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$msetContentDescription(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V

    .line 504
    sget-boolean p1, Lcom/android/settings/utils/FingerprintUtils;->IS_SUPPORT_LINEAR_MOTOR_VIBRATE:Z

    if-eqz p1, :cond_2

    .line 505
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmEnrollFailNewEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result p2

    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmEnrollFailRtpEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result p0

    invoke-static {p1, p2, p0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mperformExtHapticFeedback(Lcom/android/settings/GxzwNewFingerprintFragment;III)V

    goto :goto_0

    .line 508
    :cond_2
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mvibrateDoubleClick(Lcom/android/settings/GxzwNewFingerprintFragment;)V

    :goto_0
    return-void

    .line 495
    :cond_3
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionTitle(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->add_fingerprint_move_fast:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 496
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionText(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->gxzw_add_fingerprint_message:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 497
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$msetContentDescription(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V

    .line 498
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmEnrollFailNewEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result p2

    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmEnrollFailRtpEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result p0

    invoke-static {p1, p2, p0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mperformExtHapticFeedback(Lcom/android/settings/GxzwNewFingerprintFragment;III)V

    return-void

    .line 489
    :cond_4
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionTitle(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->add_fingerprint_dirty_fingerprint:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 490
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmInstructionText(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->gxzw_add_fingerprint_message:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 491
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$msetContentDescription(Lcom/android/settings/GxzwNewFingerprintFragment;Ljava/lang/String;)V

    .line 492
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmEnrollFailNewEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result p2

    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$4;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmEnrollFailRtpEffectId(Lcom/android/settings/GxzwNewFingerprintFragment;)I

    move-result p0

    invoke-static {p1, p2, p0, v1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$mperformExtHapticFeedback(Lcom/android/settings/GxzwNewFingerprintFragment;III)V

    return-void
.end method
