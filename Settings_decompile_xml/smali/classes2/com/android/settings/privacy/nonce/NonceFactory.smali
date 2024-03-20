.class public Lcom/android/settings/privacy/nonce/NonceFactory;
.super Ljava/lang/Object;
.source "NonceFactory.java"


# static fields
.field private static RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Ljava/util/Random;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/android/settings/privacy/nonce/NonceFactory;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public static generateNonce()Ljava/lang/String;
    .locals 7

    .line 14
    new-instance v0, Lcom/android/settings/privacy/nonce/Nonce;

    sget-object v1, Lcom/android/settings/privacy/nonce/NonceFactory;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/privacy/nonce/Nonce;-><init>(JI)V

    invoke-virtual {v0}, Lcom/android/settings/privacy/nonce/Nonce;->serialize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
