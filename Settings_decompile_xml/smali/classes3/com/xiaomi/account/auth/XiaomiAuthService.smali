.class public Lcom/xiaomi/account/auth/XiaomiAuthService;
.super Ljava/lang/Object;
.source "XiaomiAuthService.java"

# interfaces
.implements Lcom/xiaomi/account/IXiaomiAuthService;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

.field private mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "XiaomiAuthService"

    .line 29
    iput-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->TAG:Ljava/lang/String;

    .line 33
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/account/IXiaomiAuthService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/account/IXiaomiAuthService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    invoke-static {p1}, Lmiui/net/IXiaomiAuthService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/net/IXiaomiAuthService;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;

    :goto_0
    return-void
.end method

.method private supportNativeOAuth()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/xiaomi/account/auth/XiaomiAuthService;->getVersionNum()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 102
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getAccessTokenInResponse(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    if-eqz p0, :cond_0

    .line 80
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/xiaomi/account/IXiaomiAuthService;->getAccessTokenInResponse(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;II)V

    :cond_0
    return-void
.end method

.method public getVersionNum()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    if-eqz p0, :cond_0

    .line 87
    invoke-interface {p0}, Lcom/xiaomi/account/IXiaomiAuthService;->getVersionNum()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupport(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    if-eqz p0, :cond_0

    .line 95
    invoke-interface {p0, p1}, Lcom/xiaomi/account/IXiaomiAuthService;->isSupport(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public oauthInResponse(Landroid/content/Context;Lcom/xiaomi/account/IXiaomiAuthResponse;Lcom/xiaomi/account/auth/OAuthConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/xiaomi/account/openauth/XMAuthericationException;,
            Lcom/xiaomi/account/auth/FallBackWebOAuthException;
        }
    .end annotation

    .line 111
    invoke-virtual {p3}, Lcom/xiaomi/account/auth/OAuthConfig;->makeOptions()Landroid/os/Bundle;

    move-result-object p1

    .line 112
    iget-object v0, p3, Lcom/xiaomi/account/auth/OAuthConfig;->appId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_client_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extra_redirect_uri"

    .line 113
    iget-object v1, p3, Lcom/xiaomi/account/auth/OAuthConfig;->redirectUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p3, Lcom/xiaomi/account/auth/OAuthConfig;->useSystemAccountLogin:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "XiaomiAuthService"

    if-nez v0, :cond_1

    const-string v0, "FEATURE_NOT_USE_SYSTEM_ACCOUNT_LOGIN"

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/auth/XiaomiAuthService;->isSupport(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "this version of miui only support system account login"

    .line 116
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance p0, Lcom/xiaomi/account/auth/FallBackWebOAuthException;

    invoke-direct {p0}, Lcom/xiaomi/account/auth/FallBackWebOAuthException;-><init>()V

    throw p0

    .line 119
    :cond_1
    :goto_0
    iget-boolean v0, p3, Lcom/xiaomi/account/auth/OAuthConfig;->fastOAuth:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/account/auth/XiaomiAuthService;->supportNativeOAuth()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "this version of miui not support fast Oauth"

    .line 121
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance p0, Lcom/xiaomi/account/auth/FallBackWebOAuthException;

    invoke-direct {p0}, Lcom/xiaomi/account/auth/FallBackWebOAuthException;-><init>()V

    throw p0

    .line 124
    :cond_3
    :goto_1
    iget-object v0, p3, Lcom/xiaomi/account/auth/OAuthConfig;->deviceID:Ljava/lang/String;

    .line 126
    iget v1, p3, Lcom/xiaomi/account/auth/OAuthConfig;->platform:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const-string v1, "FEATURE_SHUIDI"

    invoke-virtual {p0, v1}, Lcom/xiaomi/account/auth/XiaomiAuthService;->isSupport(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 127
    :cond_4
    new-instance p0, Lcom/xiaomi/account/auth/FallBackWebOAuthException;

    invoke-direct {p0}, Lcom/xiaomi/account/auth/FallBackWebOAuthException;-><init>()V

    throw p0

    .line 129
    :cond_5
    :goto_2
    iget p3, p3, Lcom/xiaomi/account/auth/OAuthConfig;->platform:I

    if-nez p3, :cond_7

    const-string p3, "FEATURE_DEV_DEVICEID"

    invoke-virtual {p0, p3}, Lcom/xiaomi/account/auth/XiaomiAuthService;->isSupport(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    .line 130
    :cond_6
    new-instance p0, Lcom/xiaomi/account/auth/FallBackWebOAuthException;

    invoke-direct {p0}, Lcom/xiaomi/account/auth/FallBackWebOAuthException;-><init>()V

    throw p0

    .line 133
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/xiaomi/account/auth/XiaomiAuthService;->supportResponseWay()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 134
    iget-object p0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    const/16 p3, 0x5a

    invoke-interface {p0, p2, p1, v2, p3}, Lcom/xiaomi/account/IXiaomiAuthService;->getAccessTokenInResponse(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;II)V

    return-void

    .line 136
    :cond_8
    new-instance p0, Lcom/xiaomi/account/auth/FallBackWebOAuthException;

    invoke-direct {p0}, Lcom/xiaomi/account/auth/FallBackWebOAuthException;-><init>()V

    throw p0
.end method

.method public supportResponseWay()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    if-eqz p0, :cond_0

    .line 72
    invoke-interface {p0}, Lcom/xiaomi/account/IXiaomiAuthService;->supportResponseWay()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
