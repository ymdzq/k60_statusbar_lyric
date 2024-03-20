.class public abstract Lcom/xiaomi/accountsdk/request/PassportLoginRequest;
.super Lcom/xiaomi/accountsdk/request/PassportRequest;
.source "PassportLoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassToken;,
        Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;
    }
.end annotation


# instance fields
.field private final request:Lcom/xiaomi/accountsdk/request/PassportRequest;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/PassportRequest;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->makeHttpsRequest(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->request:Lcom/xiaomi/accountsdk/request/PassportRequest;

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loginType:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->getLoginType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PassportLoginRequest"

    invoke-static {p1, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->getLoginType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->request:Lcom/xiaomi/accountsdk/request/PassportRequest;

    instance-of v2, v2, Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "withCA"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "withoutCA"

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "login/%s/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/accountsdk/account/PassportCAConstants;->IMPL_VERSION:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->startStat()V

    .line 103
    :try_start_0
    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->request:Lcom/xiaomi/accountsdk/request/PassportRequest;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportRequest;->execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->finishStat()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 110
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->statError(Ljava/lang/Exception;)V

    .line 111
    throw p0

    :catch_1
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaomi/account/exception/PassportCAException;

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->statError(Ljava/lang/Exception;)V

    .line 108
    :cond_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_1
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->finishStat()V

    .line 114
    throw p0
.end method

.method protected abstract getLoginType()Ljava/lang/String;
.end method

.method public isResultFromCA()Z
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->request:Lcom/xiaomi/accountsdk/request/PassportRequest;

    instance-of v0, p0, Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;

    .line 119
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;->isRequest2Used()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected abstract makeHttpsRequest(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
.end method
