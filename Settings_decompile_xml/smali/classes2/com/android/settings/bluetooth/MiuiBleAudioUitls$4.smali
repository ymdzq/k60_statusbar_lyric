.class Lcom/android/settings/bluetooth/MiuiBleAudioUitls$4;
.super Ljava/lang/Object;
.source "MiuiBleAudioUitls.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiBleAudioUitls;->createPasswordDialog(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;BLcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;

.field final synthetic val$srcId:B


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$4;->val$callback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;

    iput-byte p2, p0, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$4;->val$srcId:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "MiuiBleAudioSourceInfoFragment"

    const-string p2, "The dialog BUTTON_Negative clicked !"

    .line 430
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$4;->val$callback:Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;

    if-eqz p1, :cond_0

    .line 432
    iget-byte p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$4;->val$srcId:B

    invoke-interface {p1, p0}, Lcom/android/settings/bluetooth/MiuiBleAudioUitls$PasswordDialogEventCallback;->onNegativeButtonClicked(B)V

    :cond_0
    return-void
.end method
