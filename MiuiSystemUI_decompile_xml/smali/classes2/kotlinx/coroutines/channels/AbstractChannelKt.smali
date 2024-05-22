.class public abstract Lkotlinx/coroutines/channels/AbstractChannelKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final EMPTY:Lkotlinx/coroutines/internal/Symbol;

.field public static final ENQUEUE_FAILED:Lkotlinx/coroutines/internal/Symbol;

.field public static final HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

.field public static final OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

.field public static final OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

.field public static final POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 2
    const-string v1, "EMPTY"

    .line 4
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->EMPTY:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 11
    const-string v1, "OFFER_SUCCESS"

    .line 13
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    .line 18
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 20
    const-string v1, "OFFER_FAILED"

    .line 22
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 24
    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 27
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 29
    const-string v1, "POLL_FAILED"

    .line 31
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 33
    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 36
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 38
    const-string v1, "ENQUEUE_FAILED"

    .line 40
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 42
    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->ENQUEUE_FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 45
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 47
    const-string v1, "ON_CLOSE_HANDLER_INVOKED"

    .line 49
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 51
    sput-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

    .line 54
    return-void
    .line 56
.end method
