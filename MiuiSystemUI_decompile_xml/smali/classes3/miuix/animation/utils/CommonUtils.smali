.class public Lmiuix/animation/utils/CommonUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final BUILT_IN:[Ljava/lang/Class;

.field public static final TAG:Ljava/lang/String; = "miuix_anim"

.field public static final UNIT_SECOND:I = 0x3e8

.field public static final sArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private static sTimeStatArray:Landroid/util/ArrayMap;

.field private static sTouchSlop:F


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 2
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/utils/CommonUtils;->sArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 7
    const-class v1, Ljava/lang/String;

    .line 9
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 11
    const-class v3, Ljava/lang/Integer;

    .line 13
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 15
    const-class v5, Ljava/lang/Long;

    .line 17
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 19
    const-class v7, Ljava/lang/Short;

    .line 21
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 23
    const-class v9, Ljava/lang/Float;

    .line 25
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 27
    const-class v11, Ljava/lang/Double;

    .line 29
    filled-new-array/range {v1 .. v11}, [Ljava/lang/Class;

    .line 31
    move-result-object v0

    .line 34
    sput-object v0, Lmiuix/animation/utils/CommonUtils;->BUILT_IN:[Ljava/lang/Class;

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    .line 37
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 39
    sput-object v0, Lmiuix/animation/utils/CommonUtils;->sTimeStatArray:Landroid/util/ArrayMap;

    .line 42
    return-void
    .line 44
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTo(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 22
    goto :goto_0

    .line 25
    :cond_1
    return-void
    .line 26
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "close "

    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string p0, " failed"

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 27
    const-string v1, "miuix_anim"

    .line 28
    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :cond_0
    :goto_0
    return-void
    .line 33
.end method

.method public static compressImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    const-string v0, "IO close fail, "

    .line 2
    const-string v1, "miuix_anim"

    .line 4
    const-string v2, "TintDrawable.compressImage failed, "

    .line 6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 8
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    const/4 v4, 0x0

    .line 13
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 14
    invoke-virtual {p0, v5, p1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 16
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    .line 19
    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 21
    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 24
    invoke-static {v3}, Lmiuix/animation/utils/CommonUtils;->parseToInputStream(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayInputStream;

    .line 26
    move-result-object p1

    .line 29
    invoke-static {p1, v4, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 30
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    goto :goto_1

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_2

    .line 56
    :catch_1
    move-exception p0

    .line 57
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 69
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 73
    goto :goto_1

    .line 76
    :catch_2
    move-exception p0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    goto :goto_0

    .line 83
    :goto_1
    return-object v4

    .line 84
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 85
    goto :goto_3

    .line 88
    :catch_3
    move-exception p1

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 101
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_3
    throw p0
    .line 105
.end method

.method public static getDistance(FFFF)D
    .locals 4

    .line 1
    sub-float/2addr p2, p0

    .line 2
    float-to-double v0, p2

    .line 3
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 6
    move-result-wide v0

    .line 9
    sub-float/2addr p3, p1

    .line 10
    float-to-double p0, p3

    .line 11
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 12
    move-result-wide p0

    .line 15
    add-double/2addr p0, v0

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 17
    move-result-wide p0

    .line 20
    return-wide p0
    .line 21
.end method

.method public static getLocal(Ljava/lang/ThreadLocal;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    invoke-static {p1, v0}, Lmiuix/animation/utils/ObjectPool;->acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    :cond_0
    return-object v0
    .line 20
.end method

.method public static getRect(Lmiuix/animation/IAnimTarget;Landroid/graphics/RectF;)V
    .locals 2

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 4
    move-result v0

    .line 7
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 8
    sget-object v0, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    .line 10
    invoke-virtual {p0, v0}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 12
    move-result v0

    .line 15
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 16
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 18
    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 20
    invoke-virtual {p0, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 22
    move-result v1

    .line 25
    add-float/2addr v1, v0

    .line 26
    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 27
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 29
    sget-object v1, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 31
    invoke-virtual {p0, v1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 33
    move-result p0

    .line 36
    add-float/2addr p0, v0

    .line 37
    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    .line 38
    return-void
    .line 40
.end method

.method public static getSize(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)F
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    sget-object p1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    .line 9
    if-ne p1, v0, :cond_1

    .line 11
    sget-object p1, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    sget-object v0, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 16
    if-eq p1, v0, :cond_3

    .line 18
    sget-object v0, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 20
    if-ne p1, v0, :cond_2

    .line 22
    goto :goto_0

    .line 24
    :cond_2
    const/4 p1, 0x0

    .line 25
    :cond_3
    :goto_0
    if-nez p1, :cond_4

    .line 26
    const/4 p0, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_4
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->getValue(Lmiuix/animation/property/FloatProperty;)F

    .line 30
    move-result p0

    .line 33
    :goto_1
    return p0
    .line 34
.end method

.method public static getTouchSlop(Landroid/view/View;)F
    .locals 2

    .line 1
    sget v0, Lmiuix/animation/utils/CommonUtils;->sTouchSlop:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    if-nez v0, :cond_0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 14
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 19
    move-result p0

    .line 22
    int-to-float p0, p0

    .line 23
    sput p0, Lmiuix/animation/utils/CommonUtils;->sTouchSlop:F

    .line 24
    :cond_0
    sget p0, Lmiuix/animation/utils/CommonUtils;->sTouchSlop:F

    .line 26
    return p0
    .line 28
.end method

.method public static hasFlags(JJ)Z
    .locals 0

    .line 1
    and-long/2addr p0, p2

    .line 2
    const-wide/16 p2, 0x0

    .line 3
    cmp-long p0, p0, p2

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public static inArray([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    if-eqz p0, :cond_1

    .line 5
    array-length v1, p0

    .line 7
    if-lez v1, :cond_1

    .line 8
    array-length v1, p0

    .line 10
    move v2, v0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    aget-object v3, p0, v2

    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    return v0
    .line 27
.end method

.method public static isArrayEmpty([Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    array-length p0, p0

    .line 4
    if-nez p0, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 10
    :goto_1
    return p0
    .line 11
.end method

.method public static isBuiltInClass(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/utils/CommonUtils;->BUILT_IN:[Ljava/lang/Class;

    .line 2
    invoke-static {v0, p0}, Lmiuix/animation/utils/CommonUtils;->inArray([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public static mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    const/16 v1, 0x7b

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    if-eqz p0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 14
    move-result v1

    .line 17
    if-lez v1, :cond_1

    .line 18
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 31
    const/16 v2, 0xa

    .line 32
    if-eqz v1, :cond_0

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const/16 v2, 0x3d

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    :cond_1
    const/16 p0, 0x7d

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    return-object v0
    .line 76
.end method

.method public static mapsToString([Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "["

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    const/16 v2, 0xa

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const/16 v2, 0x2e

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    aget-object v2, p0, v1

    .line 26
    const-string v3, "    "

    .line 28
    invoke-static {v2, v3}, Lmiuix/animation/utils/CommonUtils;->mapToString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    const-string p0, "\n]"

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 48
    return-object p0
    .line 49
.end method

.method public static varargs mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-object p1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 15
    array-length v1, p0

    .line 16
    array-length v2, p1

    .line 17
    add-int/2addr v1, v2

    .line 18
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    array-length v1, p0

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    array-length p0, p0

    .line 28
    array-length v1, p1

    .line 29
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    check-cast v0, [Ljava/lang/Object;

    .line 33
    return-object v0
    .line 35
.end method

.method public static parseToInputStream(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayInputStream;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 4
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    return-object v0
    .line 11
.end method

.method public static readProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "getprop "

    .line 2
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 21
    move-result-object p0

    .line 24
    new-instance v0, Ljava/io/InputStreamReader;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 27
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    .line 34
    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 39
    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 42
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 43
    invoke-static {v0}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 46
    return-object v1

    .line 49
    :catch_0
    move-exception v1

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    move-object v4, v1

    .line 53
    move-object v1, p0

    .line 54
    move-object p0, v4

    .line 55
    goto :goto_1

    .line 56
    :catch_1
    move-exception p0

    .line 57
    move-object v4, v1

    .line 58
    move-object v1, p0

    .line 59
    move-object p0, v4

    .line 60
    goto :goto_0

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    move-object v0, v1

    .line 63
    move-object v1, p0

    .line 64
    move-object p0, v0

    .line 65
    goto :goto_1

    .line 66
    :catch_2
    move-exception p0

    .line 67
    move-object v0, v1

    .line 68
    move-object v1, p0

    .line 69
    move-object p0, v0

    .line 70
    :goto_0
    :try_start_3
    const-string v2, "miuix_anim"

    .line 71
    const-string v3, "readProp failed"

    .line 73
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 75
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 78
    invoke-static {v0}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 81
    const-string p0, ""

    .line 84
    return-object p0

    .line 86
    :catchall_2
    move-exception v1

    .line 87
    :goto_1
    invoke-static {p0}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 88
    invoke-static {v0}, Lmiuix/animation/utils/CommonUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    throw v1
    .line 94
.end method

.method public static runOnPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    new-instance v0, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;

    .line 5
    invoke-direct {v0, p1}, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0, p0}, Lmiuix/animation/utils/CommonUtils$OnPreDrawTask;->start(Landroid/view/View;)V

    .line 10
    return-void
    .line 13
.end method

.method public static varargs timeStatBegin([Ljava/lang/String;)V
    .locals 7

    .line 1
    if-eqz p0, :cond_2

    .line 2
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    move-result-wide v0

    .line 11
    array-length v2, p0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_2

    .line 14
    aget-object v4, p0, v3

    .line 16
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v5

    .line 21
    if-eqz v5, :cond_1

    .line 22
    sget-object v5, Lmiuix/animation/utils/CommonUtils;->sTimeStatArray:Landroid/util/ArrayMap;

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    move-result-object v6

    .line 29
    invoke-virtual {v5, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_2
    :goto_1
    return-void
    .line 36
.end method

.method public static timeStatClear()V
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/utils/CommonUtils;->sTimeStatArray:Landroid/util/ArrayMap;

    .line 2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4
    return-void
    .line 7
.end method

.method public static timeStatEnd(Ljava/lang/String;)J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    sget-object v2, Lmiuix/animation/utils/CommonUtils;->sTimeStatArray:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Long;

    .line 12
    if-eqz v2, :cond_0

    .line 14
    move-wide v2, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v2, 0x0

    .line 18
    :goto_0
    sub-long/2addr v0, v2

    .line 20
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    .line 21
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    const-string v3, "\u6253\u5370\u5f53\u524d\u7528\u65f6\uff1a TAG = "

    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string p0, " \u7528\u65f6\u4e3a "

    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 48
    const/4 v2, 0x0

    .line 49
    new-array v2, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {p0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_1
    return-wide v0
    .line 55
.end method

.method public static toFloatValue(Ljava/lang/Object;)F
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/Integer;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Ljava/lang/Integer;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->floatValue()F

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    check-cast p0, Ljava/lang/Float;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 19
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "toFloat failed, value is "

    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
    .line 43
.end method

.method public static toIntArray([F)[I
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [I

    .line 3
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    aget v2, p0, v1

    .line 9
    float-to-int v2, v2

    .line 11
    aput v2, v0, v1

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    return-object v0
    .line 17
.end method

.method public static toIntValue(Ljava/lang/Object;)I
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/Integer;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Ljava/lang/Integer;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    check-cast p0, Ljava/lang/Float;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Float;->intValue()I

    .line 19
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "toFloat failed, value is "

    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
    .line 43
.end method
