.class Lcom/android/settings/MiuiCryptKeeperSettings$2;
.super Ljava/lang/Object;
.source "MiuiCryptKeeperSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiCryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiCryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiCryptKeeperSettings;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/settings/MiuiCryptKeeperSettings$2;->this$0:Lcom/android/settings/MiuiCryptKeeperSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 120
    iget-object p1, p0, Lcom/android/settings/MiuiCryptKeeperSettings$2;->this$0:Lcom/android/settings/MiuiCryptKeeperSettings;

    const/16 v0, 0x37

    invoke-static {p1, v0}, Lcom/android/settings/MiuiCryptKeeperSettings;->-$$Nest$mrunKeyguardConfirmation(Lcom/android/settings/MiuiCryptKeeperSettings;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/android/settings/MiuiCryptKeeperSettings$2;->this$0:Lcom/android/settings/MiuiCryptKeeperSettings;

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->crypt_keeper_dialog_need_password_title:I

    .line 123
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->crypt_keeper_dialog_need_password_message:I

    .line 124
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a    # @android:string/ok

    const/4 v2, 0x0

    .line 125
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/MiuiCryptKeeperSettings;->-$$Nest$fputmAlertDialog(Lcom/android/settings/MiuiCryptKeeperSettings;Lmiuix/appcompat/app/AlertDialog;)V

    .line 127
    iget-object p0, p0, Lcom/android/settings/MiuiCryptKeeperSettings$2;->this$0:Lcom/android/settings/MiuiCryptKeeperSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiCryptKeeperSettings;->-$$Nest$fgetmAlertDialog(Lcom/android/settings/MiuiCryptKeeperSettings;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
