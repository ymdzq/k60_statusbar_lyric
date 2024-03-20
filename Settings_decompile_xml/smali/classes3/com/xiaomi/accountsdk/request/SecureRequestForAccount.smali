.class public Lcom/xiaomi/accountsdk/request/SecureRequestForAccount;
.super Ljava/lang/Object;
.source "SecureRequestForAccount.java"


# direct methods
.method public static getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/CipherException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 22
    invoke-static/range {v0 .. v6}, Lcom/xiaomi/accountsdk/request/SecureRequestForAccount;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/CryptCoder;Ljava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method

.method public static getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/CryptCoder;Ljava/lang/Integer;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/utils/CryptCoder;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/CipherException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
        }
    .end annotation

    .line 45
    invoke-static {p2}, Lcom/xiaomi/accountsdk/request/SimpleRequestForAccount;->addDeviceIdInCookieIfNeeded(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 46
    invoke-static {p2}, Lcom/xiaomi/accountsdk/request/SimpleRequestForAccount;->addFidNonceInCookieIfNeeded(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 47
    invoke-static/range {v0 .. v7}, Lcom/xiaomi/accountsdk/request/SecureRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/xiaomi/accountsdk/utils/CryptCoder;Ljava/lang/Integer;Ljava/util/Map;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    return-object p0
.end method
