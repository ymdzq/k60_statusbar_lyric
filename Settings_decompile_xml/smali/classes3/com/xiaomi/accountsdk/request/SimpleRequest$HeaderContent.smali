.class public Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;
.super Ljava/lang/Object;
.source "SimpleRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/SimpleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderContent"
.end annotation


# instance fields
.field private final cookieKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 695
    iput v0, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->httpCode:I

    .line 697
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->cookieKeys:Ljava/util/Set;

    .line 699
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCookieKeys()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 726
    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->cookieKeys:Ljava/util/Set;

    return-object p0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 707
    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->headers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 711
    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public getHttpCode()I
    .locals 0

    .line 730
    iget p0, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->httpCode:I

    return p0
.end method

.method public putCookies(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 719
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->putHeaders(Ljava/util/Map;)V

    if-eqz p1, :cond_0

    .line 721
    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->cookieKeys:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public putHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 715
    iget-object p0, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->headers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setHttpCode(I)V
    .locals 0

    .line 734
    iput p1, p0, Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;->httpCode:I

    return-void
.end method
