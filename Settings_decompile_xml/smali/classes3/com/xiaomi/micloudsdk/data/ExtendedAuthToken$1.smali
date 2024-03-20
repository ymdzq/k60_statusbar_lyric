.class Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken$1;
.super Ljava/lang/Object;
.source "ExtendedAuthToken.java"

# interfaces
.implements Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->getBuilderForCloudRequest()Lcom/xiaomi/micloudsdk/data/IAuthToken$HttpRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;


# direct methods
.method constructor <init>(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken$1;->this$0:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAdditionalHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public addParams(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public getCryptCoder(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CryptCoder;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken$1;->this$0:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    iget-object p0, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->getCryptCoder(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/utils/CryptCoder;

    move-result-object p0

    return-object p0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken$1;->this$0:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    iget-object p0, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    return-object p0
.end method

.method public signParams(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken$1;->this$0:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    iget-object p0, p0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    invoke-static {p1, p2, p3, p0}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->getSignature(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 100
    new-instance p1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo p2, "signature"

    invoke-direct {p1, p2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
