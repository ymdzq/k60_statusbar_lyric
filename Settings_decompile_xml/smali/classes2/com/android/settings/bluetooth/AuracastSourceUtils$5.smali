.class Lcom/android/settings/bluetooth/AuracastSourceUtils$5;
.super Ljava/lang/Object;
.source "AuracastSourceUtils.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/AuracastSourceUtils;->createPasswordDialog(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;BLcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;Z)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$alertDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceUtils$5;->val$alertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 242
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    .line 243
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceUtils$5;->val$alertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0, v2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastSourceUtils$5;->val$alertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0, v2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    return-void
.end method
