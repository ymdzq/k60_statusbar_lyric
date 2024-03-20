.class Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$3;
.super Ljava/lang/Object;
.source "MiuiSetFullBackupPasswordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->saveNoPwStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;

.field final synthetic val$newPw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$3;->this$0:Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;

    iput-object p2, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$3;->val$newPw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$3;->this$0:Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;

    const-string p2, ""

    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$3;->val$newPw:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->-$$Nest$msetBackupPassword(Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$3;->this$0:Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->local_backup_password_toast_success:I

    invoke-static {p1, v0, p2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 220
    iget-object p0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$3;->this$0:Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    goto :goto_0

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$3;->this$0:Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->local_backup_password_toast_validation_failure:I

    invoke-static {p0, p1, p2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method
