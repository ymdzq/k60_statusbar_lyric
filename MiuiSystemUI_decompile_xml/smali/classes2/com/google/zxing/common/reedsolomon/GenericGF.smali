.class public final Lcom/google/zxing/common/reedsolomon/GenericGF;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;


# instance fields
.field public expTable:[I

.field public final generatorBase:I

.field public initialized:Z

.field public logTable:[I

.field public final primitive:I

.field public final size:I

.field public zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 2
    const/16 v1, 0x1069

    .line 4
    const/16 v2, 0x1000

    .line 6
    const/4 v3, 0x1

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    .line 9
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 12
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 14
    const/16 v1, 0x409

    .line 16
    const/16 v2, 0x400

    .line 18
    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    .line 20
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 23
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 25
    const/16 v1, 0x43

    .line 27
    const/16 v2, 0x40

    .line 29
    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    .line 31
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 34
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 36
    const/16 v1, 0x13

    .line 38
    const/16 v2, 0x10

    .line 40
    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    .line 42
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 45
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    const/16 v1, 0x11d

    .line 49
    const/16 v2, 0x100

    .line 51
    const/4 v4, 0x0

    .line 53
    invoke-direct {v0, v1, v2, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    .line 54
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 57
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 59
    const/16 v1, 0x12d

    .line 61
    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    .line 63
    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 66
    return-void
    .line 68
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialized:Z

    .line 6
    iput p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->primitive:I

    .line 8
    iput p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 10
    iput p3, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->generatorBase:I

    .line 12
    if-gtz p2, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialize()V

    .line 16
    :cond_0
    return-void
    .line 19
.end method


# virtual methods
.method public final checkInit()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialized:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialize()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final initialize()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 2
    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 6
    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 10
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v4, v1

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v0, :cond_1

    .line 16
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 18
    aput v4, v5, v3

    .line 20
    shl-int/2addr v4, v1

    .line 22
    if-lt v4, v0, :cond_0

    .line 23
    iget v5, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->primitive:I

    .line 25
    xor-int/2addr v4, v5

    .line 27
    add-int/lit8 v5, v0, -0x1

    .line 28
    and-int/2addr v4, v5

    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    move v3, v2

    .line 34
    :goto_1
    add-int/lit8 v4, v0, -0x1

    .line 35
    if-ge v3, v4, :cond_2

    .line 37
    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 39
    iget-object v5, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 41
    aget v5, v5, v3

    .line 43
    aput v3, v4, v5

    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_1

    .line 49
    :cond_2
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 50
    filled-new-array {v2}, [I

    .line 52
    move-result-object v3

    .line 55
    invoke-direct {v0, p0, v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    .line 56
    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 59
    filled-new-array {v1}, [I

    .line 61
    move-result-object v0

    .line 64
    array-length v3, v0

    .line 65
    if-eqz v3, :cond_6

    .line 66
    array-length v3, v0

    .line 68
    if-le v3, v1, :cond_5

    .line 69
    aget v4, v0, v2

    .line 71
    if-nez v4, :cond_5

    .line 73
    move v4, v1

    .line 75
    :goto_2
    if-ge v4, v3, :cond_3

    .line 76
    aget v5, v0, v4

    .line 78
    if-nez v5, :cond_3

    .line 80
    add-int/lit8 v4, v4, 0x1

    .line 82
    goto :goto_2

    .line 84
    :cond_3
    if-ne v4, v3, :cond_4

    .line 85
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 87
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->zero:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    .line 90
    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 92
    goto :goto_3

    .line 94
    :cond_4
    sub-int/2addr v3, v4

    .line 95
    new-array v3, v3, [I

    .line 96
    array-length v5, v3

    .line 98
    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    :cond_5
    :goto_3
    iput-boolean v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->initialized:Z

    .line 102
    return-void

    .line 104
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 105
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 107
    throw p0
    .line 110
.end method

.method public final multiply(II)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->checkInit()V

    .line 2
    if-eqz p1, :cond_1

    .line 5
    if-nez p2, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->expTable:[I

    .line 10
    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->logTable:[I

    .line 12
    aget p1, v1, p1

    .line 14
    aget p2, v1, p2

    .line 16
    add-int/2addr p1, p2

    .line 18
    iget p0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 19
    add-int/lit8 p0, p0, -0x1

    .line 21
    rem-int/2addr p1, p0

    .line 23
    aget p0, v0, p1

    .line 24
    return p0

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 27
    return p0
    .line 28
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "GF(0x"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->primitive:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const/16 v1, 0x2c

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    iget p0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->size:I

    .line 23
    const/16 v1, 0x29

    .line 25
    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    return-object p0
    .line 31
.end method
