.class Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;
.super Ljava/lang/Object;
.source "LocalBluetoothLeBroadcast.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const-string p1, "LocalBluetoothLeBroadcast"

    const-string v0, "Bluetooth service connected"

    .line 103
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$fgetmIsProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    check-cast p2, Landroid/bluetooth/BluetoothLeBroadcast;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$fputmService(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;Landroid/bluetooth/BluetoothLeBroadcast;)V

    .line 107
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;Z)V

    .line 108
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$fgetmExecutor(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;)Ljava/util/concurrent/Executor;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$fgetmBroadcastCallback(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;)Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    .line 109
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    move-result-object p1

    .line 110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 111
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    invoke-static {p2, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$mupdateBroadcastInfoFromBroadcastMetadata(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$mregisterContentObserver(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const-string p1, "LocalBluetoothLeBroadcast"

    const-string v0, "Bluetooth service disconnected"

    .line 120
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$fgetmIsProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;Z)V

    .line 124
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$fgetmBroadcastCallback(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;)Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    .line 125
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast$1;->this$0:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->-$$Nest$munregisterContentObserver(Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;)V

    :cond_0
    return-void
.end method
