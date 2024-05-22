.class public abstract Lkotlinx/coroutines/sync/MutexKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final EMPTY_LOCKED:Lkotlinx/coroutines/sync/Empty;

.field public static final EMPTY_UNLOCKED:Lkotlinx/coroutines/sync/Empty;

.field public static final LOCKED:Lkotlinx/coroutines/internal/Symbol;

.field public static final UNLOCKED:Lkotlinx/coroutines/internal/Symbol;

.field public static final UNLOCK_FAIL:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 2
    const-string v1, "UNLOCK_FAIL"

    .line 4
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->UNLOCK_FAIL:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 11
    const-string v1, "LOCKED"

    .line 13
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->LOCKED:Lkotlinx/coroutines/internal/Symbol;

    .line 18
    new-instance v1, Lkotlinx/coroutines/internal/Symbol;

    .line 20
    const-string v2, "UNLOCKED"

    .line 22
    invoke-direct {v1, v2}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 24
    sput-object v1, Lkotlinx/coroutines/sync/MutexKt;->UNLOCKED:Lkotlinx/coroutines/internal/Symbol;

    .line 27
    new-instance v2, Lkotlinx/coroutines/sync/Empty;

    .line 29
    invoke-direct {v2, v0}, Lkotlinx/coroutines/sync/Empty;-><init>(Lkotlinx/coroutines/internal/Symbol;)V

    .line 31
    sput-object v2, Lkotlinx/coroutines/sync/MutexKt;->EMPTY_LOCKED:Lkotlinx/coroutines/sync/Empty;

    .line 34
    new-instance v0, Lkotlinx/coroutines/sync/Empty;

    .line 36
    invoke-direct {v0, v1}, Lkotlinx/coroutines/sync/Empty;-><init>(Lkotlinx/coroutines/internal/Symbol;)V

    .line 38
    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->EMPTY_UNLOCKED:Lkotlinx/coroutines/sync/Empty;

    .line 41
    return-void
    .line 43
.end method
