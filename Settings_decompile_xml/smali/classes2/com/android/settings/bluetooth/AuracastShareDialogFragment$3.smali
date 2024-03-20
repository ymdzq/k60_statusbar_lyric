.class Lcom/android/settings/bluetooth/AuracastShareDialogFragment$3;
.super Ljava/lang/Object;
.source "AuracastShareDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->askPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 314
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmClassicConnectClicked(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 315
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->onCancel()V

    .line 317
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$3;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuracastShareDialogFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
