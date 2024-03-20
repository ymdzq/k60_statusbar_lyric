.class Lmiui/cloud/XiaomiAccountManager$1;
.super Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;
.source "XiaomiAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/cloud/XiaomiAccountManager;->getSnsAccessToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p2, p0, Lmiui/cloud/XiaomiAccountManager$1;->val$type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 0

    .line 21
    invoke-static {p1, p2}, Lmicloud/compat/independent/request/BindAccountServiceCompat;->bindAccountService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result p0

    return p0
.end method

.method protected bridge synthetic invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Lmiui/cloud/XiaomiAccountManager$1;->invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lmiui/cloud/XiaomiAccountManager$1;->val$type:Ljava/lang/String;

    invoke-static {p1, p0}, Lmicloud/compat/v18/utils/XiaomiAccountServiceProxyCompat;->getSnsAccessToken(Landroid/os/IBinder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
