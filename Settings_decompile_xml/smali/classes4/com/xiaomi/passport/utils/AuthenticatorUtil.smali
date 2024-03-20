.class public Lcom/xiaomi/passport/utils/AuthenticatorUtil;
.super Ljava/lang/Object;
.source "AuthenticatorUtil.java"


# static fields
.field private static final ACCOUNT_LOCK:Ljava/lang/Object;

.field private static volatile mAMPassTokenUpdateUtil:Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->ACCOUNT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public static getPassToken(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    .line 354
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 358
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 0

    .line 238
    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method public static isSetPassword(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/request/CipherException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 323
    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    invoke-direct {v0, p0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    .line 324
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->getHashedDeviceIdNoThrow()Ljava/lang/String;

    move-result-object v0

    const-string v1, "passportapi"

    .line 326
    invoke-static {p0, v1}, Lcom/xiaomi/passport/data/XMPassportInfo;->build(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/XMPassportInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "AuthenticatorUtil"

    const-string p1, "passport info is null"

    .line 328
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 331
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 333
    :try_start_0
    invoke-static {v1, p1, v0, v2}, Lcom/xiaomi/passport/utils/AccountHelper;->isSetPassword(Lcom/xiaomi/accountsdk/account/data/PassportInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 335
    :catch_0
    invoke-virtual {v1, p0}, Lcom/xiaomi/passport/data/XMPassportInfo;->refreshAuthToken(Landroid/content/Context;)V

    .line 336
    invoke-static {v1, p1, v0, v2}, Lcom/xiaomi/passport/utils/AccountHelper;->isSetPassword(Lcom/xiaomi/accountsdk/account/data/PassportInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSetPasswordAndUpdateAM(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "handleQueryUserPassword error"

    const-string v1, "AuthenticatorUtil"

    const/4 v2, 0x1

    .line 301
    :try_start_0
    invoke-static {p0, p2}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->isSetPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object p0

    const-string p2, "has_password"

    .line 303
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 313
    invoke-static {v1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 311
    invoke-static {v1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    .line 309
    invoke-static {v1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception p0

    .line 307
    invoke-static {v1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception p0

    .line 305
    invoke-static {v1, v0, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method public static newAddAccountIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 0

    .line 98
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 100
    invoke-static {p0}, Lcom/xiaomi/passport/PassportExternal;->getAuthenticatorComponentNameInterface(Landroid/content/Context;)Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;

    const/4 p0, 0x0

    .line 101
    throw p0
.end method

.method public static newNotificationIntent(Landroid/content/Context;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Landroid/content/Intent;
    .locals 0

    .line 124
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 126
    invoke-static {p0}, Lcom/xiaomi/passport/PassportExternal;->getAuthenticatorComponentNameInterface(Landroid/content/Context;)Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;

    const/4 p0, 0x0

    .line 127
    throw p0
.end method

.method public static newQuickLoginIntent(Landroid/content/Context;Landroid/os/Parcelable;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 0

    .line 83
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 85
    invoke-static {p0}, Lcom/xiaomi/passport/PassportExternal;->getAuthenticatorComponentNameInterface(Landroid/content/Context;)Lcom/xiaomi/passport/interfaces/AuthenticatorComponentNameInterface;

    const/4 p0, 0x0

    .line 86
    throw p0
.end method

.method public static saveAccountInfoInAM(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 6

    if-eqz p2, :cond_4

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 157
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object p0

    .line 159
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getEncryptedUserId()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "encrypted_user_id"

    .line 161
    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getHasPwd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "has_password"

    .line 165
    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getServiceToken()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 173
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getSecurity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->toPlain()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {p0, p1, v0, v2}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/CloudCoder;->getMd5DigestUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getSlh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, ","

    if-eqz v2, :cond_2

    move-object v2, v3

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getSlh()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    :goto_0
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getPh()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getPh()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_slh"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_ph"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v3}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static updatePassTokenIfNeed(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    sget-object v0, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->mAMPassTokenUpdateUtil:Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;

    if-nez v0, :cond_1

    .line 370
    new-instance v0, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->mAMPassTokenUpdateUtil:Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;

    .line 372
    :cond_1
    invoke-static {p0, p1}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getPassToken(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 373
    sget-object v1, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->mAMPassTokenUpdateUtil:Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;

    invoke-virtual {v1, v0, p2}, Lcom/xiaomi/passport/utils/AMPassTokenUpdateUtil;->needUpdatePassToken(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->passToken:Ljava/lang/String;

    .line 375
    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getPsecurity()Ljava/lang/String;

    move-result-object p2

    .line 374
    invoke-static {v0, p2}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;

    move-result-object p2

    .line 376
    invoke-static {p0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object p0

    invoke-virtual {p2}, Lcom/xiaomi/accountsdk/account/data/ExtendedAuthToken;->toPlain()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setPassword(Landroid/accounts/Account;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
