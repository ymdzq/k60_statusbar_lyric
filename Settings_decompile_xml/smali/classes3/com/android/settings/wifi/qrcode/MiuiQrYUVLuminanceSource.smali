.class public final Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "MiuiQrYUVLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 1

    .line 49
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int v0, p4, p6

    if-gt v0, p2, :cond_1

    add-int v0, p5, p7

    if-gt v0, p3, :cond_1

    .line 55
    iput-object p1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->yuvData:[B

    .line 56
    iput p2, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->dataWidth:I

    .line 57
    iput p3, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->dataHeight:I

    .line 58
    iput p4, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->left:I

    .line 59
    iput p5, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->top:I

    if-eqz p8, :cond_0

    .line 61
    invoke-direct {p0, p6, p7}, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->reverseHorizontal(II)V

    :cond_0
    return-void

    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Crop rectangle does not fit within image data."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private reverseHorizontal(II)V
    .locals 8

    .line 159
    iget v0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->top:I

    iget v1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->left:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 160
    div-int/lit8 v2, p1, 0x2

    add-int/2addr v2, v0

    add-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_0

    .line 162
    iget-object v5, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->yuvData:[B

    aget-byte v6, v5, v4

    .line 163
    aget-byte v7, v5, v3

    aput-byte v7, v5, v4

    .line 164
    aput-byte v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 159
    iget v2, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->dataWidth:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getMatrix()[B
    .locals 7

    .line 81
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v1

    .line 86
    iget v2, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->dataWidth:I

    if-ne v0, v2, :cond_0

    iget v3, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->dataHeight:I

    if-ne v1, v3, :cond_0

    .line 87
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->yuvData:[B

    return-object p0

    :cond_0
    mul-int v3, v0, v1

    .line 91
    new-array v4, v3, [B

    .line 92
    iget v5, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->top:I

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->left:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    if-ne v0, v2, :cond_1

    .line 96
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->yuvData:[B

    invoke-static {p0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_1
    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v2, v6, v0

    .line 103
    iget-object v3, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->yuvData:[B

    invoke-static {v3, v5, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget v2, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->dataWidth:I

    add-int/2addr v5, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getRow(I[B)[B
    .locals 2

    if-ltz p1, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_0

    .line 71
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 72
    :cond_0
    new-array p2, v0, [B

    .line 74
    :cond_1
    iget v1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->top:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->dataWidth:I

    mul-int/2addr p1, v1

    iget v1, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->left:I

    add-int/2addr p1, v1

    .line 75
    iget-object p0, p0, Lcom/android/settings/wifi/qrcode/MiuiQrYUVLuminanceSource;->yuvData:[B

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 68
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested row is outside the image: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
