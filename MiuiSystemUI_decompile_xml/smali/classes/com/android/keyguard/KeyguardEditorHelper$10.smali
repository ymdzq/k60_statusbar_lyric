.class public final Lcom/android/keyguard/KeyguardEditorHelper$10;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardEditorHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardEditorHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$10;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "onServiceConnected "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$10;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 21
    iget-object p1, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 23
    const/16 v0, 0xb

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    :try_start_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$10;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 30
    sget v0, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub;->$r8$clinit:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    const/4 v0, 0x0

    .line 34
    const-string v1, "com.miui.keyguardeditor.IMiuiKeyguardEditorService"

    .line 35
    if-nez p2, :cond_0

    .line 37
    move-object v2, v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_1
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 41
    move-result-object v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    instance-of v3, v2, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

    .line 47
    if-eqz v3, :cond_1

    .line 49
    check-cast v2, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    new-instance v2, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;

    .line 54
    invoke-direct {v2, p2}, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 56
    :goto_0
    iput-object v2, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mIMiuiKeyguardEditorService:Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

    .line 59
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$10;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 61
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mIMiuiKeyguardEditorService:Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

    .line 63
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mKeyguardEditorCallback:Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;

    .line 65
    check-cast p1, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;

    .line 67
    iget-object p2, p1, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 69
    invoke-static {p2}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 71
    move-result-object p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :try_start_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 78
    iget-object p0, p1, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 81
    const/4 p1, 0x1

    .line 83
    invoke-interface {p0, p1, p2, v0, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 87
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 92
    throw p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 95
    :catch_0
    move-exception p0

    .line 96
    sget-object p1, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 97
    const-string p2, "onServiceConnected: registerCallback error "

    .line 99
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :goto_1
    return-void
    .line 104
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    sget-object p1, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->SERVICE_DISCONNECT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 2
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string v2, "onServiceDisconnected "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper$10;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 13
    iget-object v2, v2, Lcom/android/keyguard/KeyguardEditorHelper;->mIMiuiKeyguardEditorService:Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper$10;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 27
    iget-object v0, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mIMiuiKeyguardEditorService:Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

    .line 29
    check-cast v0, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;

    .line 31
    iget-object v1, v0, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 33
    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 35
    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :try_start_1
    const-string v2, "com.miui.keyguardeditor.IMiuiKeyguardEditorService"

    .line 39
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 41
    iget-object v0, v0, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 44
    const/4 v2, 0x1

    .line 46
    const/4 v3, 0x2

    .line 47
    const/4 v4, 0x0

    .line 48
    invoke-interface {v0, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper$10;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 55
    iput-object v4, v0, Lcom/android/keyguard/KeyguardEditorHelper;->mIMiuiKeyguardEditorService:Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

    .line 57
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_2

    .line 61
    :catch_0
    move-exception v0

    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 65
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :goto_0
    :try_start_3
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 69
    const-string v2, "onServiceDisconnected: unregisterCallback error "

    .line 71
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper$10;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 76
    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardEditorHelper;->reset(Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;)V

    .line 78
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$10;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 81
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->unBindEditorService()V

    .line 83
    return-void

    .line 86
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper$10;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 87
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardEditorHelper;->reset(Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;)V

    .line 89
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$10;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 92
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->unBindEditorService()V

    .line 94
    throw v0
    .line 97
.end method
