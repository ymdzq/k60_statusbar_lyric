.class Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier$1;
.super Ljava/lang/Object;
.source "MiuiStereoModeController.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier$1;->this$1:Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    .line 202
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected, deviceList size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiStereoMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier$1;->this$1:Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->-$$Nest$fputisBluetoothSpeakerConnected(Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;Z)V

    .line 206
    iget-object p1, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier$1;->this$1:Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;

    invoke-static {p1}, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->-$$Nest$fgetmBluetoothAdapter(Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 207
    iget-object p0, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier$1;->this$1:Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;

    iget-object p0, p0, Lcom/android/settings/sound/MiuiStereoModeController$BluetoothStatusRecevier;->this$0:Lcom/android/settings/sound/MiuiStereoModeController;

    invoke-static {p0}, Lcom/android/settings/sound/MiuiStereoModeController;->-$$Nest$mupdateUI(Lcom/android/settings/sound/MiuiStereoModeController;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    const-string p0, "MiuiStereoMode"

    const-string/jumbo p1, "onServiceDisconnected()"

    .line 211
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
