.class Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;
.super Ljava/lang/Object;
.source "PrivacyPasswordChooseAccessControl.java"

# interfaces
.implements Lcom/android/settings/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patternInProgress()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    iget-object v0, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mPrivacyPasswordHeaderText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->lockpattern_recording_inprogress:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->-$$Nest$fgetmFooterLeftButton(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 204
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->-$$Nest$fgetmFooterRightButton(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

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

    const-string p0, "PrivacyPasswordChooseAccessControl"

    const-string/jumbo p1, "onpatternCellAdded"

    .line 198
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPatternCleared()V
    .locals 1

    .line 193
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->-$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->-$$Nest$fgetmUiStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->NeedToConfirm:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->-$$Nest$fgetmUiStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->ConfirmWrong:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->-$$Nest$fgetmUiStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->Introduction:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->-$$Nest$fgetmUiStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->ChoiceTooShort:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected stage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->-$$Nest$fgetmUiStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "when entering the pattern ."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 181
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    sget-object p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->ChoiceTooShort:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    goto :goto_2

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mChosenPattern:Ljava/util/List;

    .line 184
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    sget-object p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->FirstChoiceValid:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    goto :goto_2

    .line 171
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    iget-object v0, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 173
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 174
    sget-object p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->ChoiceConfirmed:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    iget-object v0, p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->rightMode:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->-$$Nest$mgetConfirmTextId(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)I

    move-result v1

    iput v1, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$RightButtonMode;->text:I

    .line 175
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    goto :goto_2

    .line 177
    :cond_5
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    sget-object p1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->ConfirmWrong:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->updateStage(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    :goto_2
    return-void

    .line 172
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "null chose pattern in stage \'need to confirm"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onPatternStart()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    iget-object v1, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyPasswordLockPatternView:Lcom/android/settings/LockPatternView;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->-$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 165
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->patternInProgress()V

    return-void
.end method
