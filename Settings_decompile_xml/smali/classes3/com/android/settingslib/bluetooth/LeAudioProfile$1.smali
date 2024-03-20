.class Lcom/android/settingslib/bluetooth/LeAudioProfile$1;
.super Ljava/lang/Object;
.source "LeAudioProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/bluetooth/LeAudioProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/LeAudioProfile;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/LeAudioProfile;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LeAudioProfile$1;->this$0:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/LeAudioProfile$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 271
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "LeAudioProfile"

    const-string v1, "disable LE Audio and enable classical for A2DP and HFP"

    .line 275
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LeAudioProfile$1;->this$0:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LeAudioProfile$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->disableLeAudioandEnableClassical(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
