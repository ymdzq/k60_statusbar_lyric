.class Lcom/android/settings/bluetooth/BluetoothPairingController$1;
.super Ljava/lang/Object;
.source "BluetoothPairingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingController;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 564
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/BluetoothPairingController;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 566
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
