.class public abstract Lkotlinx/coroutines/selects/SelectKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ALREADY_SELECTED:Lkotlinx/coroutines/internal/Symbol;

.field public static final NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

.field public static final RESUMED:Lkotlinx/coroutines/internal/Symbol;

.field public static final UNDECIDED:Lkotlinx/coroutines/internal/Symbol;

.field public static final selectOpSequenceNumber:Lkotlinx/coroutines/selects/SeqNumber;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 2
    const-string v1, "NOT_SELECTED"

    .line 4
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lkotlinx/coroutines/selects/SelectKt;->NOT_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 11
    const-string v1, "ALREADY_SELECTED"

    .line 13
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v0, Lkotlinx/coroutines/selects/SelectKt;->ALREADY_SELECTED:Lkotlinx/coroutines/internal/Symbol;

    .line 18
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 20
    const-string v1, "UNDECIDED"

    .line 22
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 24
    sput-object v0, Lkotlinx/coroutines/selects/SelectKt;->UNDECIDED:Lkotlinx/coroutines/internal/Symbol;

    .line 27
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 29
    const-string v1, "RESUMED"

    .line 31
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 33
    sput-object v0, Lkotlinx/coroutines/selects/SelectKt;->RESUMED:Lkotlinx/coroutines/internal/Symbol;

    .line 36
    new-instance v0, Lkotlinx/coroutines/selects/SeqNumber;

    .line 38
    invoke-direct {v0}, Lkotlinx/coroutines/selects/SeqNumber;-><init>()V

    .line 40
    sput-object v0, Lkotlinx/coroutines/selects/SelectKt;->selectOpSequenceNumber:Lkotlinx/coroutines/selects/SeqNumber;

    .line 43
    return-void
    .line 45
.end method
