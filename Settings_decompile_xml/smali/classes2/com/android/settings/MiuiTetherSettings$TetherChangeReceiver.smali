.class Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiTetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .line 1522
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiTetherSettings;Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/MiuiTetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1525
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    .line 1527
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x1f4

    if-eqz v0, :cond_1

    const-string p1, "availableArray"

    .line 1529
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string/jumbo v0, "tetherArray"

    .line 1531
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v3, "erroredArray"

    .line 1533
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1535
    iget-object v4, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {v4}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetisClickUsb(Lcom/android/settings/MiuiTetherSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1536
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mclearDelayMsg(Lcom/android/settings/MiuiTetherSettings;)V

    .line 1537
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmDelayHandler(Lcom/android/settings/MiuiTetherSettings;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1538
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmDelayHandler(Lcom/android/settings/MiuiTetherSettings;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1539
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "intent"

    .line 1540
    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1541
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1542
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmDelayHandler(Lcom/android/settings/MiuiTetherSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 1545
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 1546
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 1547
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1545
    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 1549
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 1550
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1, v3}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputmMassStorageActive(Lcom/android/settings/MiuiTetherSettings;Z)V

    .line 1551
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetisClickUsb(Lcom/android/settings/MiuiTetherSettings;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;Z)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "android.intent.action.MEDIA_UNSHARED"

    .line 1552
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 1553
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1, v4}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputmMassStorageActive(Lcom/android/settings/MiuiTetherSettings;Z)V

    .line 1554
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetisClickUsb(Lcom/android/settings/MiuiTetherSettings;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;Z)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 1555
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1556
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetisClickUsb(Lcom/android/settings/MiuiTetherSettings;)Z

    move-result p1

    const-string v0, "connected"

    if-eqz p1, :cond_4

    .line 1557
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputtmpUsbConnected(Lcom/android/settings/MiuiTetherSettings;Z)V

    .line 1558
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mclearDelayMsg(Lcom/android/settings/MiuiTetherSettings;)V

    .line 1559
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmDelayHandler(Lcom/android/settings/MiuiTetherSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1561
    :cond_4
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputmUsbConnected(Lcom/android/settings/MiuiTetherSettings;Z)V

    .line 1562
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;)V

    goto/16 :goto_1

    :cond_5
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 1564
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1565
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmBluetoothEnableForTether(Lcom/android/settings/MiuiTetherSettings;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 1567
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_7

    const/16 p2, 0xa

    if-eq p1, p2, :cond_7

    const/16 p2, 0xc

    if-eq p1, p2, :cond_6

    goto :goto_0

    .line 1569
    :cond_6
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmBluetoothPan(Lcom/android/settings/MiuiTetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothPan;

    if-eqz p1, :cond_8

    .line 1571
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmCm(Lcom/android/settings/MiuiTetherSettings;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p2}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmTetherChoice(Lcom/android/settings/MiuiTetherSettings;)I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {v0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmStartTetheringCallback(Lcom/android/settings/MiuiTetherSettings;)Lcom/android/settings/MiuiTetherSettings$OnStartTetheringCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {v1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/MiuiTetherSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 1572
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1, v4}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputmBluetoothEnableForTether(Lcom/android/settings/MiuiTetherSettings;Z)V

    goto :goto_0

    .line 1578
    :cond_7
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1, v4}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fputmBluetoothEnableForTether(Lcom/android/settings/MiuiTetherSettings;Z)V

    .line 1585
    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetisClickUsb(Lcom/android/settings/MiuiTetherSettings;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;Z)V

    goto :goto_1

    :cond_9
    const-string p2, "android.bluetooth.action.STATE_CHANGED"

    .line 1586
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1587
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetisClickUsb(Lcom/android/settings/MiuiTetherSettings;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;Z)V

    goto :goto_1

    :cond_a
    const-string p2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    .line 1588
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "MiuiTetherSettings"

    const-string/jumbo p2, "update statue when receive bluetoothPan state changed!"

    .line 1589
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetisClickUsb(Lcom/android/settings/MiuiTetherSettings;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mupdateState(Lcom/android/settings/MiuiTetherSettings;Z)V

    :cond_b
    :goto_1
    return-void
.end method
