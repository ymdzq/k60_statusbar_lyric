.class public final Landroidx/recyclerview/widget/DiffUtil$Range;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public newListEnd:I

.field public newListStart:I

.field public oldListEnd:I

.field public oldListStart:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    .line 6
    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    .line 10
    iput p2, p0, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    .line 12
    return-void
    .line 14
.end method
