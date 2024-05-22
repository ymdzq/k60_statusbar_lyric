.class public final Lcom/android/keyguard/negative/LockScreenMagazineClient$OverlayServiceConnection;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/negative/LockScreenMagazineClient;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/negative/LockScreenMagazineClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient$OverlayServiceConnection;->this$0:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient$OverlayServiceConnection;->this$0:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 2
    sget-object v0, Lcom/android/keyguard/negative/LockScreenMagazineClient$ServiceState;->CONNECTED:Lcom/android/keyguard/negative/LockScreenMagazineClient$ServiceState;

    .line 4
    iput-object v0, p1, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mServiceState:Lcom/android/keyguard/negative/LockScreenMagazineClient$ServiceState;

    .line 6
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p1, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mDestroyed:Z

    .line 9
    sget v1, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub;->$r8$clinit:I

    .line 11
    const/4 v1, 0x0

    .line 13
    const-string v2, "com.android.keyguard.negative.IKeyguardOverlay"

    .line 14
    if-nez p2, :cond_0

    .line 16
    move-object v3, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 20
    move-result-object v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    instance-of v4, v3, Lcom/android/keyguard/negative/IKeyguardOverlay;

    .line 26
    if-eqz v4, :cond_1

    .line 28
    check-cast v3, Lcom/android/keyguard/negative/IKeyguardOverlay;

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    new-instance v3, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;

    .line 33
    invoke-direct {v3, p2}, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 35
    :goto_0
    iput-object v3, p1, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mOverlay:Lcom/android/keyguard/negative/IKeyguardOverlay;

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    const-string p2, "onServiceConnected"

    .line 42
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient$OverlayServiceConnection;->this$0:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 47
    iget-object p2, p2, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mOverlay:Lcom/android/keyguard/negative/IKeyguardOverlay;

    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 57
    const-string p2, "LockScreenMagazineClient"

    .line 58
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p0, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient$OverlayServiceConnection;->this$0:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    const-string p1, "applyWindowToken"

    .line 68
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Lcom/android/keyguard/negative/LockScreenMagazineClient;->isConnected()Z

    .line 73
    move-result p1

    .line 76
    if-nez p1, :cond_2

    .line 77
    const-string p0, "not connected"

    .line 79
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    goto :goto_1

    .line 84
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mKeyguardOverlayCallback:Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;

    .line 85
    if-nez p1, :cond_3

    .line 87
    new-instance p1, Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;

    .line 89
    invoke-direct {p1}, Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mKeyguardOverlayCallback:Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mKeyguardOverlayCallback:Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;

    .line 96
    iput-object p0, p1, Lcom/android/keyguard/negative/LockScreenMagazineClient$KeyguardOverlayCallback;->mClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 98
    iget-object v3, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mOverlay:Lcom/android/keyguard/negative/IKeyguardOverlay;

    .line 100
    check-cast v3, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;

    .line 102
    iget-object v4, v3, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 104
    invoke-static {v4}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 106
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v4, v1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 113
    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 116
    const/4 p1, 0x3

    .line 119
    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object p1, v3, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 123
    const/4 v0, 0x4

    .line 125
    const/4 v3, 0x1

    .line 126
    invoke-interface {p1, v0, v4, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 130
    iget-boolean p1, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mResumed:Z

    .line 133
    if-eqz p1, :cond_4

    .line 135
    iget-object p0, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mOverlay:Lcom/android/keyguard/negative/IKeyguardOverlay;

    .line 137
    check-cast p0, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;

    .line 139
    invoke-virtual {p0}, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;->onResume()V

    .line 141
    goto :goto_1

    .line 144
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mOverlay:Lcom/android/keyguard/negative/IKeyguardOverlay;

    .line 145
    check-cast p0, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;

    .line 147
    iget-object p1, p0, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 149
    invoke-static {p1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 151
    move-result-object p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    :try_start_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 155
    iget-object p0, p0, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 158
    const/4 v0, 0x7

    .line 160
    invoke-interface {p0, v0, p1, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 164
    goto :goto_1

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 169
    throw p0

    .line 172
    :catchall_1
    move-exception p0

    .line 173
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 177
    :catch_0
    move-exception p0

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    .line 179
    const-string v0, "applyWindowToken "

    .line 181
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 186
    move-result-object p0

    .line 189
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object p0

    .line 196
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_1
    return-void
    .line 200
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "onServiceDisconnected="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 15
    const-string v0, "LockScreenMagazineClient"

    .line 16
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p0, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient$OverlayServiceConnection;->this$0:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    .line 21
    sget-object p1, Lcom/android/keyguard/negative/LockScreenMagazineClient$ServiceState;->DISCONNECTED:Lcom/android/keyguard/negative/LockScreenMagazineClient$ServiceState;

    .line 23
    iput-object p1, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mServiceState:Lcom/android/keyguard/negative/LockScreenMagazineClient$ServiceState;

    .line 25
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mOverlay:Lcom/android/keyguard/negative/IKeyguardOverlay;

    .line 28
    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/keyguard/negative/LockScreenMagazineClient;->notifyStatusChanged(I)V

    .line 31
    return-void
    .line 34
.end method
