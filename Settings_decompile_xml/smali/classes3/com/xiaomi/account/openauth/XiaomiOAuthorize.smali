.class public Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
.super Ljava/lang/Object;
.source "XiaomiOAuthorize.java"


# static fields
.field private static final DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaomi/account/openauth/AuthorizeActivityBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/xiaomi/account/openauth/AuthorizeActivity;

    sput-object v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->DEFAULT_AUTHORIZE_ACTIVITY_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-direct {v0}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method private oauth(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->context(Landroid/content/Context;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    goto :goto_0

    .line 161
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "please set Context or Activity!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 168
    new-instance p1, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;

    new-instance v1, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;-><init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;Ljava/lang/ref/WeakReference;)V

    invoke-direct {p1, v1}, Lcom/xiaomi/account/auth/XiaomiOAuthFutureImpl;-><init>(Ljava/util/concurrent/Callable;)V

    .line 178
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method


# virtual methods
.method public setAppId(J)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->appId(J)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setRedirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->redirectUrl(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public setSkipConfirm(Z)Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    invoke-virtual {v0, p1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->skipConfirm(Z)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    return-object p0
.end method

.method public startGetAccessToken(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->mConfigBuilder:Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->responseType(Ljava/lang/String;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    .line 150
    invoke-direct {p0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->oauth(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;

    move-result-object p0

    return-object p0
.end method
