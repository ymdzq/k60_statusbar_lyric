.class Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$1;
.super Ljava/lang/Object;
.source "MiuiBleAudioSourceInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->initButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "MiuiBleAudioSourceInfoFragment"

    const-string v0, "broadcast update button clicked !"

    .line 257
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$fgetmBleBroadcastSourceInfo(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;)Landroid/bluetooth/BleBroadcastSourceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BleBroadcastSourceInfo;->getSourceId()B

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;->-$$Nest$mshowPasswordDialog(Lcom/android/settings/bluetooth/MiuiBleAudioSourceInfoFragment;Landroid/bluetooth/BluetoothDevice;B)V

    :cond_0
    return-void
.end method
