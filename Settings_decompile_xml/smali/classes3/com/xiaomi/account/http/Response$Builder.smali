.class public Lcom/xiaomi/account/http/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/http/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field code:I

.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field location:Ljava/lang/String;

.field setCookie:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public body(Ljava/lang/String;)Lcom/xiaomi/account/http/Response$Builder;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaomi/account/http/Response$Builder;->body:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/account/http/Response;
    .locals 1

    .line 66
    new-instance v0, Lcom/xiaomi/account/http/Response;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/http/Response;-><init>(Lcom/xiaomi/account/http/Response$Builder;)V

    return-object v0
.end method

.method public code(I)Lcom/xiaomi/account/http/Response$Builder;
    .locals 0

    .line 51
    iput p1, p0, Lcom/xiaomi/account/http/Response$Builder;->code:I

    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lcom/xiaomi/account/http/Response$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/xiaomi/account/http/Response$Builder;"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/xiaomi/account/http/Response$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public location(Ljava/lang/String;)Lcom/xiaomi/account/http/Response$Builder;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaomi/account/http/Response$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method public setCookie(Ljava/lang/String;)Lcom/xiaomi/account/http/Response$Builder;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaomi/account/http/Response$Builder;->setCookie:Ljava/lang/String;

    return-object p0
.end method
