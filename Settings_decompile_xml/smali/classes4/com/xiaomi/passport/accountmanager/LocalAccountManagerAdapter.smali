.class Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;
.super Ljava/lang/Object;
.source "LocalAccountManagerAdapter.java"

# interfaces
.implements Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;


# instance fields
.field private mAccountManager:Lcom/xiaomi/accounts/AccountManager;

.field private final mServiceTokenUtil:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerServiceTokenUtil;

    invoke-direct {v0}, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerServiceTokenUtil;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;->mServiceTokenUtil:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    .line 30
    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;->mAccountManager:Lcom/xiaomi/accounts/AccountManager;

    return-void
.end method


# virtual methods
.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;->mAccountManager:Lcom/xiaomi/accounts/AccountManager;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;->mAccountManager:Lcom/xiaomi/accounts/AccountManager;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;->mServiceTokenUtil:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;->getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p0

    return-object p0
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;->mAccountManager:Lcom/xiaomi/accounts/AccountManager;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;->mServiceTokenUtil:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;->invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p0

    return-object p0
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;->mAccountManager:Lcom/xiaomi/accounts/AccountManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;->mAccountManager:Lcom/xiaomi/accounts/AccountManager;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;->mAccountManager:Lcom/xiaomi/accounts/AccountManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
