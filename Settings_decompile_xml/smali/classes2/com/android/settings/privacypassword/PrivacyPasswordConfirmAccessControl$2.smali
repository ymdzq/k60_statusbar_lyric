.class Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Lcom/android/settings/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;
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

    .line 139
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    const-string p0, "PrivacyPasswordConfirmAccessControl"

    const-string/jumbo p1, "onPatternCellAdded"

    .line 142
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPatternCleared()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmPrivacyPasswordLockPatternView(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/LockPatternView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->checkPattern(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmFingerprintId(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)I

    move-result p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p1, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->activateFingerprint(IILandroid/content/Context;)V

    .line 155
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->accessLockPattern()V

    goto :goto_1

    .line 158
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmNumWrongConfirmAttempts(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fputmNumWrongConfirmAttempts(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;I)V

    const/4 p1, 0x5

    if-lt v0, p1, :cond_2

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    .line 160
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iget-object p1, p1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setLockoutAttepmpDeadline(J)V

    .line 161
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$munregisterFingerprint(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    .line 162
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->handleAttemptLockout(J)V

    .line 163
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$misBindAccount(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "binding"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "no_binding"

    :goto_0
    invoke-static {p0}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsPrivateMistakeReachMax(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_2
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->settingTextShake()V

    .line 168
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    sget-object v0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;->NeedToUnlockWrong:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;

    invoke-virtual {p1, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$Stage;)V

    .line 169
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$mpostClearPatternRunnable(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)V

    :goto_1
    return-void
.end method

.method public onPatternStart()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmPrivacyPasswordLockPatternView(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Lcom/android/settings/LockPatternView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
