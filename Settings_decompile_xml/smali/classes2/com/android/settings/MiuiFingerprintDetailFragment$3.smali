.class Lcom/android/settings/MiuiFingerprintDetailFragment$3;
.super Ljava/lang/Object;
.source "MiuiFingerprintDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiFingerprintDetailFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiFingerprintDetailFragment;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$3;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    iput-object p2, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$3;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 110
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$3;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 112
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$3;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    sget v1, Lcom/android/settings/R$string;->delete_fingerprint_confirm_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$3;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    sget v1, Lcom/android/settings/R$string;->delete_fingerprint_confirm_msg:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$3;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    const/high16 v1, 0x1040000    # @android:string/cancel

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$3;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$3;->this$0:Lcom/android/settings/MiuiFingerprintDetailFragment;

    const v1, 0x104000a    # @android:string/ok

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MiuiFingerprintDetailFragment$3;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p0}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 117
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
