.class Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;
.super Ljava/lang/Object;
.source "AuracastShareDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->createAudioShareDialog()Lmiuix/appcompat/app/AlertDialog;
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

    .line 344
    iput-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->replace_device_button:I

    const-string v2, "AuracastShareDialogFragment"

    const-string v3, "key_auracast_share"

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-ne v0, v1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->sendMessageDelay(IJ)V

    .line 349
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1, v6}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fputmAskPermissionClicked(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;Z)V

    .line 350
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {v1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reset flag for: key_auracast_share"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 353
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 355
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->cancel_button:I

    const/4 v1, 0x2

    if-ne p1, v0, :cond_2

    .line 356
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 357
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->onCancel()V

    .line 358
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 359
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 361
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    goto :goto_0

    .line 363
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->onPair()V

    .line 364
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1, v6}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fputmAudioSharing(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;Z)V

    .line 365
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-virtual {p1, v6, v4, v5}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->sendMessageDelay(IJ)V

    .line 366
    iget-object p1, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object v3

    iget-object v3, v3, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Enable flag for: key_auracast_share"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AuracastShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p0, p0, Lcom/android/settings/bluetooth/AuracastShareDialogFragment$4;->this$0:Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    const-wide/16 v2, 0x3a98

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->sendMessageDelay(IJ)V

    :cond_3
    :goto_0
    return-void
.end method
