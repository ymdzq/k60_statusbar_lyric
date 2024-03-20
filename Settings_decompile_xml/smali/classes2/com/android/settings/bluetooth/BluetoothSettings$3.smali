.class Lcom/android/settings/bluetooth/BluetoothSettings$3;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const-string p1, "BluetoothSettings"

    const-string/jumbo v0, "onLeAudioServiceConnected()"

    .line 241
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    check-cast p2, Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fputmBluetoothLeAudio(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothLeAudio;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const-string v0, "BluetoothSettings"

    const-string/jumbo v1, "onLeAudioServiceDisconnected()"

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/BluetoothSettings;I)V

    .line 249
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fgetmBluetoothLeAudio(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/bluetooth/BluetoothLeAudio;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 250
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-$$Nest$fputmBluetoothLeAudio(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothLeAudio;)V

    :cond_0
    return-void
.end method
