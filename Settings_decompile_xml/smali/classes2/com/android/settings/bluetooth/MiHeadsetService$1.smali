.class Lcom/android/settings/bluetooth/MiHeadsetService$1;
.super Ljava/lang/Object;
.source "MiHeadsetService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiHeadsetService;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiHeadsetService$1;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const-string v0, "MiHeadsetService"

    const-string/jumbo v1, "onA2dpServiceConnected()"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiHeadsetService$1;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiHeadsetService;->-$$Nest$fgetmBluetoothA2dpLock(Lcom/android/settings/bluetooth/MiHeadsetService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiHeadsetService$1;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    iget-object v1, v1, Lcom/android/settings/bluetooth/MiHeadsetService;->sCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/IMiHeadsetInterfaceImpl;

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1, p1, p2}, Lcom/android/settings/bluetooth/IMiHeadsetInterfaceImpl;->a2dpconnected(ILjava/lang/Object;)V

    .line 94
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiHeadsetService$1;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/MiHeadsetService;->-$$Nest$fputmBluetoothA2dp(Lcom/android/settings/bluetooth/MiHeadsetService;Landroid/bluetooth/BluetoothA2dp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "MiHeadsetService"

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothA2dpServiceListener connected"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    const-string v0, "MiHeadsetService"

    const-string/jumbo v1, "onA2dpServiceDisconnected()"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiHeadsetService$1;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiHeadsetService;->-$$Nest$fgetmBluetoothA2dpLock(Lcom/android/settings/bluetooth/MiHeadsetService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiHeadsetService$1;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/MiHeadsetService;->-$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/MiHeadsetService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiHeadsetService$1;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    iget-object v1, v1, Lcom/android/settings/bluetooth/MiHeadsetService;->sCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/IMiHeadsetInterfaceImpl;

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/IMiHeadsetInterfaceImpl;->a2dpdisconnected(I)V

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiHeadsetService$1;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiHeadsetService;->-$$Nest$fputmBluetoothA2dp(Lcom/android/settings/bluetooth/MiHeadsetService;Landroid/bluetooth/BluetoothA2dp;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "MiHeadsetService"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBluetoothA2dpServiceListener disconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
