.class Lcom/android/settings/bluetooth/AudioShareDialogFragment$2;
.super Ljava/lang/Object;
.source "AudioShareDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/AudioShareDialogFragment;->askPermission()V
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

    .line 294
    iput-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$2;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 297
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$2;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p1

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 298
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$2;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmAudioShareController(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->onPair()V

    .line 299
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$2;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fputmClassicConnectClicked(Lcom/android/settings/bluetooth/AudioShareDialogFragment;Z)V

    .line 300
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareDialogFragment$2;->this$0:Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->-$$Nest$fgetmPairingDialogActivity(Lcom/android/settings/bluetooth/AudioShareDialogFragment;)Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    return-void
.end method
