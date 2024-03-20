.class Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$3;
.super Ljava/lang/Object;
.source "MiuiBluetoothBroadcastAudioSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "refresh icon clicked and restart start scanning! mIsScanning = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fgetmIsScanning(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiBluetoothBroadcastAudioSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fgetmIsScanning(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fgetmLeBroadcastAssistant(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fgetmLeBroadcastAssistant(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getBassClientConnectedDevices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "No connected bass devices"

    .line 232
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->auracast_scan_not_support:I

    invoke-static {p0, p1, v1}, Lcom/android/settings/bluetooth/ToastUtil;->show(Landroid/content/Context;II)V

    return-void

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p1, v1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$fputmIsScanning(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;Z)V

    .line 237
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$mremoveSourcePreference(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V

    .line 238
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$menableScanning(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings$3;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;->-$$Nest$mdisableScanning(Lcom/android/settings/bluetooth/MiuiBluetoothBroadcastAudioSettings;)V

    :goto_0
    return-void
.end method
