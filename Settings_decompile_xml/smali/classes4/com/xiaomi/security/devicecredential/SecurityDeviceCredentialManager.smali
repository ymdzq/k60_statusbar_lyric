.class public Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;
.super Ljava/lang/Object;
.source "SecurityDeviceCredentialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnForceReloadFinishedListener;,
        Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;,
        Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;,
        Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    }
.end annotation


# static fields
.field private static sService:Landroid/os/IBinder;


# direct methods
.method public static forceReload()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .line 160
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getService()Landroid/os/IBinder;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnForceReloadFinishedListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnForceReloadFinishedListener;-><init>(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$1;)V

    .line 165
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    const-string v4, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager.v1"

    .line 168
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 170
    invoke-interface {v0, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 171
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 174
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 178
    :try_start_1
    invoke-static {v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnForceReloadFinishedListener;->access$500(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnForceReloadFinishedListener;)V
    :try_end_1
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 181
    iget v3, v2, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;->errorCode:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_0

    const-string v2, "SecurityDeviceCredentialManager"

    const-string v3, "forceReload: Hardware service not ready, retry..."

    .line 186
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1f4

    .line 187
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 182
    :cond_0
    throw v2

    :catchall_0
    move-exception v0

    .line 173
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 174
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 175
    throw v0
.end method

.method public static getSecurityDeviceId()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getService()Landroid/os/IBinder;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;-><init>(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$1;)V

    .line 76
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 77
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    const-string v4, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager.v1"

    .line 79
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 81
    invoke-interface {v0, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 82
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 85
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 89
    :try_start_1
    invoke-static {v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;->access$100(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnGetSecurityDeviceIdFinishListener;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 91
    iget v3, v2, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;->errorCode:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_0

    const-string v2, "SecurityDeviceCredentialManager"

    const-string v3, "getSecurityDeviceId: Hardware service not ready, retry..."

    .line 96
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1f4

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 92
    :cond_0
    throw v2

    :catchall_0
    move-exception v0

    .line 84
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 85
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 86
    throw v0
.end method

.method private static declared-synchronized getService()Landroid/os/IBinder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    const-class v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;

    monitor-enter v0

    .line 200
    :try_start_0
    sget-object v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sService:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: sService != null. "

    .line 201
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sService:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    goto :goto_0

    :cond_0
    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: sService == null. "

    .line 204
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: binder not alive. "

    .line 208
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v1, "miui.sedc"

    .line 211
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sService:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: NULL binder, retry..."

    .line 213
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x1f4

    .line 214
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_2
    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: binder alive. "

    .line 218
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_2
    sget-object v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sService:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isThisDeviceSupported()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getService()Landroid/os/IBinder;

    move-result-object v0

    .line 55
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 56
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v3, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager.v1"

    .line 58
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 59
    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 60
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 61
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v3, v4

    .line 63
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 64
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception v0

    .line 63
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 64
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 65
    throw v0
.end method

.method public static sign(I[BZ)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getService()Landroid/os/IBinder;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;-><init>(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$1;)V

    .line 109
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    const-string v4, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager.v1"

    .line 112
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 114
    invoke-virtual {v2, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v4

    .line 116
    :goto_1
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x3

    .line 117
    invoke-interface {v0, v5, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 118
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 121
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 125
    :try_start_1
    invoke-static {v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;->access$300(Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OnSignFinishedListener;)[B

    move-result-object p0
    :try_end_1
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    .line 127
    iget v3, v2, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;->errorCode:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_1

    const-string v2, "SecurityDeviceCredentialManager"

    const-string v3, "sign: Hardware service not ready, retry..."

    .line 132
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1f4

    .line 133
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 128
    :cond_1
    throw v2

    :catchall_0
    move-exception p0

    .line 120
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 121
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 122
    throw p0
.end method

.method public static signWithDeviceCredential([BZ)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 144
    invoke-static {v0, p0, p1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sign(I[BZ)[B

    move-result-object p0

    return-object p0
.end method
