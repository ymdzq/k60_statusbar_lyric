.class public final Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_asSequence$inlined:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$1;->$this_asSequence$inlined:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$1;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lkotlin/collections/ArraysKt___ArraysKt$asSequence$$inlined$Sequence$1;->$this_asSequence$inlined:Ljava/lang/Object;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p0, [Ljava/lang/Object;

    .line 10
    new-instance v0, Lkotlin/jvm/internal/ArrayIterator;

    .line 12
    invoke-direct {v0, p0}, Lkotlin/jvm/internal/ArrayIterator;-><init>([Ljava/lang/Object;)V

    .line 14
    return-object v0

    .line 17
    :goto_0
    check-cast p0, [I

    .line 18
    new-instance v0, Lkotlin/jvm/internal/ArrayIntIterator;

    .line 20
    invoke-direct {v0, p0}, Lkotlin/jvm/internal/ArrayIntIterator;-><init>([I)V

    .line 22
    return-object v0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
