.class public abstract Lcom/xiaomi/account/http/HttpFactory;
.super Ljava/lang/Object;
.source "HttpFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHttpClient()Lcom/xiaomi/account/http/HttpClient;
    .locals 1

    .line 7
    new-instance v0, Lcom/xiaomi/account/http/HttpClientConfig$Builder;

    invoke-direct {v0}, Lcom/xiaomi/account/http/HttpClientConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/account/http/HttpClientConfig$Builder;->build()Lcom/xiaomi/account/http/HttpClientConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/account/http/HttpFactory;->createHttpClient(Lcom/xiaomi/account/http/HttpClientConfig;)Lcom/xiaomi/account/http/HttpClient;

    move-result-object p0

    return-object p0
.end method

.method public abstract createHttpClient(Lcom/xiaomi/account/http/HttpClientConfig;)Lcom/xiaomi/account/http/HttpClient;
.end method
