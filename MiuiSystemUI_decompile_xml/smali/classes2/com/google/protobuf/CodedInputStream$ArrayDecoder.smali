.class public abstract Lcom/google/protobuf/CodedInputStream$ArrayDecoder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static decodeZigZag32(I)I
    .locals 1

    .line 1
    ushr-int/lit8 v0, p0, 0x1

    .line 2
    and-int/lit8 p0, p0, 0x1

    .line 4
    neg-int p0, p0

    .line 6
    xor-int/2addr p0, v0

    .line 7
    return p0
    .line 8
.end method

.method public static decodeZigZag64(J)J
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    ushr-long v0, p0, v0

    .line 3
    const-wide/16 v2, 0x1

    .line 5
    and-long/2addr p0, v2

    .line 7
    neg-long p0, p0

    .line 8
    xor-long/2addr p0, v0

    .line 9
    return-wide p0
    .line 10
.end method
