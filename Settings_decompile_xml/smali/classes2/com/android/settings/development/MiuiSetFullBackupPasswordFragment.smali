.class public Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "MiuiSetFullBackupPasswordFragment.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private cancelText:Landroid/widget/TextView;

.field private confirBtn:Landroid/widget/TextView;

.field mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfirmNewPw:Landroid/widget/EditText;

.field private mCurrentLayout:Landroid/widget/LinearLayout;

.field private mCurrentPw:Landroid/widget/EditText;

.field mCurrestStatus:I

.field private mNewPw:Landroid/widget/EditText;

.field private mResetLayout:Landroid/widget/LinearLayout;

.field private modifyText:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$msetBackupPassword(Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateViews(Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->updateViews()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    const-string v0, "MiuiSetFullBackupPasswordFragment"

    .line 25
    iput-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method private saveClearPwStatus()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mCurrentPw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 282
    invoke-direct {p0, v0, v1}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "password set successfully"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->backup_set_clear_success:I

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->TAG:Ljava/lang/String;

    const-string v2, "failure; password mismatch?"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->backup_set_error_pw:I

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method

.method private saveModePwStatus()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mCurrentPw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mNewPw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mConfirmNewPw:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 253
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->local_backup_password_toast_confirmation_mismatch:I

    invoke-static {p0, v0, v3}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return-void

    .line 259
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->backup_set_null_pw:I

    invoke-static {p0, v0, v3}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return-void

    .line 266
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->local_backup_password_toast_success:I

    invoke-static {v0, v1, v3}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->backup_set_error_pw:I

    invoke-static {p0, v0, v3}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method

.method private saveNoPwStatus()V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mNewPw:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mConfirmNewPw:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->local_backup_password_toast_confirmation_mismatch:I

    invoke-static {p0, v0, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return-void

    .line 190
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->backup_set_null_pw:I

    invoke-static {p0, v0, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return-void

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "local_auto_backup"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v4, v2

    :cond_2
    if-eqz v4, :cond_3

    .line 202
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->backup_set_new_pw_confirm_hint:I

    .line 203
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->backup_set_new_pw_confirm_summary:I

    .line 204
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 205
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->backup_set_new_exit:I

    new-instance v3, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$4;

    invoke-direct {v3, p0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$4;-><init>(Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;)V

    .line 206
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->backup_set_new_continue:I

    new-instance v3, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$3;-><init>(Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 230
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_3
    const-string v1, ""

    .line 232
    invoke-direct {p0, v1, v0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->local_backup_password_toast_success:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    goto :goto_0

    .line 240
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->local_backup_password_toast_validation_failure:I

    invoke-static {p0, v0, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method

.method private setActionBarTitle(I)V
    .locals 1

    .line 152
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method private setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 146
    :catch_0
    iget-object p0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->TAG:Ljava/lang/String;

    const-string p1, "Unable to communicate with backup manager"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private setText(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setVisibilty(IIII)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mResetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mCurrentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p2, :cond_0

    .line 161
    iget-object p1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mCurrentPw:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mNewPw:Landroid/widget/EditText;

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 163
    iget-object p0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mConfirmNewPw:Landroid/widget/EditText;

    invoke-virtual {p0, p4}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private sethintText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mCurrentPw:Landroid/widget/EditText;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mNewPw:Landroid/widget/EditText;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mConfirmNewPw:Landroid/widget/EditText;

    invoke-direct {p0, p1, p3}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setText(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method private updateViews()V
    .locals 5

    .line 79
    iget v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mCurrestStatus:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    sget v0, Lcom/android/settings/R$string;->backup_set_clear_title:I

    invoke-direct {p0, v0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setActionBarTitle(I)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->confirBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    invoke-direct {p0, v3, v4, v4, v3}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setVisibilty(IIII)V

    .line 119
    sget v0, Lcom/android/settings/R$string;->current_backup_pw_prompt:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->sethintText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    sget v0, Lcom/android/settings/R$string;->backup_set_modify_title:I

    invoke-direct {p0, v0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setActionBarTitle(I)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->confirBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    invoke-direct {p0, v3, v4, v4, v4}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setVisibilty(IIII)V

    .line 112
    sget v0, Lcom/android/settings/R$string;->backup_set_enter_old_pw:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->backup_set_enter_new_pw:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->backup_set_enter_new_pw_again:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->sethintText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    sget v0, Lcom/android/settings/R$string;->local_backup_password_title:I

    invoke-direct {p0, v0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setActionBarTitle(I)V

    .line 89
    invoke-direct {p0, v4, v3, v3, v3}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setVisibilty(IIII)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->confirBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->cancelText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$1;-><init>(Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->modifyText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment$2;-><init>(Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 82
    :cond_3
    sget v0, Lcom/android/settings/R$string;->local_backup_password_title:I

    invoke-direct {p0, v0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setActionBarTitle(I)V

    .line 83
    invoke-direct {p0, v3, v4, v3, v4}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->setVisibilty(IIII)V

    .line 84
    sget v0, Lcom/android/settings/R$string;->backup_set_new_pw_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->backup_set_pw_confirm_title:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->sethintText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/BaseFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 45
    sget p0, Lcom/android/settings/R$layout;->set_backup_pw:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onSave()V
    .locals 2

    .line 128
    iget v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mCurrestStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->saveClearPwStatus()V

    goto :goto_0

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->saveModePwStatus()V

    goto :goto_0

    .line 130
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->saveNoPwStatus()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onStart()V

    .line 71
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102001a    # @android:id/button2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->confirBtn:Landroid/widget/TextView;

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->updateViews()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/settings/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p2, "backup"

    .line 51
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 54
    :try_start_0
    invoke-interface {p2}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    iput p2, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mCurrestStatus:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 56
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 58
    :goto_1
    sget p2, Lcom/android/settings/R$id;->current_backup_pw_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mCurrentLayout:Landroid/widget/LinearLayout;

    .line 59
    sget p2, Lcom/android/settings/R$id;->reset_backup_pw_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mResetLayout:Landroid/widget/LinearLayout;

    .line 61
    sget p2, Lcom/android/settings/R$id;->current_backup_pw:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mCurrentPw:Landroid/widget/EditText;

    .line 62
    sget p2, Lcom/android/settings/R$id;->new_backup_pw:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mNewPw:Landroid/widget/EditText;

    .line 63
    sget p2, Lcom/android/settings/R$id;->confirm_backup_pw:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->mConfirmNewPw:Landroid/widget/EditText;

    .line 64
    sget p2, Lcom/android/settings/R$id;->cancel_backup_pw:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->cancelText:Landroid/widget/TextView;

    .line 65
    sget p2, Lcom/android/settings/R$id;->modify_backup_pw:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/development/MiuiSetFullBackupPasswordFragment;->modifyText:Landroid/widget/TextView;

    return-void
.end method
