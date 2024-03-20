.class public Lcom/android/settings/privacypassword/XiaomiAccountUtils;
.super Ljava/lang/Object;
.source "XiaomiAccountUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoginedAccountMd5(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 63
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->loginedXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->md5Hex([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isLoginXiaomiAccount(Landroid/content/Context;)Z
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/android/settings/privacypassword/XiaomiAccountUtils;->loginedXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static loginAccount(Landroid/app/Activity;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "security"

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    const-string v1, "com.xiaomi.account"

    .line 50
    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->appCheckAccess(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->verifyAccountCountDownTimer(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.xiaomi"

    const-string/jumbo v5, "passportapi"

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v7, p1

    move-object v8, p0

    move-object v9, p2

    invoke-virtual/range {v3 .. v10}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public static loginedXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 5

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v1, "com.xiaomi"

    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 23
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 24
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/Account;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
