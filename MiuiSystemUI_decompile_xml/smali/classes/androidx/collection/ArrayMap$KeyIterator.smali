.class public final Landroidx/collection/ArrayMap$KeyIterator;
.super Landroidx/collection/IndexBasedArrayIterator;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>(Landroidx/collection/ArrayMap;I)V
    .locals 1

    .line 1
    iput p2, p0, Landroidx/collection/ArrayMap$KeyIterator;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_0

    .line 5
    iput-object p1, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Landroidx/collection/ArrayMap;

    .line 7
    iget p1, p1, Landroidx/collection/SimpleArrayMap;->size:I

    .line 9
    invoke-direct {p0, p1}, Landroidx/collection/IndexBasedArrayIterator;-><init>(I)V

    .line 11
    return-void

    .line 14
    :cond_0
    iput-object p1, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Landroidx/collection/ArrayMap;

    .line 15
    iget p1, p1, Landroidx/collection/SimpleArrayMap;->size:I

    .line 17
    invoke-direct {p0, p1}, Landroidx/collection/IndexBasedArrayIterator;-><init>(I)V

    .line 19
    return-void
    .line 22
.end method


# virtual methods
.method public final elementAt(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/collection/ArrayMap$KeyIterator;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Landroidx/collection/ArrayMap;

    .line 8
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :goto_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Landroidx/collection/ArrayMap;

    .line 15
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 22
.end method

.method public final removeAt(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/collection/ArrayMap$KeyIterator;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Landroidx/collection/ArrayMap;

    .line 8
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object p0, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Landroidx/collection/ArrayMap;

    .line 14
    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 16
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method
