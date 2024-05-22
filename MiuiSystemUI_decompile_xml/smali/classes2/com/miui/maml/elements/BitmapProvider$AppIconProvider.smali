.class Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ApplicationIcon"


# instance fields
.field private mCls:Ljava/lang/String;

.field private mNoIcon:Z

.field private mPkg:Ljava/lang/String;

.field private mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    return-void
    .line 5
.end method

.method private parseSrc(Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    .line 3
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 5
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->access$002(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v1

    .line 14
    const-string v2, "invalid src of ApplicationIcon type: "

    .line 15
    const-string v3, "BitmapProvider"

    .line 17
    const/4 v4, 0x1

    .line 19
    if-nez v1, :cond_2

    .line 20
    const-string v1, ","

    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 27
    array-length v5, v1

    .line 28
    const/4 v6, 0x2

    .line 29
    if-ne v5, v6, :cond_0

    .line 30
    aget-object p1, v1, v0

    .line 32
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    .line 34
    aget-object p1, v1, v4

    .line 36
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    .line 38
    goto :goto_0

    .line 40
    :cond_0
    array-length v5, v1

    .line 41
    if-ne v5, v4, :cond_1

    .line 42
    aget-object p1, v1, v0

    .line 44
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    .line 46
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 52
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-boolean v4, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 70
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-boolean v4, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    .line 74
    :goto_0
    return-void
    .line 76
.end method

.method private tryToSetBitmap()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 8
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object v0

    .line 17
    new-instance v1, Landroid/content/ComponentName;

    .line 18
    iget-object v2, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    .line 20
    iget-object v3, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    .line 22
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 32
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 34
    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 40
    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 46
    move-result-object v0

    .line 49
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 50
    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 54
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 56
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 58
    move-result-object v0

    .line 61
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 62
    goto :goto_2

    .line 65
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 66
    move-result v1

    .line 69
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 70
    move-result v2

    .line 73
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 74
    move-result v3

    .line 77
    const/4 v4, -0x1

    .line 78
    if-eq v3, v4, :cond_2

    .line 79
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 81
    goto :goto_1

    .line 83
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 84
    :goto_1
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 86
    move-result-object v3

    .line 89
    new-instance v4, Landroid/graphics/Canvas;

    .line 90
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 92
    const/4 v5, 0x0

    .line 95
    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 102
    invoke-virtual {v0, v3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_2

    .line 107
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "fail to get icon for src of ApplicationIcon type: "

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    .line 115
    const-string v2, "BitmapProvider"

    .line 117
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    .line 123
    :goto_2
    return-void
    .line 125
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    .line 10
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->parseSrc(Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 15
    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    .line 17
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    iget-boolean p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    .line 23
    if-nez p1, :cond_1

    .line 25
    invoke-direct {p0}, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->tryToSetBitmap()V

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 30
    return-object p0
    .line 32
.end method

.method public init(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->parseSrc(Ljava/lang/String;)V

    .line 7
    return-void
    .line 10
.end method
