.class public final Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $this_asIterable$inlined:Lkotlin/sequences/Sequence;


# direct methods
.method public constructor <init>(Lkotlin/text/DelimitedRangesSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;->$this_asIterable$inlined:Lkotlin/sequences/Sequence;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/sequences/SequencesKt___SequencesKt$asIterable$$inlined$Iterable$1;->$this_asIterable$inlined:Lkotlin/sequences/Sequence;

    .line 2
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
