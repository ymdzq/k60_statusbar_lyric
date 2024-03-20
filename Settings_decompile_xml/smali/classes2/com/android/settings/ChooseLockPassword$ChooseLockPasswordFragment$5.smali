.class Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->checkPassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 829
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZII)V
    .locals 1

    .line 831
    iget-object p3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fputmPendingLockCheck(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Landroid/os/AsyncTask;)V

    if-eqz p1, :cond_2

    .line 832
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmUserIdToSetPassword(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result p1

    if-eq p2, p1, :cond_2

    if-nez p2, :cond_0

    .line 835
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    sget p2, Lcom/android/settings/R$string;->lockpattern_pattern_same_with_owner:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 836
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmSecuritySpaceId(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 837
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    sget p2, Lcom/android/settings/R$string;->lockpattern_pattern_same_with_security_space:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 839
    :cond_1
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    sget p2, Lcom/android/settings/R$string;->lockpattern_pattern_same_with_others:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 841
    :goto_0
    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmUiStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$mshowError(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_1

    .line 843
    :cond_2
    iget-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object p0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->val$password:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$mhandleCorrectPassword(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
