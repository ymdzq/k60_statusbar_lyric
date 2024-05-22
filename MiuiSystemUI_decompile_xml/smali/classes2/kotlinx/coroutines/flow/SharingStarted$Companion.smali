.class public final Lkotlinx/coroutines/flow/SharingStarted$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $$INSTANCE:Lkotlinx/coroutines/flow/SharingStarted$Companion;

.field public static final Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

.field public static final Lazily:Lkotlinx/coroutines/flow/StartedLazily;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;

    .line 2
    invoke-direct {v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;-><init>()V

    .line 4
    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->$$INSTANCE:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    .line 7
    new-instance v0, Lkotlinx/coroutines/flow/StartedEagerly;

    .line 9
    invoke-direct {v0}, Lkotlinx/coroutines/flow/StartedEagerly;-><init>()V

    .line 11
    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 14
    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily;

    .line 16
    invoke-direct {v0}, Lkotlinx/coroutines/flow/StartedLazily;-><init>()V

    .line 18
    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Lazily:Lkotlinx/coroutines/flow/StartedLazily;

    .line 21
    return-void
    .line 23
.end method

.method public static WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;
    .locals 5

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 2
    const-wide/16 v1, 0x0

    .line 4
    const-wide v3, 0x7fffffffffffffffL

    .line 6
    invoke-direct {v0, v1, v2, v3, v4}, Lkotlinx/coroutines/flow/StartedWhileSubscribed;-><init>(JJ)V

    .line 11
    return-object v0
    .line 14
.end method
