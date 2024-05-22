.class public final Lcom/android/systemui/flags/ConditionalRestarter;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final conditions:Ljava/util/Set;

.field public pendingReason:Ljava/lang/String;

.field public final systemExitRestarter:Lcom/android/systemui/flags/SystemExitRestarter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/SystemExitRestarter;Ljava/util/Set;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/flags/ConditionalRestarter;->systemExitRestarter:Lcom/android/systemui/flags/SystemExitRestarter;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/flags/ConditionalRestarter;->conditions:Ljava/util/Set;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/flags/ConditionalRestarter;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/flags/ConditionalRestarter;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 11
    const-string p1, ""

    .line 13
    iput-object p1, p0, Lcom/android/systemui/flags/ConditionalRestarter;->pendingReason:Ljava/lang/String;

    .line 15
    return-void
    .line 17
.end method
