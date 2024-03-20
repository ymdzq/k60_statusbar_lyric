.class Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;
.super Ljava/lang/Object;
.source "SystemAccountManagerAdapter.java"

# interfaces
.implements Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private final mServiceTokenUtil:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;->applicationContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;->isXiaomiAccountApp(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 48
    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/MiuiOsBuildReflection;->isStable(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;-><init>(II)V

    .line 49
    invoke-static {v2, v1}, Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;->earlyThan(Lcom/xiaomi/accountsdk/utils/MiuiVersionStable;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/SystemXiaomiAccountPackageName;->getValid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 54
    :goto_1
    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;->getInstance()Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;

    move-result-object p1

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;->buildMiuiServiceTokenUtil()Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    move-result-object p1

    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;->buildAMUtil()Lcom/xiaomi/passport/servicetoken/IAMUtil;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;->buildAMServiceTokenUtil(Lcom/xiaomi/passport/servicetoken/IAMUtil;)Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;->mServiceTokenUtil:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    return-void
.end method

.method private isXiaomiAccountApp(Landroid/content/Context;)Z
    .locals 0

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/SystemXiaomiAccountPackageName;->getValid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;->mServiceTokenUtil:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;->getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p0

    return-object p0
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;->mServiceTokenUtil:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;->invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p0

    return-object p0
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
