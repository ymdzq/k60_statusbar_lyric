.class public Lcom/xiaomi/accounts/AccountAuthenticatorCache;
.super Ljava/lang/Object;
.source "AccountAuthenticatorCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mInterfaceName:Ljava/lang/String;

.field private mServiceInfo:Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mContext:Landroid/content/Context;

    const-string p1, "com.xiaomi.accounts.AccountAuthenticator"

    .line 30
    iput-object p1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mInterfaceName:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->generateServicesMap()V

    return-void
.end method

.method private parseServiceInfo(Landroid/content/pm/ResolveInfo;)Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 47
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 48
    iget-object p1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 50
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object p0, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const-string v0, "com.xiaomi.passport.accountmanager.MiAuthenticatorService"

    :goto_0
    move-object v2, p1

    .line 57
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget v7, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 61
    new-instance v8, Landroid/accounts/AuthenticatorDescription;

    const-string v1, "com.xiaomi"

    iget v3, p0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iget v5, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    const/4 v6, -0x1

    move-object v0, v8

    move v4, v5

    invoke-direct/range {v0 .. v6}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 67
    new-instance p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;

    invoke-direct {p0, v8, p1, v7}, Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;-><init>(Ljava/lang/Object;Landroid/content/ComponentName;I)V

    return-object p0
.end method


# virtual methods
.method generateServicesMap()V
    .locals 3

    .line 35
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object v1, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->parseServiceInfo(Landroid/content/pm/ResolveInfo;)Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mServiceInfo:Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;

    return-void
.end method

.method public getServiceInfo(Landroid/accounts/AuthenticatorDescription;)Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AuthenticatorDescription;",
            ")",
            "Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "com.xiaomi"

    .line 71
    iget-object p1, p1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/xiaomi/accounts/AccountAuthenticatorCache;->mServiceInfo:Lcom/xiaomi/accounts/AccountAuthenticatorCache$ServiceInfo;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "Account"

    const-string p1, "no xiaomi account type"

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
