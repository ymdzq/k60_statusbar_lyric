.class final Lcom/xiaomi/passport/servicetoken/AMUtilImpl;
.super Ljava/lang/Object;
.source "AMUtilImpl.java"

# interfaces
.implements Lcom/xiaomi/passport/servicetoken/IAMUtil;


# instance fields
.field private final amKeys:Lcom/xiaomi/passport/servicetoken/AMKeys;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/AMKeys;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 20
    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;->amKeys:Lcom/xiaomi/passport/servicetoken/AMKeys;

    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "amKeys == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAuthToken(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p0

    return-object p0
.end method

.method public getCUserId(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    .line 40
    :try_start_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;->amKeys:Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/AMKeys;->getAmUserDataKeyCUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "AMUtilImpl"

    const-string p2, "getSlh"

    .line 42
    invoke-static {p1, p2, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPh(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    .line 62
    :try_start_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;->amKeys:Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-virtual {p0, p2}, Lcom/xiaomi/passport/servicetoken/AMKeys;->getAmUserDataKeyPh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "AMUtilImpl"

    const-string p2, "getSlh"

    .line 64
    invoke-static {p1, p2, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlh(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    .line 51
    :try_start_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;->amKeys:Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-virtual {p0, p2}, Lcom/xiaomi/passport/servicetoken/AMKeys;->getAmUserDataKeySlh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "AMUtilImpl"

    const-string p2, "getSlh"

    .line 53
    invoke-static {p1, p2, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 0

    .line 26
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;->amKeys:Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/AMKeys;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 27
    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;->amKeys:Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-virtual {p0}, Lcom/xiaomi/passport/servicetoken/AMKeys;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public peekAuthToken(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    .line 80
    :try_start_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "AMUtilImpl"

    const-string p2, "peedAuthToken"

    .line 82
    invoke-static {p1, p2, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
