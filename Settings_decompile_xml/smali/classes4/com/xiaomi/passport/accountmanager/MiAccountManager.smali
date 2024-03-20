.class public Lcom/xiaomi/passport/accountmanager/MiAccountManager;
.super Ljava/lang/Object;
.source "MiAccountManager.java"

# interfaces
.implements Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;
    }
.end annotation


# static fields
.field private static volatile sThis:Lcom/xiaomi/passport/accountmanager/MiAccountManager;


# instance fields
.field private mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

.field private mCanUseServiceTokenUtil:Z

.field private mCanUseSystemAccount:Z

.field private final mContext:Landroid/content/Context;

.field private mLocalAccountAdapter:Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;

.field private mSystemAccountAdapter:Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;

.field private mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mContext:Landroid/content/Context;

    .line 129
    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->ensureApplicationContext(Landroid/app/Application;)V

    const/4 v0, 0x1

    .line 131
    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->setNonNullApplicationContextContract(Z)V

    .line 133
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->canUseSystemAccount(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mCanUseSystemAccount:Z

    .line 134
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->canUserServiceTokenUtil(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mCanUseServiceTokenUtil:Z

    .line 136
    invoke-direct {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->restoreAccountAuthenticator()V

    return-void
.end method

.method private canUseSystemAccount(Landroid/content/Context;)Z
    .locals 0

    .line 282
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/SystemXiaomiAccountPackageName;->getValid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private canUserServiceTokenUtil(Landroid/content/Context;)Z
    .locals 1

    .line 286
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.xiaomi.account.action.SERVICE_TOKEN_OP"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/SystemXiaomiAccountPackageName;->getValid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;
    .locals 2

    if-eqz p0, :cond_2

    .line 319
    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->sThis:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    if-nez v0, :cond_1

    .line 320
    const-class v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    monitor-enter v0

    .line 321
    :try_start_0
    sget-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->sThis:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    if-nez v1, :cond_0

    .line 322
    new-instance v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->sThis:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    .line 324
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 326
    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->sThis:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    return-object p0

    .line 318
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private restoreAccountAuthenticator()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->getInstance(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->loadAccountAuthenticator()Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->SYSTEM:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    .line 145
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUpAccountManagerConfig(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    return-void
.end method

.method private setUpAccountAdapter(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V
    .locals 3

    .line 242
    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$2;->$SwitchMap$com$xiaomi$passport$accountmanager$MiAccountManager$AccountAuthenticator:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    .line 251
    sget-object p1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->LOCAL:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    goto :goto_0

    .line 254
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 244
    :cond_1
    iget-boolean p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mCanUseSystemAccount:Z

    if-eqz p1, :cond_2

    .line 245
    sget-object p1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->SYSTEM:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    goto :goto_0

    .line 247
    :cond_2
    sget-object p1, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->LOCAL:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    .line 257
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_4

    .line 267
    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mLocalAccountAdapter:Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;

    if-nez p1, :cond_3

    .line 268
    new-instance p1, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mLocalAccountAdapter:Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;

    .line 270
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mLocalAccountAdapter:Lcom/xiaomi/passport/accountmanager/LocalAccountManagerAdapter;

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    goto :goto_1

    .line 273
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 260
    :cond_5
    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mSystemAccountAdapter:Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;

    if-nez p1, :cond_6

    .line 261
    new-instance p1, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mSystemAccountAdapter:Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;

    .line 263
    :cond_6
    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mSystemAccountAdapter:Lcom/xiaomi/passport/accountmanager/SystemAccountManagerAdapter;

    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    .line 276
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUpDeviceIdPolicy(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    .line 277
    iget-object p1, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->getInstance(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;

    move-result-object p1

    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    .line 278
    invoke-virtual {p1, p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManagerSettingsPersistent;->saveAccountAuthenticator(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    return-void
.end method

.method private setUpAccountManagerConfig(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUpAccountAdapter(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V

    return-void
.end method

.method private setUpDeviceIdPolicy(Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;)V
    .locals 0

    .line 227
    sget-object p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$2;->$SwitchMap$com$xiaomi$passport$accountmanager$MiAccountManager$AccountAuthenticator:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    .line 233
    invoke-static {}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->getInstance()Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;->CACHED_THEN_RUNTIME_THEN_PSEUDO:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->setPolicy(Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;)V

    goto :goto_0

    .line 237
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 229
    :cond_1
    invoke-static {}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->getInstance()Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;->RUNTIME_DEVICE_ID_ONLY:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$GlobalConfig;->setPolicy(Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {p0, p1}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {p0, p1}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p0

    return-object p0
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getXiaomiAccount()Landroid/accounts/Account;
    .locals 1

    .line 453
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    const-string v0, "com.xiaomi"

    invoke-interface {p0, v0}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 454
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 455
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p0

    return-object p0
.end method

.method public isUseSystem()Z
    .locals 1

    .line 198
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mAccountAuthenticator:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    sget-object v0, Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;->SYSTEM:Lcom/xiaomi/passport/accountmanager/MiAccountManager$AccountAuthenticator;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0

    .line 510
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 515
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->mXmsfAccountAdapter:Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;

    invoke-interface {p0, p1, p2, p3}, Lcom/xiaomi/passport/accountmanager/IAccountManagerInternal;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
