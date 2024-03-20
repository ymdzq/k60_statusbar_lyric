.class Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/settings/LockPatternChecker$OnCheckForUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->checkPassword(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;

    iput-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;->val$pattern:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZII)V
    .locals 1

    .line 293
    iget-object p3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;

    iget-object p3, p3, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-$$Nest$fputmPendingLockCheck(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;Landroid/os/AsyncTask;)V

    .line 294
    iget-object p3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;

    iget-object p3, p3, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object p3, p3, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/settings/LockPatternView;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_2

    .line 295
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;

    iget-object p1, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-$$Nest$fgetmUserIdToSetPassword(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result p1

    if-eq p2, p1, :cond_2

    if-nez p2, :cond_0

    .line 297
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;

    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithOwnerUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;

    iget-object p1, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-$$Nest$fgetmSecuritySpaceId(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 299
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;

    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithSecuritySpaceUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 301
    :cond_1
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;

    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->SameWithOtherSpaceUser:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;->this$1:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;

    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1$1;->val$pattern:Ljava/util/List;

    invoke-static {p1, p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;->-$$Nest$mhandleFirstChoiceValid(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;Ljava/util/List;)V

    :goto_0
    return-void
.end method
