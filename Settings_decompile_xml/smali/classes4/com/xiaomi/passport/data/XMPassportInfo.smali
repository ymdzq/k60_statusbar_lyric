.class public Lcom/xiaomi/passport/data/XMPassportInfo;
.super Lcom/xiaomi/accountsdk/account/data/PassportInfo;
.source "XMPassportInfo.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/accountsdk/account/data/PassportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static build(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/XMPassportInfo;
    .locals 6

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "passportapi"

    :cond_0
    move-object v3, p1

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "XMPassportInfo"

    if-nez v0, :cond_1

    const-string p0, "no xiaomi account"

    .line 32
    invoke-static {v2, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 36
    :cond_1
    invoke-virtual {p1, p0, v3}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "service token result is null"

    .line 38
    invoke-static {v2, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 41
    :cond_2
    iget-object v4, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v5, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eq v4, v5, :cond_3

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "service token result error code = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " error msg: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 46
    :cond_3
    iget-object v1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 48
    new-instance v1, Lcom/xiaomi/passport/utils/CUserIdUtil;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/utils/CUserIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/xiaomi/passport/utils/CUserIdUtil;->getCUserId()Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    goto :goto_0

    :cond_4
    move-object v2, v1

    .line 50
    :goto_0
    new-instance p0, Lcom/xiaomi/passport/data/XMPassportInfo;

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    iget-object v5, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/passport/data/XMPassportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public refreshAuthToken(Landroid/content/Context;)V
    .locals 5

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v2

    const-string v3, "XMPassportInfo"

    if-nez v2, :cond_0

    const-string p0, "no xiaomi account"

    .line 58
    invoke-static {v3, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_0
    new-instance v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/PassportInfo;->getServiceId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/PassportInfo;->getServiceToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->serviceToken(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/PassportInfo;->getSecurity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->security(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v2

    .line 66
    invoke-virtual {v1, p1, v2}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    .line 67
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/account/data/PassportInfo;->getServiceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "service token result is null"

    .line 69
    invoke-static {v3, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_1
    iget-object v0, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eq v0, v1, :cond_2

    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "service token result error code = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_2
    iget-object v0, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/account/data/PassportInfo;->setServiceToken(Ljava/lang/String;)V

    .line 77
    iget-object p1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PassportInfo;->setSecurity(Ljava/lang/String;)V

    return-void
.end method
