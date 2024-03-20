.class public final Lkotlinx/coroutines/channels/Channel$Factory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $$INSTANCE:Lkotlinx/coroutines/channels/Channel$Factory;

.field public static final CHANNEL_DEFAULT_CAPACITY:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/Channel$Factory;

    .line 2
    invoke-direct {v0}, Lkotlinx/coroutines/channels/Channel$Factory;-><init>()V

    .line 4
    sput-object v0, Lkotlinx/coroutines/channels/Channel$Factory;->$$INSTANCE:Lkotlinx/coroutines/channels/Channel$Factory;

    .line 7
    const-string v1, "kotlinx.coroutines.channels.defaultBuffer"

    .line 9
    const/16 v0, 0x40

    .line 11
    int-to-long v2, v0

    .line 13
    const/4 v0, 0x1

    .line 14
    int-to-long v4, v0

    .line 15
    const v0, 0x7ffffffe

    .line 16
    int-to-long v6, v0

    .line 19
    invoke-static/range {v1 .. v7}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;JJJ)J

    .line 20
    move-result-wide v0

    .line 23
    long-to-int v0, v0

    .line 24
    sput v0, Lkotlinx/coroutines/channels/Channel$Factory;->CHANNEL_DEFAULT_CAPACITY:I

    .line 25
    return-void
    .line 27
.end method
