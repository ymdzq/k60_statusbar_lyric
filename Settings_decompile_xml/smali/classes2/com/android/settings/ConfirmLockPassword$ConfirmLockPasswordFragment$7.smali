.class Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Lcom/android/settings/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 740
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fputmPendingLockCheck(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)V

    if-eqz p1, :cond_0

    .line 745
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    invoke-static {p1, p0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$monPasswordChecked(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/String;[B)V

    goto :goto_0

    .line 748
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$7;->val$pin:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleWrongPassword(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
