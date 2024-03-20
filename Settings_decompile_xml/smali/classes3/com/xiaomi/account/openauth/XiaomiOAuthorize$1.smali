.class Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;
.super Ljava/lang/Object;
.source "XiaomiOAuthorize.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->oauth(Landroid/app/Activity;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

.field final synthetic val$activityWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    iput-object p2, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/xiaomi/account/openauth/XiaomiOAuthResults;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    new-instance v0, Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    iget-object v1, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->this$0:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-static {v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->access$000(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;)Lcom/xiaomi/account/auth/OAuthConfig$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;-><init>(Lcom/xiaomi/account/auth/OAuthConfig$Builder;)V

    invoke-virtual {v0}, Lcom/xiaomi/account/auth/OAuthConfig$Builder;->build()Lcom/xiaomi/account/auth/OAuthConfig;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/xiaomi/account/auth/OAuthFactory;->createOAuth(Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/auth/XiaomiOAuth;

    move-result-object v1

    .line 173
    iget-object p0, p0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->val$activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    .line 174
    invoke-interface {v1, p0, v0}, Lcom/xiaomi/account/auth/XiaomiOAuth;->startOAuth(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->call()Lcom/xiaomi/account/openauth/XiaomiOAuthResults;

    move-result-object p0

    return-object p0
.end method
