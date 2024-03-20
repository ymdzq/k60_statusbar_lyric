.class public Lcom/xiaomi/account/auth/WebViewOauth;
.super Ljava/lang/Object;
.source "WebViewOauth.java"

# interfaces
.implements Lcom/xiaomi/account/auth/XiaomiOAuth;


# static fields
.field private static final AUTHORIZE_PATH:Ljava/lang/String;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mRedirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/account/openauth/XiaomiOAuthConstants;->OAUTH2_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth2/authorize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/account/auth/WebViewOauth;->AUTHORIZE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mAppId:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method private addLocaleIfNeeded(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string p0, "_locale"

    .line 240
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 246
    invoke-static {v0}, Lcom/xiaomi/account/auth/WebViewOauth;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getIntent(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;Lcom/xiaomi/account/IXiaomiAuthResponse;)Landroid/content/Intent;
    .locals 2

    .line 164
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Lcom/xiaomi/account/auth/OAuthConfig;->authorizeActivityClazz:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo p1, "url"

    .line 165
    invoke-direct {p0, p2}, Lcom/xiaomi/account/auth/WebViewOauth;->getUrl(Lcom/xiaomi/account/auth/OAuthConfig;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "redirect_uri"

    .line 166
    iget-object p0, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "extra_keep_cookies "

    .line 167
    iget-boolean p1, p2, Lcom/xiaomi/account/auth/OAuthConfig;->keepCookies:Z

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    new-instance p0, Lcom/xiaomi/account/XiaomiOAuthResponse;

    invoke-direct {p0, p3}, Lcom/xiaomi/account/XiaomiOAuthResponse;-><init>(Lcom/xiaomi/account/IXiaomiAuthResponse;)V

    const-string p1, "extra_response"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getLocaleString(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 258
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 264
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "%s_%s"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 266
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getUrl(Lcom/xiaomi/account/auth/OAuthConfig;)Ljava/lang/String;
    .locals 3

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_id"

    .line 210
    iget-object v2, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "redirect_uri"

    .line 211
    iget-object v2, p0, Lcom/xiaomi/account/auth/WebViewOauth;->mRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p1, Lcom/xiaomi/account/auth/OAuthConfig;->responseType:Ljava/lang/String;

    const-string v2, "response_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "scope"

    .line 213
    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->scopes:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    .line 214
    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->state:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p1, Lcom/xiaomi/account/auth/OAuthConfig;->skipConfirm:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 217
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "skip_confirm"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v1, p1, Lcom/xiaomi/account/auth/OAuthConfig;->loginType:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "_loginType"

    .line 221
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_1
    iget-object v1, p1, Lcom/xiaomi/account/auth/OAuthConfig;->hideSwitch:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    const-string v1, "_hideSwitch"

    const-string/jumbo v2, "true"

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->platform:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pt"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_id"

    .line 229
    iget-object v2, p1, Lcom/xiaomi/account/auth/OAuthConfig;->deviceID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "display"

    .line 230
    iget-object p1, p1, Lcom/xiaomi/account/auth/OAuthConfig;->display:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, v0}, Lcom/xiaomi/account/auth/WebViewOauth;->addLocaleIfNeeded(Landroid/os/Bundle;)V

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/account/auth/WebViewOauth;->AUTHORIZE_PATH:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/xiaomi/account/auth/WebViewOauth;->parseBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 279
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 284
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "UTF-8"

    .line 286
    invoke-static {p0, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private quietOAuth(Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;
        }
    .end annotation

    const-string p0, "WebViewOauth quietOAuth start..."

    const-string v0, "WebViewOauth"

    .line 114
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "WebViewOauth..quietOAuth..accountAuth is null"

    .line 116
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance p0, Landroid/accounts/AuthenticatorException;

    invoke-direct {p0}, Landroid/accounts/AuthenticatorException;-><init>()V

    throw p0
.end method


# virtual methods
.method public startOAuth(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Ljava/io/IOException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;,
            Ljava/lang/InterruptedException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .line 65
    iget-object v0, p2, Lcom/xiaomi/account/auth/OAuthConfig;->useSystemBrowserLogin:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p2}, Lcom/xiaomi/account/auth/WebViewOauth;->getUrl(Lcom/xiaomi/account/auth/OAuthConfig;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p0, 0x4000000

    .line 68
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 69
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/xiaomi/account/auth/WebViewOauth;->quietOAuth(Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object p0
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v0, "quietOAuth failed"

    const-string v1, "WebViewOauth"

    .line 76
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v2, Lcom/xiaomi/account/auth/WebViewOauth$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/xiaomi/account/auth/WebViewOauth$1;-><init>(Lcom/xiaomi/account/auth/WebViewOauth;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, p1, p2, v2}, Lcom/xiaomi/account/auth/WebViewOauth;->getIntent(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;Lcom/xiaomi/account/IXiaomiAuthResponse;)Landroid/content/Intent;

    move-result-object p0

    .line 101
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 102
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 104
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x0

    .line 107
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    return-object p0

    .line 105
    :cond_2
    new-instance p0, Landroid/accounts/OperationCanceledException;

    invoke-direct {p0}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    const-string p0, "activity is null"

    .line 78
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "extra_error_code"

    const/16 v0, -0x3e9

    .line 80
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "extra_error_description"

    .line 81
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthResults;->parseBundle(Landroid/os/Bundle;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object p0

    return-object p0
.end method
