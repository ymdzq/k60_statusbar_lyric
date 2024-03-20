.class Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;
.super Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;
.source "PassportLoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->makeHttpsRequest(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;->this$0:Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;

    invoke-direct {p0, p2}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

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

    .line 146
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;->this$0:Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->access$000(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;->this$0:Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->access$100(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword$1;->this$0:Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;->access$200(Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/XMPassport;->getMetaLoginData(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance p0, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    new-instance v0, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string v1, "Empty meta login data"

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/InvalidResponseException;)V

    throw p0

    :catch_0
    move-exception p0

    .line 159
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;)V

    throw v0

    :catch_1
    move-exception p0

    .line 157
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)V

    throw v0

    :catch_2
    move-exception p0

    .line 155
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AccessDeniedException;)V

    throw v0

    :catch_3
    move-exception p0

    .line 153
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/InvalidResponseException;)V

    throw v0

    :catch_4
    move-exception p0

    .line 151
    throw p0

    .line 165
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->arguments:Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->params:Lcom/xiaomi/accountsdk/utils/EasyMap;

    iget-object v2, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->sign:Ljava/lang/String;

    const-string v3, "_sign"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 166
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->arguments:Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->params:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v2, "qs"

    iget-object v3, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->qs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 167
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->arguments:Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->params:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v2, "callback"

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->callback:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    .line 168
    invoke-super {p0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$PostAsString;->execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method
