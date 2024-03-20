.class Lcom/android/settings/bluetooth/BluetoothAudioShareController$1;
.super Ljava/lang/Object;
.source "BluetoothAudioShareController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothAudioShareController;->onCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAudioShareController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothAudioShareController;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 74
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
