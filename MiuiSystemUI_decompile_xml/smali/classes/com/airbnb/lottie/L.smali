.class public abstract Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static depthPastMaxDepth:I

.field public static volatile networkCache:Lcom/airbnb/lottie/network/NetworkCache;

.field public static volatile networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;


# direct methods
.method public static endSection()V
    .locals 1

    .line 1
    sget v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 2
    if-lez v0, :cond_0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 6
    sput v0, Lcom/airbnb/lottie/L;->depthPastMaxDepth:I

    .line 8
    :cond_0
    return-void
    .line 10
.end method
