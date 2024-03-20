.class Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;
.super Landroid/bluetooth/le/ScanCallback;
.source "MiuiFastConnectV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiFastConnectV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeScanCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)V
    .locals 0

    .line 1060
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;-><init>(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)V

    return-void
.end method


# virtual methods
.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 3

    if-eqz p2, :cond_5

    .line 1064
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetDBG(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Z

    move-result p1

    const-string v0, "MiuiFastConnectV2_Settings"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onScanResult: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->getAccountKeyFromScanResult(Landroid/bluetooth/le/ScanResult;)[B

    move-result-object p1

    .line 1066
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetDBG(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "result: scrambledAccountKey"

    invoke-static {v1, p1}, Lcom/android/settings/bluetooth/MiuiAdvDataConstantsV2;->printBytes(Ljava/lang/String;[B)V

    .line 1067
    :cond_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetDBG(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAccountKeyCloudScrambled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetmAccountKeyCloudScrambled(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_4

    .line 1068
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetmAccountKeyCloudScrambled(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$smbytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1069
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->getDeviceIdFromScanResult(Landroid/bluetooth/le/ScanResult;)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fputmDeviceId(Lcom/android/settings/bluetooth/MiuiFastConnectV2;[B)V

    .line 1070
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetDBG(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "found the device "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fputmRemoteDeviceLE(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Landroid/bluetooth/BluetoothDevice;)V

    .line 1072
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetmContext(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetmGattCallback(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fputmBluetoothGatt(Lcom/android/settings/bluetooth/MiuiFastConnectV2;Landroid/bluetooth/BluetoothGatt;)V

    .line 1073
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetmBluetoothLeScanner(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiFastConnectV2$LeScanCallback;->this$0:Lcom/android/settings/bluetooth/MiuiFastConnectV2;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiFastConnectV2;->-$$Nest$fgetmScanCallback(Lcom/android/settings/bluetooth/MiuiFastConnectV2;)Landroid/bluetooth/le/ScanCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "the device not found !!!!"

    .line 1075
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method
