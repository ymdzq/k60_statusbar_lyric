.class Lcom/android/settings/bluetooth/BluetoothBroadcastPinController$1;
.super Ljava/lang/Object;
.source "BluetoothBroadcastPinController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastPinController;->onBroadcastKeyGenerated()V

    return-void
.end method
