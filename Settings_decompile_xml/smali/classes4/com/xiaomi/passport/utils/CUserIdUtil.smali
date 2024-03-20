.class public Lcom/xiaomi/passport/utils/CUserIdUtil;
.super Ljava/lang/Object;
.source "CUserIdUtil.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/utils/CUserIdUtil;->mContext:Landroid/content/Context;

    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method getAM()Lcom/xiaomi/passport/accountmanager/MiAccountManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/xiaomi/passport/utils/CUserIdUtil;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object p0

    return-object p0
.end method

.method public final getCUserId()Ljava/lang/String;
    .locals 5

    .line 25
    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/CUserIdUtil;->isInMainThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/xiaomi/passport/utils/CUserIdUtil;->getAM()Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    .line 29
    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 30
    array-length v2, v1

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    .line 35
    :try_start_0
    aget-object v3, v1, v2

    const-string v4, "encrypted_user_id"

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v3, "CUserIdUtil"

    const-string v4, "failed to getUserData"

    .line 37
    invoke-static {v3, v4}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->isUseSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    aget-object v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/xiaomi/passport/utils/CUserIdUtil;->getFromXiaomiAccountApp(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "not supposed to be here"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CUserIdUtil#getCUserId() should NOT be called on main thread!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getFromXiaomiAccountApp(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    .line 52
    new-instance v0, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;

    iget-object p0, p0, Lcom/xiaomi/passport/utils/CUserIdUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;->getCUserId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method isInMainThread()Z
    .locals 1

    .line 48
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
