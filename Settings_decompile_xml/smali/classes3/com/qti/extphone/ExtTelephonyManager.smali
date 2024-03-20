.class public Lcom/qti/extphone/ExtTelephonyManager;
.super Ljava/lang/Object;
.source "ExtTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/qti/extphone/ExtTelephonyManager;


# instance fields
.field private mConnection:Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

.field private mServiceCbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/extphone/ServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExtTelephonyService(Lcom/qti/extphone/ExtTelephonyManager;)Lcom/qti/extphone/IExtPhone;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnected(Lcom/qti/extphone/ExtTelephonyManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmExtTelephonyService(Lcom/qti/extphone/ExtTelephonyManager;Lcom/qti/extphone/IExtPhone;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/qti/extphone/ExtTelephonyManager;->mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/qti/extphone/ExtTelephonyManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/qti/extphone/ExtTelephonyManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyConnected(Lcom/qti/extphone/ExtTelephonyManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/extphone/ExtTelephonyManager;->notifyConnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDisconnected(Lcom/qti/extphone/ExtTelephonyManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/qti/extphone/ExtTelephonyManager;->notifyDisconnected()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;-><init>(Lcom/qti/extphone/ExtTelephonyManager;Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection-IA;)V

    iput-object v0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mConnection:Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;

    .line 77
    iput-object v1, p0, Lcom/qti/extphone/ExtTelephonyManager;->mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mServiceCbs:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    .line 123
    iput-object p1, p0, Lcom/qti/extphone/ExtTelephonyManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 124
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "ExtTelephonyManager() ..."

    .line 125
    invoke-direct {p0, p1}, Lcom/qti/extphone/ExtTelephonyManager;->log(Ljava/lang/String;)V

    return-void

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private addServiceCallback(Lcom/qti/extphone/ServiceCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mServiceCbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mServiceCbs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 3

    const-class v0, Lcom/qti/extphone/ExtTelephonyManager;

    monitor-enter v0

    .line 132
    :try_start_0
    const-class v1, Lcom/qti/extphone/ExtTelephonyManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    :try_start_1
    sget-object v2, Lcom/qti/extphone/ExtTelephonyManager;->mInstance:Lcom/qti/extphone/ExtTelephonyManager;

    if-nez v2, :cond_1

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 136
    new-instance v2, Lcom/qti/extphone/ExtTelephonyManager;

    invoke-direct {v2, p0}, Lcom/qti/extphone/ExtTelephonyManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/qti/extphone/ExtTelephonyManager;->mInstance:Lcom/qti/extphone/ExtTelephonyManager;

    goto :goto_0

    .line 138
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context is null"

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_1
    :goto_0
    sget-object p0, Lcom/qti/extphone/ExtTelephonyManager;->mInstance:Lcom/qti/extphone/ExtTelephonyManager;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 142
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    const-string p0, "ExtTelephonyManager"

    .line 1234
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyConnected()V
    .locals 1

    .line 239
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mServiceCbs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/ServiceCallback;

    .line 240
    invoke-interface {v0}, Lcom/qti/extphone/ServiceCallback;->onConnected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyDisconnected()V
    .locals 1

    .line 245
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mServiceCbs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qti/extphone/ServiceCallback;

    .line 246
    invoke-interface {v0}, Lcom/qti/extphone/ServiceCallback;->onDisconnected()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abortIncrementalScan(I)Z
    .locals 3

    .line 442
    invoke-virtual {p0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    const-string v1, "ExtTelephonyManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "service not connected!"

    .line 443
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 447
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

    invoke-interface {p0, p1}, Lcom/qti/extphone/IExtPhone;->abortIncrementalScan(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "abortIncrementalScan, remote exception"

    .line 449
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public connectService(Lcom/qti/extphone/ServiceCallback;)Z
    .locals 4

    .line 181
    invoke-virtual {p0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mServiceCbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Creating ExtTelephonyService. If not started yet, start ..."

    .line 182
    invoke-direct {p0, v0}, Lcom/qti/extphone/ExtTelephonyManager;->log(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/qti/extphone/ExtTelephonyManager;->addServiceCallback(Lcom/qti/extphone/ServiceCallback;)V

    .line 184
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 185
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.qti.phone"

    const-string v3, "com.qti.phone.ExtTelephonyService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 187
    iget-object v0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qti/extphone/ExtTelephonyManager;->mConnection:Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bind Service result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qti/extphone/ExtTelephonyManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-direct {p0, p1}, Lcom/qti/extphone/ExtTelephonyManager;->addServiceCallback(Lcom/qti/extphone/ServiceCallback;)V

    .line 192
    invoke-virtual {p0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 193
    invoke-interface {p1}, Lcom/qti/extphone/ServiceCallback;->onConnected()V

    :cond_1
    :goto_0
    return v1
.end method

.method public disconnectService(Lcom/qti/extphone/ServiceCallback;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-interface {p1}, Lcom/qti/extphone/ServiceCallback;->onDisconnected()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mServiceCbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mServiceCbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/qti/extphone/ExtTelephonyManager;->mServiceCbs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 232
    iget-object p1, p0, Lcom/qti/extphone/ExtTelephonyManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mConnection:Lcom/qti/extphone/ExtTelephonyManager$ExtTelephonyServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string p1, "Set ServiceConnected to false"

    .line 233
    invoke-direct {p0, p1}, Lcom/qti/extphone/ExtTelephonyManager;->log(Ljava/lang/String;)V

    .line 234
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method

.method public getCiwlanConfig(I)Lcom/qti/extphone/CiwlanConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1090
    invoke-virtual {p0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    const-string v1, "ExtTelephonyManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "service not connected!"

    .line 1091
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1095
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

    invoke-interface {p0, p1}, Lcom/qti/extphone/IExtPhone;->getCiwlanConfig(I)Lcom/qti/extphone/CiwlanConfig;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "getCiwlanConfig ended in remote exception"

    .line 1097
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v2
.end method

.method public getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;
    .locals 2

    .line 856
    :try_start_0
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

    invoke-interface {p0}, Lcom/qti/extphone/IExtPhone;->getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ExtTelephonyManager"

    const-string v1, "getImeiInfo ended in remote exception"

    .line 858
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetworkSelectionMode(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    .locals 3

    .line 588
    invoke-virtual {p0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    const-string v1, "ExtTelephonyManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "service not connected!"

    .line 589
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 593
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

    invoke-interface {p0, p1, p2}, Lcom/qti/extphone/IExtPhone;->getNetworkSelectionMode(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "getNetworkSelectionMode, remote exception"

    .line 595
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v2
.end method

.method public getPropertyValueBool(Ljava/lang/String;Z)Z
    .locals 3

    .line 304
    invoke-virtual {p0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    const-string v1, "ExtTelephonyManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "service not connected!"

    .line 305
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPropertyValueBool: property="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/extphone/ExtTelephonyManager;->log(Ljava/lang/String;)V

    .line 310
    :try_start_0
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

    invoke-interface {p0, p1, p2}, Lcom/qti/extphone/IExtPhone;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "getPropertyValueBool, remote exception"

    .line 312
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return p2
.end method

.method public isEpdgOverCellularDataSupported(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 967
    invoke-virtual {p0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    const-string v1, "ExtTelephonyManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "service not connected!"

    .line 968
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 972
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

    invoke-interface {p0, p1}, Lcom/qti/extphone/IExtPhone;->isEpdgOverCellularDataSupported(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "isEpdgOverCellularDataSupported, remote exception"

    .line 974
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public isPrimaryCarrierSlotId(I)Z
    .locals 3

    .line 345
    invoke-virtual {p0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    const-string v1, "ExtTelephonyManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "service not connected!"

    .line 346
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 350
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

    invoke-interface {p0, p1}, Lcom/qti/extphone/IExtPhone;->isPrimaryCarrierSlotId(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "isPrimaryCarrierSlotId, remote exception"

    .line 352
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public isServiceConnected()Z
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isSmartDdsSwitchFeatureAvailable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 865
    :try_start_0
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

    invoke-interface {p0}, Lcom/qti/extphone/IExtPhone;->isSmartDdsSwitchFeatureAvailable()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 867
    :catch_0
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "isSmartDdsSwitchFeatureAvailable ended in remote exception"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public performIncrementalScan(I)Z
    .locals 3

    .line 421
    invoke-virtual {p0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    const-string v1, "ExtTelephonyManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "service not connected!"

    .line 422
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 426
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

    invoke-interface {p0, p1}, Lcom/qti/extphone/IExtPhone;->performIncrementalScan(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "performIncrementalScan, remote exception"

    .line 428
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/ExtPhoneCallbackListener;[I)Lcom/qti/extphone/Client;
    .locals 3

    .line 1177
    invoke-virtual {p0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    const-string v1, "ExtTelephonyManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "service not connected!"

    .line 1178
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 1182
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/qti/extphone/ExtTelephonyManager;->mExtTelephonyService:Lcom/qti/extphone/IExtPhone;

    iget-object p2, p2, Lcom/qti/extphone/ExtPhoneCallbackListener;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/qti/extphone/IExtPhone;->registerCallbackWithEvents(Ljava/lang/String;Lcom/qti/extphone/IExtPhoneCallback;[I)Lcom/qti/extphone/Client;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "registerCallbackWithEvents, remote exception"

    .line 1185
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v2
.end method
