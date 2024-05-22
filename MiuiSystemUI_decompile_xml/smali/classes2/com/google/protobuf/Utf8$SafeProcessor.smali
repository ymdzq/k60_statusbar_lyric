.class public final Lcom/google/protobuf/Utf8$SafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/protobuf/Utf8$SafeProcessor;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    .line 4
    return-void
    .line 7
.end method

.method public static unsafeIncompleteStateFor(J[BII)I
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/16 v1, -0xc

    .line 3
    if-eqz p4, :cond_4

    .line 5
    const/4 v2, 0x1

    .line 7
    if-eq p4, v2, :cond_1

    .line 8
    const/4 v0, 0x2

    .line 10
    if-ne p4, v0, :cond_0

    .line 11
    invoke-static {p2, p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 13
    move-result p4

    .line 16
    const-wide/16 v0, 0x1

    .line 17
    add-long/2addr p0, v0

    .line 19
    invoke-static {p2, p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 20
    move-result p0

    .line 23
    invoke-static {p3, p4, p0}, Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 29
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 31
    throw p0

    .line 34
    :cond_1
    invoke-static {p2, p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    .line 35
    move-result p0

    .line 38
    sget-object p1, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$SafeProcessor;

    .line 39
    if-gt p3, v1, :cond_3

    .line 41
    const/16 p1, -0x41

    .line 43
    if-le p0, p1, :cond_2

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    shl-int/lit8 p0, p0, 0x8

    .line 48
    xor-int v0, p3, p0

    .line 50
    :cond_3
    :goto_0
    return v0

    .line 52
    :cond_4
    sget-object p0, Lcom/google/protobuf/Utf8;->processor:Lcom/google/protobuf/Utf8$SafeProcessor;

    .line 53
    if-le p3, v1, :cond_5

    .line 55
    move p3, v0

    .line 57
    :cond_5
    return p3
    .line 58
.end method
