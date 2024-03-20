.class Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Lcom/android/settings/FingerprintIdentifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->registerFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 4

    .line 580
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getLockoutAttepmpDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getWrongFingerAttempts(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 583
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v1, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->setWrongFingerAttempts(Landroid/content/Context;I)V

    .line 584
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmFingerErrorCount(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fputmFingerErrorCount(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)V

    const/4 v1, 0x5

    if-ge v2, v1, :cond_1

    if-ge v0, v1, :cond_1

    .line 586
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iget-object v1, v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->lockpattern_need_to_unlock_wrong:I

    invoke-static {v0, v1, v2}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$mhandleContentDescription(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Landroid/widget/TextView;I)V

    .line 587
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->settingTextShake()V

    .line 588
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 589
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0xc8

    .line 590
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fputmFingerErrorCount(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)V

    .line 594
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$minitErrorFingerprintText(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    .line 595
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/FingerprintHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->cancelIdentify()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onIdentified(I)V
    .locals 4

    .line 601
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->getLockoutAttepmpDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    .line 603
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p1, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->isVerifyAndActivate(IILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iget-object v0, p1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mHeaderTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->confirm_privacy_password_fingerprint:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$mhandleContentDescription(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Landroid/widget/TextView;I)V

    .line 605
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->accessLockPattern()V

    .line 606
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/FingerprintHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->cancelIdentify()V

    goto :goto_0

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fputmFingerErrorCount(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)V

    .line 609
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$minitFirstUseFingerprintText(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    .line 610
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fputmFingerprintId(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)V

    .line 611
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$5;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/FingerprintHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->cancelIdentify()V

    :goto_0
    return-void
.end method
