.class Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$10;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/settings/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->startCheckPattern(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

.field final synthetic val$pattern:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 748
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$10;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$10;->val$pattern:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 2

    .line 751
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$10;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fputmPendingLockCheck(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)V

    if-eqz p1, :cond_0

    .line 753
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$10;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$10;->val$pattern:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->accessLockPattern(Ljava/util/List;)V

    goto :goto_0

    .line 756
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$10;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$10;->val$pattern:Ljava/util/List;

    invoke-static {p1, p0, p2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$mhandleWrongPattern(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/util/List;I)V

    :goto_0
    return-void
.end method
