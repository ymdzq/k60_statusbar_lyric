.class public Lcom/android/settings/SimpleDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SimpleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SimpleDialogFragment$AlertDialogFragmentBuilder;
    }
.end annotation


# instance fields
.field private mCancelable:Z

.field private mMessage:Ljava/lang/String;

.field private mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNegativeButtonTextRes:I

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonTextRes:I

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/SimpleDialogFragment;->mCancelable:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "type"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SimpleDialogFragment;->mType:I

    const-string/jumbo v0, "msg_res_id"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimpleDialogFragment;->mMessage:Ljava/lang/String;

    const-string/jumbo v0, "title"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimpleDialogFragment;->mTitle:Ljava/lang/String;

    const-string v0, "cancelable"

    const/4 v1, 0x1

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/SimpleDialogFragment;->mCancelable:Z

    return-void

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "no argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 66
    iget p1, p0, Lcom/android/settings/SimpleDialogFragment;->mType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 84
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/SimpleDialogFragment;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    iget-boolean p0, p0, Lcom/android/settings/SimpleDialogFragment;->mCancelable:Z

    invoke-virtual {p1, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object p1

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown dialog type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/SimpleDialogFragment;->mType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/SimpleDialogFragment;->mMessage:Ljava/lang/String;

    .line 70
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/SimpleDialogFragment;->mCancelable:Z

    .line 71
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/SimpleDialogFragment;->mTitle:Ljava/lang/String;

    .line 72
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 73
    iget v0, p0, Lcom/android/settings/SimpleDialogFragment;->mPositiveButtonTextRes:I

    if-lez v0, :cond_2

    .line 74
    iget-object v1, p0, Lcom/android/settings/SimpleDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    :cond_2
    iget v0, p0, Lcom/android/settings/SimpleDialogFragment;->mNegativeButtonTextRes:I

    if-lez v0, :cond_3

    .line 78
    iget-object p0, p0, Lcom/android/settings/SimpleDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    :cond_3
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 102
    iget-object p0, p0, Lcom/android/settings/SimpleDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p0, :cond_0

    .line 103
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/android/settings/SimpleDialogFragment;->mNegativeButtonTextRes:I

    .line 110
    iput-object p2, p0, Lcom/android/settings/SimpleDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/android/settings/SimpleDialogFragment;->mPositiveButtonTextRes:I

    .line 116
    iput-object p2, p0, Lcom/android/settings/SimpleDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method
