.class public Lcom/xiaomi/accountsdk/utils/NonceCoder;
.super Ljava/lang/Object;
.source "NonceCoder.java"


# direct methods
.method public static generateNonce(J)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/xiaomi/accountsdk/utils/Coder;->generateNonce(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
