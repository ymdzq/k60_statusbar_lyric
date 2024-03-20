.class Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;
.super Ljava/lang/Object;
.source "AudioShareDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/AudioShareDialogFragment;->createAudioShareDialog()Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->replace_device_button:I

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 352
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3, v4}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->sendMessageDelay(IJ)V

    .line 353
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fputmAskPermissionClicked(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Z)V

    .line 354
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 355
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 357
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->cancel_button:I

    if-ne p1, v0, :cond_2

    .line 358
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 359
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->onCancel()V

    .line 360
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 361
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmDialog(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 363
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    goto :goto_0

    .line 365
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->onPair()V

    .line 366
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1, v2}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fputmAudioSharing(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Z)V

    .line 367
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->sendMessageDelay(IJ)V

    .line 368
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$5;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->sendMessageDelay(IJ)V

    :cond_3
    :goto_0
    return-void
.end method
