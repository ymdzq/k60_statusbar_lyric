.class Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$6;
.super Ljava/lang/Object;
.source "PrivacyPasswordConfirmAccessControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->createBindXiaomiAccountDialog()V
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

    .line 720
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$6;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 724
    iget-object p2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$6;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->-$$Nest$fputmIsClickedDlg(Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;Z)V

    .line 725
    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    .line 726
    iget-object p2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$6;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    iget-object p2, p2, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p2, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setNerverRemind(Z)V

    .line 727
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$6;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    const-class v1, Lcom/android/settings/privacypassword/TransparentHelper;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "bind_account_extra"

    const-string v1, "bind_account"

    .line 728
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x10

    .line 729
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 730
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$6;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const-string p1, "binding_forever"

    .line 732
    invoke-static {p1}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsApp1UnlockBindingPopup(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "binding"

    .line 734
    invoke-static {p1}, Lcom/android/settings/privacypassword/analytics/AnalyticHelper;->statsApp1UnlockBindingPopup(Ljava/lang/String;)V

    .line 736
    :goto_0
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl$6;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
