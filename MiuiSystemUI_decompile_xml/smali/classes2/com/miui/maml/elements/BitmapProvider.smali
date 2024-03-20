.class public abstract Lcom/miui/maml/elements/BitmapProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BitmapProvider"


# instance fields
.field protected mRoot:Lcom/miui/maml/ScreenElementRoot;

.field protected mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    iput-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 11
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 13
    return-void
    .line 15
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 4

    .line 1
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2
    int-to-double v0, v0

    .line 4
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5
    int-to-double v2, p0

    .line 7
    mul-double/2addr v0, v2

    .line 8
    int-to-double p0, p1

    .line 9
    div-double/2addr v0, p0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 11
    move-result-wide p0

    .line 14
    const/4 v0, 0x1

    .line 15
    :goto_0
    mul-int/lit8 v1, v0, 0x2

    .line 16
    int-to-double v2, v1

    .line 18
    cmpg-double v2, v2, p0

    .line 19
    if-gtz v2, :cond_0

    .line 21
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v0
    .line 25
.end method

.method public static create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 5
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    sparse-switch v0, :sswitch_data_0

    .line 10
    goto :goto_0

    .line 13
    :sswitch_0
    const-string v0, "ApplicationIcon"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x6

    .line 23
    goto :goto_0

    .line 24
    :sswitch_1
    const-string v0, "ResourceImage"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x5

    .line 34
    goto :goto_0

    .line 35
    :sswitch_2
    const-string v0, "VirtualScreen"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    const/4 v1, 0x4

    .line 45
    goto :goto_0

    .line 46
    :sswitch_3
    const-string v0, "Uri"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v0

    .line 52
    if-nez v0, :cond_3

    .line 53
    goto :goto_0

    .line 55
    :cond_3
    const/4 v1, 0x3

    .line 56
    goto :goto_0

    .line 57
    :sswitch_4
    const-string v0, "FileSystem"

    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 63
    if-nez v0, :cond_4

    .line 64
    goto :goto_0

    .line 66
    :cond_4
    const/4 v1, 0x2

    .line 67
    goto :goto_0

    .line 68
    :sswitch_5
    const-string v0, "BitmapHolder"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v0

    .line 74
    if-nez v0, :cond_5

    .line 75
    goto :goto_0

    .line 77
    :cond_5
    const/4 v1, 0x1

    .line 78
    goto :goto_0

    .line 79
    :sswitch_6
    const-string v0, "BitmapVar"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v0

    .line 85
    if-nez v0, :cond_6

    .line 86
    goto :goto_0

    .line 88
    :cond_6
    const/4 v1, 0x0

    .line 89
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 90
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 93
    move-result-object v0

    .line 96
    const-string v1, "BitmapProvider"

    .line 97
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenContext;->getObjectFactory(Ljava/lang/String;)Lcom/miui/maml/ObjectFactory;

    .line 99
    move-result-object v0

    .line 102
    check-cast v0, Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;

    .line 103
    if-eqz v0, :cond_7

    .line 105
    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/ObjectFactory$BitmapProviderFactory;->create(Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)Lcom/miui/maml/elements/BitmapProvider;

    .line 107
    move-result-object p1

    .line 110
    if-eqz p1, :cond_7

    .line 111
    return-object p1

    .line 113
    :cond_7
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 114
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 116
    return-object p1

    .line 119
    :pswitch_0
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;

    .line 120
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 122
    return-object p1

    .line 125
    :pswitch_1
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    .line 126
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 128
    return-object p1

    .line 131
    :pswitch_2
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;

    .line 132
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$VirtualScreenProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 134
    return-object p1

    .line 137
    :pswitch_3
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$UriProvider;

    .line 138
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$UriProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 140
    return-object p1

    .line 143
    :pswitch_4
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;

    .line 144
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$FileSystemProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 146
    return-object p1

    .line 149
    :pswitch_5
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;

    .line 150
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$BitmapHolderProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 152
    return-object p1

    .line 155
    :pswitch_6
    new-instance p1, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;

    .line 156
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/BitmapProvider$BitmapVariableProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 158
    return-object p1

    .line 161
    :sswitch_data_0
    .sparse-switch
        -0x7321c4a8 -> :sswitch_6
        -0x1dc3e025 -> :sswitch_5
        -0x1d83dd15 -> :sswitch_4
        0x14d4c -> :sswitch_3
        0x4b044737 -> :sswitch_2
        0x68c97dcd -> :sswitch_1
        0x7a3645c9 -> :sswitch_0
    .end sparse-switch

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 192
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 4
    return-void
    .line 7
.end method

.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 2
    return-object p0
    .line 4
.end method

.method public getBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 5
    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 15
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    if-lez p2, :cond_0

    .line 19
    if-lez p3, :cond_0

    .line 21
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 23
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 25
    const/4 v3, 0x1

    .line 28
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 29
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 31
    mul-int v3, p2, p3

    .line 34
    invoke-static {v2, v3}, Lcom/miui/maml/elements/BitmapProvider;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    .line 36
    move-result v3

    .line 39
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 40
    const/4 v3, 0x0

    .line 42
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 43
    iput p3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 45
    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 47
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 49
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 51
    move-result-object p0

    .line 54
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    move-result-object p0

    .line 60
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 61
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    invoke-static {p0, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 65
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 68
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 69
    invoke-static {p0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 72
    return-object p1

    .line 75
    :catch_0
    move-exception p1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    :try_start_3
    invoke-static {v1, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 78
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 82
    return-object p0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    move-object p0, v0

    .line 87
    goto :goto_1

    .line 88
    :catch_1
    move-exception p1

    .line 89
    move-object p0, v0

    .line 90
    goto :goto_0

    .line 91
    :catchall_1
    move-exception p1

    .line 92
    move-object p0, v0

    .line 93
    goto :goto_2

    .line 94
    :catch_2
    move-exception p1

    .line 95
    move-object p0, v0

    .line 96
    move-object v1, p0

    .line 97
    :goto_0
    :try_start_4
    const-string p2, "BitmapProvider"

    .line 98
    const-string p3, "getBitmapFromUri Exception"

    .line 100
    invoke-static {p2, p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 102
    invoke-static {v1}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 105
    invoke-static {p0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 108
    return-object v0

    .line 111
    :catchall_2
    move-exception p1

    .line 112
    :goto_1
    move-object v0, v1

    .line 113
    :goto_2
    invoke-static {v0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 114
    invoke-static {p0}, Lmiuix/core/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 117
    throw p1
    .line 120
.end method

.method public init(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/BitmapProvider;->reset()V

    .line 2
    return-void
    .line 5
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
