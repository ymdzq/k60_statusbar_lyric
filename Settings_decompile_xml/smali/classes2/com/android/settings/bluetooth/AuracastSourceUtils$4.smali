.class Lcom/android/settings/bluetooth/AuracastSourceUtils$4;
.super Ljava/lang/Object;
.source "AuracastSourceUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/AuracastSourceUtils;->createPasswordDialog(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;BLcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;Z)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;

.field final synthetic val$srcId:B


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceUtils$4;->val$callback:Lcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;

    iput-byte p2, p0, Lcom/android/settings/bluetooth/AuracastSourceUtils$4;->val$srcId:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "AuracastSourceUtils"

    const-string v0, "The dialog onCancel"

    .line 222
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastSourceUtils$4;->val$callback:Lcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;

    if-eqz p1, :cond_0

    .line 224
    iget-byte p0, p0, Lcom/android/settings/bluetooth/AuracastSourceUtils$4;->val$srcId:B

    invoke-interface {p1, p0}, Lcom/android/settings/bluetooth/AuracastSourceUtils$PasswordDialogEventCallback;->onNegativeButtonClicked(B)V

    :cond_0
    return-void
.end method
