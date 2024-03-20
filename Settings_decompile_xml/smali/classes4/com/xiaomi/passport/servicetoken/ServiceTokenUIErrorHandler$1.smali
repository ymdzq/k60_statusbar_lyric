.class final Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;
.super Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;
.source "ServiceTokenUIErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler;->handleWithServiceTokenUIResponse(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;Landroid/app/Activity;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$future:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

.field final synthetic val$previousResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$previousResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$future:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUIResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 52
    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$future:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    new-instance p2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$previousResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    invoke-direct {p2, p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    .line 53
    invoke-virtual {p2, p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorCode(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p0

    .line 52
    invoke-virtual {p1, p0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->setServerData(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$future:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$previousResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-virtual {p1, p0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->setServerData(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onRequestContinued()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$future:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$previousResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->setServerData(Ljava/lang/Object;)V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$previousResult:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    iget-object v0, v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    .line 40
    invoke-static {p1, v0}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;->fromAMBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    .line 41
    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUIErrorHandler$1;->val$future:Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->setServerData(Ljava/lang/Object;)V

    return-void
.end method
