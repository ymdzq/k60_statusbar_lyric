.class public final Lcom/google/zxing/qrcode/encoder/ByteMatrix;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final bytes:[[B

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    filled-new-array {p2, p1}, [I

    .line 5
    move-result-object v0

    .line 8
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 9
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, [[B

    .line 15
    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 17
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 19
    iput p2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final get(II)B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 2
    aget-object p0, p0, p2

    .line 4
    aget-byte p0, p0, p1

    .line 6
    return p0
    .line 8
.end method

.method public final set(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object p0, p0, p2

    int-to-byte p2, p3

    aput-byte p2, p0, p1

    return-void
.end method

.method public final set(IIZ)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    aget-object p0, p0, p2

    int-to-byte p2, p3

    aput-byte p2, p0, p1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 4
    mul-int/lit8 v2, v1, 0x2

    .line 6
    iget v3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 8
    mul-int/2addr v2, v3

    .line 10
    add-int/lit8 v2, v2, 0x2

    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13
    const/4 v2, 0x0

    .line 16
    move v4, v2

    .line 17
    :goto_0
    if-ge v4, v3, :cond_3

    .line 18
    move v5, v2

    .line 20
    :goto_1
    if-ge v5, v1, :cond_2

    .line 21
    iget-object v6, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 23
    aget-object v6, v6, v4

    .line 25
    aget-byte v6, v6, v5

    .line 27
    if-eqz v6, :cond_1

    .line 29
    const/4 v7, 0x1

    .line 31
    if-eq v6, v7, :cond_0

    .line 32
    const-string v6, "  "

    .line 34
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    goto :goto_2

    .line 39
    :cond_0
    const-string v6, " 1"

    .line 40
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    goto :goto_2

    .line 45
    :cond_1
    const-string v6, " 0"

    .line 46
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    const/16 v5, 0xa

    .line 54
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v4, v4, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    return-object p0
    .line 66
.end method
