.class public final Lcom/miui/charge/lollipop/FireworksManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mDistance:I

.field public final mFireList:Ljava/util/List;

.field public mLastIndex:I

.field public final mRandom:Ljava/util/Random;

.field public mSpeed:F


# direct methods
.method public constructor <init>(FI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/charge/lollipop/FireworksManager;->mFireList:Ljava/util/List;

    .line 10
    iput p2, p0, Lcom/miui/charge/lollipop/FireworksManager;->mDistance:I

    .line 12
    iput p1, p0, Lcom/miui/charge/lollipop/FireworksManager;->mSpeed:F

    .line 14
    new-instance p1, Ljava/util/Random;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v0

    .line 21
    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 22
    iput-object p1, p0, Lcom/miui/charge/lollipop/FireworksManager;->mRandom:Ljava/util/Random;

    .line 25
    return-void
    .line 27
.end method
