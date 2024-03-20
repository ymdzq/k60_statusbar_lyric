.class Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/settings/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method static bridge synthetic -$$Nest$mhandleFirstChoiceValid(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->handleFirstChoiceValid(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkPassword(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-$$Nest$fgetmSecuritySpaceId(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v1

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lmiui/securityspace/CrossUserUtils;->hasAirSpace(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->handleFirstChoiceValid(Ljava/util/List;)V

    goto :goto_1

    .line 281
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v1, v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 282
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-$$Nest$fgetmPendingLockCheck(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-$$Nest$fgetmPendingLockCheck(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    .line 289
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getUserList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    .line 290
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;-><init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;Ljava/util/List;)V

    .line 286
    invoke-static {v0, p1, v2, v3, v4}, Lcom/android/settings/LockPatternChecker;->checkPatternForUsers(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;Ljava/util/List;Landroid/content/Context;Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;)Landroid/os/AsyncTask;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-$$Nest$fputmPendingLockCheck(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;Landroid/os/AsyncTask;)V

    :goto_1
    return-void
.end method

.method private handleFirstChoiceValid(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 316
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    return-void
.end method

.method private patternInProgress()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSubHeaderText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->lockpattern_recording_inprogress:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mResetButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 325
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setNextEnable(Z)V

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

    .line 0
    return-void
.end method

.method public onPatternCleared()V
    .locals 1

    .line 249
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-static {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v1, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 261
    :cond_0
    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithOwnerUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithSecuritySpaceUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithOtherSpaceUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 269
    :cond_1
    sget-object p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, p1, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 272
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected stage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " when entering the pattern."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 265
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_2

    .line 267
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->checkPassword(Ljava/util/List;)V

    goto :goto_2

    .line 254
    :cond_5
    :goto_1
    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 256
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 257
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_2

    .line 259
    :cond_6
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    :goto_2
    return-void

    .line 254
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "null chosen pattern in stage \'need to confirm"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onPatternStart()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v1, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-static {v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 245
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->patternInProgress()V

    return-void
.end method
