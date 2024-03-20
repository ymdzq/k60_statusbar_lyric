.class Lmicloud/compat/independent/request/RequestEnvBuilderCompat$1$1;
.super Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;
.source "RequestEnvBuilderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmicloud/compat/independent/request/RequestEnvBuilderCompat$1;->queryEncryptedAccountName()Ljava/lang/String;
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
.field final synthetic this$0:Lmicloud/compat/independent/request/RequestEnvBuilderCompat$1;

.field final synthetic val$account:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lmicloud/compat/independent/request/RequestEnvBuilderCompat$1;Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lmicloud/compat/independent/request/RequestEnvBuilderCompat$1$1;->this$0:Lmicloud/compat/independent/request/RequestEnvBuilderCompat$1;

    iput-object p3, p0, Lmicloud/compat/independent/request/RequestEnvBuilderCompat$1$1;->val$account:Landroid/accounts/Account;

    invoke-direct {p0, p2}, Lcom/xiaomi/micloudsdk/remote/RemoteMethodInvoker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 0

    .line 69
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

    .line 66
    invoke-virtual {p0, p1}, Lmicloud/compat/independent/request/RequestEnvBuilderCompat$1$1;->invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected invokeRemoteMethod(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lmicloud/compat/independent/request/RequestEnvBuilderCompat$1$1;->this$0:Lmicloud/compat/independent/request/RequestEnvBuilderCompat$1;

    iget-object v0, v0, Lmicloud/compat/independent/request/RequestEnvBuilderCompat$1;->val$requestEnv:Lmicloud/compat/independent/request/IRequestEnvBuilderCompat$RequestEnv;

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/RequestContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lmicloud/compat/independent/request/RequestEnvBuilderCompat$1$1;->val$account:Landroid/accounts/Account;

    invoke-interface {v0, v1, p1, p0}, Lmicloud/compat/independent/request/IRequestEnvBuilderCompat$RequestEnv;->getEncryptedUserId(Landroid/content/Context;Landroid/os/IBinder;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
