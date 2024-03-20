.class public final Lkotlinx/coroutines/flow/SafeFlow;
.super Lkotlinx/coroutines/flow/AbstractFlow;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final block:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/flow/AbstractFlow;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/flow/SafeFlow;->block:Lkotlin/jvm/functions/Function2;

    .line 5
    return-void
    .line 7
.end method
