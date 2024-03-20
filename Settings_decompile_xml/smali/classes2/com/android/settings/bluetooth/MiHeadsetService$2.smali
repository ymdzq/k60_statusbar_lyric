.class Lcom/android/settings/bluetooth/MiHeadsetService$2;
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

    .line 121
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiHeadsetService$2;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    const-string v0, "MiHeadsetService"

    const-string/jumbo v1, "onHfpServiceConnected()"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiHeadsetService$2;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiHeadsetService;->-$$Nest$fgetmBluetoothHfpLock(Lcom/android/settings/bluetooth/MiHeadsetService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiHeadsetService$2;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    move-object v2, p2

    check-cast v2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/MiHeadsetService;->-$$Nest$fputmBluetoothHfp(Lcom/android/settings/bluetooth/MiHeadsetService;Landroid/bluetooth/BluetoothHeadset;)V

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiHeadsetService$2;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiHeadsetService;->sCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/IMiHeadsetInterfaceImpl;

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/IMiHeadsetInterfaceImpl;->hfpconnected(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MiHeadsetService"

    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBluetoothHfpServiceListener connected "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 127
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    const-string v0, "MiHeadsetService"

    const-string/jumbo v1, "onHfpServiceDisconnected()"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiHeadsetService$2;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiHeadsetService;->-$$Nest$fgetmBluetoothHfpLock(Lcom/android/settings/bluetooth/MiHeadsetService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiHeadsetService$2;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/settings/bluetooth/MiHeadsetService;->-$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/MiHeadsetService;I)V

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiHeadsetService$2;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    iget-object v0, v0, Lcom/android/settings/bluetooth/MiHeadsetService;->sCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/IMiHeadsetInterfaceImpl;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/IMiHeadsetInterfaceImpl;->hfpdisconnected(I)V

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiHeadsetService$2;->this$0:Lcom/android/settings/bluetooth/MiHeadsetService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiHeadsetService;->-$$Nest$fputmBluetoothHfp(Lcom/android/settings/bluetooth/MiHeadsetService;Landroid/bluetooth/BluetoothHeadset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MiHeadsetService"

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBluetoothHfpServiceListener disconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 145
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
