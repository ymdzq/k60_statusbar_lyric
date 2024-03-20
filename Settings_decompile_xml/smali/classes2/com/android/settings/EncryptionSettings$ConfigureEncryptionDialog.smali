.class Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;
.super Ljava/lang/Object;
.source "EncryptionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EncryptionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigureEncryptionDialog"
.end annotation


# instance fields
.field private mCheckBoxStatus:Z

.field private mConfigureConfirmed:Z

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field final synthetic this$0:Lcom/android/settings/EncryptionSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/EncryptionSettings;)V
    .locals 5

    .line 242
    iput-object p1, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->this$0:Lcom/android/settings/EncryptionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 245
    invoke-static {p1}, Lcom/android/settings/EncryptionSettings;->-$$Nest$fgetmEncryptionEnabled(Lcom/android/settings/EncryptionSettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->mCheckBoxStatus:Z

    const/high16 v1, 0x1040000    # @android:string/cancel

    const v2, 0x1010355    # @android:attr/alertDialogIcon

    const-string v3, "EncryptionSettings"

    if-eqz p1, :cond_0

    const-string p1, "checkbox: enabled, prepare the close dialog"

    .line 248
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->security_encryption_close_dialog_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 251
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->security_encryption_close_dialog_info:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 252
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a    # @android:string/ok

    .line 253
    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 254
    invoke-virtual {p1, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_0
    const-string p1, "checkbox: not enabled, prepare set up dialog"

    .line 257
    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->security_encryption_alert_dialog_title_first:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 260
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$string;->security_encryption_alert_dialog_info_first:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 261
    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->security_encryption_diaglog_continue:I

    .line 262
    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 263
    invoke-virtual {p1, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 266
    :goto_0
    iget-object p1, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/EncryptionSettings;Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;-><init>(Lcom/android/settings/EncryptionSettings;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 276
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->mConfigureConfirmed:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 281
    iget-object p1, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->this$0:Lcom/android/settings/EncryptionSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/EncryptionSettings;->-$$Nest$fputmDialogShow(Lcom/android/settings/EncryptionSettings;Z)V

    .line 283
    iget-boolean p1, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->mConfigureConfirmed:Z

    if-eqz p1, :cond_1

    .line 284
    iput-boolean v0, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->mConfigureConfirmed:Z

    .line 286
    iget-boolean p1, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->mCheckBoxStatus:Z

    const-string v0, "EncryptionSettings"

    if-eqz p1, :cond_0

    const-string p1, "close the device encryption"

    .line 287
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object p1, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->this$0:Lcom/android/settings/EncryptionSettings;

    const/16 v0, 0x65

    invoke-static {p1, v0}, Lcom/android/settings/EncryptionSettings;->-$$Nest$mlaunchConfirmationFragment(Lcom/android/settings/EncryptionSettings;I)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "set up new lock password"

    .line 290
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.MiuiSecurityChooseUnlock"

    .line 293
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "use_lock_password_to_encrypt_device"

    const/4 v1, 0x1

    .line 294
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->this$0:Lcom/android/settings/EncryptionSettings;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 298
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->this$0:Lcom/android/settings/EncryptionSettings;

    invoke-static {p0}, Lcom/android/settings/EncryptionSettings;->-$$Nest$mupdateEncryptionEnabled(Lcom/android/settings/EncryptionSettings;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->this$0:Lcom/android/settings/EncryptionSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/EncryptionSettings;->-$$Nest$fputmDialogShow(Lcom/android/settings/EncryptionSettings;Z)V

    .line 271
    iget-object p0, p0, Lcom/android/settings/EncryptionSettings$ConfigureEncryptionDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
