.class Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;
.super Landroid/os/CountDownTimer;
.source "PrivacyPasswordConfirmAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;JJ)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fputmTimestart(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Z)V

    .line 472
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmPrivacyPasswordLockPatternView(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->disableInput()V

    .line 473
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fputmNumWrongConfirmAttempts(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)V

    .line 474
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->NeedToUnlock:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V

    .line 475
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmBackgroundLayout(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->main_page_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 476
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmStop(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$mregisterFingerprintDelayed(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fputmTimestart(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Z)V

    .line 462
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmPrivacyPasswordLockPatternView(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/LockPatternView;->disableInput()V

    .line 463
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iget-object v1, v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->lockpattern_too_many_failed_confirmation_attempts_header:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$mhandleContentDescription(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Landroid/widget/TextView;I)V

    const-wide/16 v0, 0x3e8

    .line 464
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 465
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$4;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iget-object p2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordFooterTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$plurals;->lockpattern_too_many_failed_confirmation_attempts_footer:I

    .line 466
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 465
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
