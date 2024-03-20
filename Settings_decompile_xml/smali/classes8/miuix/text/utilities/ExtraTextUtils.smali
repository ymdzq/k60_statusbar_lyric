.class public Lmiuix/text/utilities/ExtraTextUtils;
.super Ljava/lang/Object;
.source "ExtraTextUtils.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 25
    fill-array-data v0, :array_0

    sput-object v0, Lmiuix/text/utilities/ExtraTextUtils;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-static {p0, p1, p2, v0}, Lmiuix/text/utilities/ExtraTextUtils;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    long-to-float p1, p1

    .line 150
    sget p2, Lmiuix/text/utilities/R$string;->size_byte:I

    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v1, p1, v0

    const/high16 v2, 0x447a0000    # 1000.0f

    if-lez v1, :cond_1

    .line 152
    sget p2, Lmiuix/text/utilities/R$string;->size_kilo_byte:I

    div-float/2addr p1, v2

    :cond_1
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    .line 156
    sget p2, Lmiuix/text/utilities/R$string;->size_mega_byte:I

    div-float/2addr p1, v2

    :cond_2
    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    .line 160
    sget p2, Lmiuix/text/utilities/R$string;->size_giga_byte:I

    div-float/2addr p1, v2

    :cond_3
    cmpl-float v1, p1, v0

    if-lez v1, :cond_4

    .line 164
    sget p2, Lmiuix/text/utilities/R$string;->size_tera_byte:I

    div-float/2addr p1, v2

    :cond_4
    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    .line 168
    sget p2, Lmiuix/text/utilities/R$string;->size_peta_byte:I

    div-float/2addr p1, v2

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    const-string v1, "%.2f"

    if-gez v0, :cond_6

    .line 174
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    if-eqz p3, :cond_7

    .line 177
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "%.1f"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 179
    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    const-string v2, "%.0f"

    if-gez v0, :cond_a

    if-eqz p3, :cond_9

    .line 183
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 185
    :cond_9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 188
    :cond_a
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 191
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x0

    const/16 v1, 0x2e

    const/4 v2, 0x3

    const/16 v3, 0x30

    if-le p3, v2, :cond_b

    add-int/lit8 v2, p3, -0x3

    .line 192
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_b

    add-int/lit8 v4, p3, -0x2

    .line 193
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_b

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_b

    .line 194
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_b
    const/4 v2, 0x2

    if-le p3, v2, :cond_c

    add-int/lit8 v2, p3, -0x2

    .line 195
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_c

    add-int/lit8 p3, p3, -0x1

    .line 196
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ne p3, v3, :cond_c

    .line 197
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 199
    :cond_c
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lmiuix/text/utilities/R$string;->size_suffix:I

    .line 200
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
