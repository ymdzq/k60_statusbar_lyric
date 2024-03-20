.class public Lcom/xiaomi/micloudsdk/utils/CloudCoder;
.super Ljava/lang/Object;
.source "CloudCoder.java"


# static fields
.field private static sServerDateOffset:J


# direct methods
.method public static generateNonce()Ljava/lang/String;
    .locals 4

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->sServerDateOffset:J

    add-long/2addr v0, v2

    .line 381
    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->generateNonce(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateNonce(J)Ljava/lang/String;
    .locals 0

    .line 385
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/utils/Coder;->generateNonce(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 163
    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/micloudsdk/utils/Coder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hashDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    .line 183
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/utils/DeviceIdHasher;->hashDeviceInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setServerDateOffset(J)V
    .locals 0

    .line 376
    sput-wide p0, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->sServerDateOffset:J

    return-void
.end method
