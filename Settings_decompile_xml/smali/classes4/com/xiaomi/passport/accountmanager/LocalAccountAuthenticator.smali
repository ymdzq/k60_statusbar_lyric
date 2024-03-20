.class public Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;
.super Lcom/xiaomi/accounts/AbstractAccountAuthenticator;
.source "LocalAccountAuthenticator.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaomi/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private fillQuickLoginIntent(Landroid/os/Bundle;Lcom/xiaomi/accounts/AccountAuthenticatorResponse;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object v0

    const-string v1, "has_password"

    .line 370
    invoke-virtual {v0, p4, v1}, Lcom/xiaomi/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 372
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    .line 373
    invoke-static {v0, p4}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getPassToken(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, p4, v3}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->isSetPasswordAndUpdateAM(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p4, v1}, Lcom/xiaomi/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p6, :cond_1

    .line 377
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v3, "userId"

    .line 378
    iget-object p4, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p6, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "need_retry_on_authenticator_response_result"

    .line 379
    invoke-virtual {p6, p4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    invoke-virtual {p6, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p6}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->newQuickLoginIntent(Landroid/content/Context;Landroid/os/Parcelable;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "service_id"

    .line 384
    invoke-virtual {p0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "intent"

    .line 385
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method private getAuthTokenBundle(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    move-object/from16 v7, p4

    .line 167
    iget-object v2, v1, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidPackageName"

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "weblogin:"

    .line 169
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "websso"

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    const/4 v8, 0x0

    aput-object v6, v3, v8

    const/4 v6, 0x1

    aput-object v2, v3, v6

    const-string v6, "getting AuthToken, type: %s, package name: %s"

    .line 168
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "LocalAccountAuthenticat"

    invoke-static {v9, v3}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 173
    iget-object v3, v1, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 174
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 182
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v6, 0x9

    const-string v11, "passportapi"

    const-string v13, "errorMessage"

    const-string v14, "errorCode"

    if-eqz v3, :cond_2

    const-string v3, "getting auth token, but no service url contained, use passportapi"

    .line 183
    invoke-static {v9, v3}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 190
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-static {v3}, Lcom/xiaomi/passport/utils/AccountHelper;->isTrustedWebSsoUrl(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x7

    .line 193
    invoke-virtual {v10, v14, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "untrusted web sso url"

    .line 195
    invoke-virtual {v10, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_3
    move-object v11, v0

    :goto_1
    const/4 v3, 0x0

    .line 201
    :cond_4
    invoke-direct {v1, v5}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->getRealPasstoken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object v6, v11

    move-object/from16 v7, p4

    .line 203
    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->fillQuickLoginIntent(Landroid/os/Bundle;Lcom/xiaomi/accounts/AccountAuthenticatorResponse;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "passToken is null"

    .line 209
    invoke-static {v9, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 213
    :cond_5
    new-instance v15, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    invoke-direct {v15}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;-><init>()V

    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 214
    invoke-virtual {v15, v6}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->userId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object v6

    .line 215
    invoke-virtual {v6, v4}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->passToken(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object v4

    .line 216
    invoke-virtual {v4, v2}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->packageName(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    move-result-object v4

    const-string v6, "authtoken"

    const-string v15, "weblogin:com.xiaomi"

    const-string v8, "accountType"

    const-string v12, "authAccount"

    if-eqz v3, :cond_6

    const/4 v7, 0x0

    .line 220
    :try_start_0
    invoke-virtual {v4, v7}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->serviceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    .line 221
    invoke-virtual {v4, v3}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->loginRequestUrl(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    .line 222
    iget-object v0, v1, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->build()Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaomi/passport/utils/AccountHelper;->getServiceTokenByPassToken(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v10, v8, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo;->getAutoLoginUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "web sso getAuthToken succeed"

    .line 228
    invoke-static {v9, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 232
    :cond_6
    invoke-virtual {v4, v11}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->serviceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    const/4 v7, 0x0

    .line 233
    invoke-virtual {v4, v7}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->loginRequestUrl(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;

    .line 235
    iget-object v7, v1, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->build()Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/xiaomi/passport/utils/AccountHelper;->getServiceTokenByPassToken(Landroid/content/Context;Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object v4

    .line 237
    iget-object v7, v1, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v4}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->saveAccountInfoInAM(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    .line 238
    iget-object v7, v1, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v4}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->updatePassTokenIfNeed(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    const/4 v7, 0x0

    .line 240
    invoke-static {v4, v7}, Lcom/xiaomi/passport/utils/AccountHelper;->getAuthenticatorResponseBundle(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Z)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 242
    invoke-virtual {v10, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_7
    const-string v4, "type: %s, package name: %s, getAuthToken succeed"

    .line 244
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/account/exception/PackageNameDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v2, "need notification "

    .line 298
    invoke-static {v9, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_8

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "websso return notification url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v10, v8, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getNotificationUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    .line 308
    :cond_8
    iget-object v1, v1, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    .line 310
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/NeedNotificationException;->getNotificationUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    move-object v0, v1

    move-object/from16 v1, p1

    move-object v3, v11

    move-object/from16 v5, p4

    .line 308
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->newNotificationIntent(Landroid/content/Context;Landroid/os/Parcelable;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    .line 314
    invoke-virtual {v10, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v1, "no such a user"

    .line 296
    invoke-static {v9, v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string v1, "auth failure"

    .line 290
    invoke-static {v9, v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    .line 291
    invoke-virtual {v10, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/HttpException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {v10, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const/4 v1, 0x5

    const-string v2, "access denied"

    .line 284
    invoke-static {v9, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    invoke-virtual {v10, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/HttpException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {v10, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_4
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package name denied: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x9

    .line 279
    invoke-virtual {v10, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/AccountException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {v10, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_5
    move-exception v0

    const-string v2, "invalid credential, passToken is invalid"

    .line 267
    invoke-static {v9, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    iget-object v2, v1, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object v2

    .line 269
    invoke-virtual {v2, v5}, Lcom/xiaomi/accounts/AccountManager;->clearPassword(Landroid/accounts/Account;)V

    .line 270
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "captcha_url"

    move-object/from16 v7, p4

    .line 271
    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object v6, v11

    .line 272
    invoke-direct/range {v1 .. v7}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->fillQuickLoginIntent(Landroid/os/Bundle;Lcom/xiaomi/accounts/AccountAuthenticatorResponse;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :catch_6
    move-exception v0

    const-string v1, "invalid response received when getting service token"

    .line 259
    invoke-static {v9, v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    .line 262
    invoke-virtual {v10, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/exception/AccountException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {v10, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_7
    move-exception v0

    const/4 v1, 0x3

    const-string v2, "get device id failed when getting service token"

    .line 254
    invoke-static {v9, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    invoke-virtual {v10, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "illegal device exception"

    .line 256
    invoke-virtual {v10, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_8
    move-exception v0

    const/4 v1, 0x3

    const-string v2, "io exception when getting service token"

    .line 247
    invoke-static {v9, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    invoke-virtual {v10, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {v10, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v10

    :cond_9
    :goto_3
    const-string v0, "booleanResult"

    const/4 v1, 0x0

    .line 176
    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v10
.end method

.method private getRealPasstoken(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getPassToken(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAccount(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 59
    iget-object p2, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object p2

    const-string p4, "com.xiaomi"

    .line 61
    invoke-virtual {p2, p4}, Lcom/xiaomi/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p2

    .line 62
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 63
    array-length v0, p2

    const-string v1, "LocalAccountAuthenticat"

    if-lez v0, :cond_0

    const-string p0, "a xiaomi account already exists"

    .line 66
    invoke-static {v1, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 68
    aget-object p0, p2, p0

    .line 69
    iget-object p1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string p2, "authAccount"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "accountType"

    .line 70
    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p4, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "no service id contained, use passportapi"

    .line 74
    invoke-static {v1, p2}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "passportapi"

    .line 77
    :cond_1
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {p0, p3, p5, p1}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->newAddAccountIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "intent"

    .line 82
    invoke-virtual {p4, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    return-object p4
.end method

.method public confirmCredentials(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 90
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    const-string v3, "password"

    .line 92
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 110
    :cond_0
    iget-object p0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "captcha_code"

    .line 112
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "captcha_ick"

    .line 113
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 117
    :try_start_0
    invoke-static {p0, p1, p2, p3, v2}, Lcom/xiaomi/passport/utils/AccountHelper;->getServiceTokenByPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/xiaomi/accountsdk/account/exception/IllegalDeviceException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedVerificationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object p2, v2

    move-object v2, p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 137
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/NeedCaptchaException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object p2

    .line 138
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 135
    :catch_2
    new-instance p1, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;-><init>()V

    invoke-virtual {p1, p0}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->userId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/AccountInfo$Builder;->build()Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception p1

    .line 128
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/exception/InvalidCredentialException;->getCaptchaUrl()Ljava/lang/String;

    move-result-object p2

    .line 129
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_6
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_7
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object p2, v2

    :goto_2
    const-string p1, "authAccount"

    .line 142
    invoke-virtual {v7, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "accountType"

    const-string p1, "com.xiaomi"

    .line 143
    invoke-virtual {v7, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    const-string p0, "booleanResult"

    .line 145
    invoke-virtual {v7, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "captcha_url"

    .line 147
    invoke-virtual {v7, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_8
    move-exception p0

    .line 120
    new-instance p1, Landroid/accounts/NetworkErrorException;

    const-string p2, "IO exception when sending request to passport server"

    invoke-direct {p1, p2, p0}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 93
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/xiaomi/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "verify_only"

    if-eqz p3, :cond_4

    .line 96
    invoke-virtual {p3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    move v1, v0

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 97
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p3, :cond_5

    .line 99
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 101
    :cond_5
    invoke-virtual {p3, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    move-object v6, p3

    const/4 v3, 0x0

    if-eqz v6, :cond_7

    const-string p3, "service_id"

    .line 107
    invoke-virtual {v6, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    move-object v5, p3

    goto :goto_5

    :cond_7
    move-object v5, v2

    :goto_5
    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move-object v4, p2

    .line 103
    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->fillQuickLoginIntent(Landroid/os/Bundle;Lcom/xiaomi/accounts/AccountAuthenticatorResponse;ZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_6
    return-object v7
.end method

.method public editProperties(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAccountRemovalAllowed(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 358
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "booleanResult"

    const/4 p2, 0x1

    .line 359
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public getAuthToken(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->getAuthTokenBundle(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 162
    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->recheckAuthTokenResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasFeatures(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method recheckAuthTokenResult(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 324
    iget-object p0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p1

    .line 328
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "booleanResult"

    const/4 v0, 0x0

    .line 329
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public updateCredentials(Lcom/xiaomi/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .line 343
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "updateCredentials not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
