.class public Lcom/googlecode/leptonica/android/ReadFile;
.super Ljava/lang/Object;
.source "ReadFile.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lept"

    .line 32
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    const-class v0, Lcom/googlecode/leptonica/android/ReadFile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/googlecode/leptonica/android/ReadFile;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeReadBitmap(Landroid/graphics/Bitmap;)J
.end method

.method private static native nativeReadBytes8([BII)J
.end method

.method private static native nativeReadFile(Ljava/lang/String;)J
.end method

.method private static native nativeReadMem([BI)J
.end method

.method private static native nativeReplaceBytes8(J[BII)Z
.end method

.method public static readBitmap(Landroid/graphics/Bitmap;)Lcom/googlecode/leptonica/android/Pix;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 169
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Bitmap must be non-null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 172
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_1

    .line 173
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Bitmap config must be ARGB_8888"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 177
    :cond_1
    invoke-static {p0}, Lcom/googlecode/leptonica/android/ReadFile;->nativeReadBitmap(Landroid/graphics/Bitmap;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    .line 180
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed to read pix from bitmap"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 184
    :cond_2
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v1, v2}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0
.end method

.method public static readBytes8([BII)Lcom/googlecode/leptonica/android/Pix;
    .locals 2

    if-eqz p0, :cond_4

    if-lez p1, :cond_3

    if-lez p2, :cond_2

    .line 77
    array-length v0, p0

    mul-int v1, p1, p2

    if-lt v0, v1, :cond_1

    .line 80
    invoke-static {p0, p1, p2}, Lcom/googlecode/leptonica/android/ReadFile;->nativeReadBytes8([BII)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-eqz p2, :cond_0

    .line 85
    new-instance p2, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p2

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to read pix from memory"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array length does not match dimensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image height must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image width must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Byte array must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readFile(Ljava/io/File;)Lcom/googlecode/leptonica/android/Pix;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 127
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->LOG_TAG:Ljava/lang/String;

    const-string v1, "File must be non-null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->LOG_TAG:Ljava/lang/String;

    const-string v1, "File does not exist"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 134
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Cannot read file"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 139
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/leptonica/android/ReadFile;->nativeReadFile(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    .line 142
    new-instance p0, Lcom/googlecode/leptonica/android/Pix;

    invoke-direct {p0, v1, v2}, Lcom/googlecode/leptonica/android/Pix;-><init>(J)V

    return-object p0

    .line 145
    :cond_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 146
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 148
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_4

    .line 150
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Cannot decode bitmap"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 153
    :cond_4
    invoke-static {p0}, Lcom/googlecode/leptonica/android/ReadFile;->readBitmap(Landroid/graphics/Bitmap;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static readMem([B)Lcom/googlecode/leptonica/android/Pix;
    .locals 3

    if-nez p0, :cond_0

    .line 46
    sget-object p0, Lcom/googlecode/leptonica/android/ReadFile;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Image data byte array must be non-null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 51
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    .line 53
    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/googlecode/leptonica/android/ReadFile;->readBitmap(Landroid/graphics/Bitmap;)Lcom/googlecode/leptonica/android/Pix;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static replaceBytes8(Lcom/googlecode/leptonica/android/Pix;[BII)Z
    .locals 2

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    if-lez p2, :cond_4

    if-lez p3, :cond_3

    .line 107
    array-length v0, p1

    mul-int v1, p2, p3

    if-lt v0, v1, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/googlecode/leptonica/android/Pix;->getNativePix()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/googlecode/leptonica/android/ReadFile;->nativeReplaceBytes8(J[BII)Z

    move-result p0

    return p0

    .line 112
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix height does not match image height"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix width does not match image width"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array length does not match dimensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image height must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Image width must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Byte array must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source pix must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
