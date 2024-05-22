.class public final Lkotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $this_asIterable$inlined:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1;->$this_asIterable$inlined:[Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1;->$this_asIterable$inlined:[Ljava/lang/Object;

    .line 2
    new-instance v0, Lkotlin/jvm/internal/ArrayIterator;

    .line 4
    invoke-direct {v0, p0}, Lkotlin/jvm/internal/ArrayIterator;-><init>([Ljava/lang/Object;)V

    .line 6
    return-object v0
    .line 9
.end method
