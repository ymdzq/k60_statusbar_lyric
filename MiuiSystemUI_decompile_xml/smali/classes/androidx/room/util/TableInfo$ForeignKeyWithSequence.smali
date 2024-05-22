.class public final Landroidx/room/util/TableInfo$ForeignKeyWithSequence;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final mFrom:Ljava/lang/String;

.field public final mId:I

.field public final mSequence:I

.field public final mTo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->mId:I

    .line 5
    iput p3, p0, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->mSequence:I

    .line 7
    iput-object p1, p0, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->mFrom:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->mTo:Ljava/lang/String;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;

    .line 2
    iget v0, p0, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->mId:I

    .line 4
    iget v1, p1, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->mId:I

    .line 6
    sub-int/2addr v0, v1

    .line 8
    if-nez v0, :cond_0

    .line 9
    iget p0, p0, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->mSequence:I

    .line 11
    iget p1, p1, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->mSequence:I

    .line 13
    sub-int v0, p0, p1

    .line 15
    :cond_0
    return v0
    .line 17
.end method
