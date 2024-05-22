.class public final Lkotlin/sequences/DistinctIterator;
.super Lkotlin/collections/AbstractIterator;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final keySelector:Lkotlin/jvm/functions/Function1;

.field public final observed:Ljava/util/HashSet;

.field public final source:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/sequences/DistinctIterator;->source:Ljava/util/Iterator;

    .line 5
    iput-object p2, p0, Lkotlin/sequences/DistinctIterator;->keySelector:Lkotlin/jvm/functions/Function1;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    .line 9
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 11
    iput-object p1, p0, Lkotlin/sequences/DistinctIterator;->observed:Ljava/util/HashSet;

    .line 14
    return-void
    .line 16
.end method
