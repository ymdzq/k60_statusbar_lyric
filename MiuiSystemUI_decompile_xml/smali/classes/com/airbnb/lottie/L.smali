.class public abstract Lcom/airbnb/lottie/L;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
