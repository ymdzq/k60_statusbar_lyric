.class public Lmiuix/autodensity/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static sResourcesImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    :try_start_0
    const-class v0, Landroid/app/ResourcesManager;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lmiuix/reflect/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager;

    sput-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 33
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    sput-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    .line 34
    const-class v1, Landroid/app/ResourcesManager;

    const-string v2, "mResourceImpls"

    invoke-static {v1, v0, v2}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    sput-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    .line 35
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    sput-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    :try_start_1
    const-class v0, Landroid/app/ResourcesManager;

    sget-object v1, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    const-string v2, "mLock"

    invoke-static {v0, v1, v2}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 v0, 0x0

    .line 43
    sput-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;

    .line 46
    :goto_0
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    if-eqz v0, :cond_0

    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    sget-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "AutoDensity"

    const-string v1, "ResourcesManager reflection failed, this app do not have permission to disable AutoDensity for activity/application"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static changeDensity(Landroid/content/res/Resources;)V
    .locals 3

    .line 63
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/autodensity/DensityConfigManager;->getTargetConfig()Lmiuix/autodensity/DensityConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v2, v0, Lmiuix/view/DisplayConfig;->densityDpi:I

    if-eq v1, v2, :cond_1

    .line 66
    invoke-static {p0, v0}, Lmiuix/autodensity/DensityUtil;->tryToCreateAndSetResourcesImpl(Landroid/content/res/Resources;Lmiuix/view/DisplayConfig;)V

    .line 69
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 71
    iget v2, v0, Lmiuix/view/DisplayConfig;->densityDpi:I

    iput v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 72
    iget v2, v0, Lmiuix/view/DisplayConfig;->density:F

    iput v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 73
    iget v2, v0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 74
    iget v2, v0, Lmiuix/view/DisplayConfig;->fontScale:F

    iput v2, p0, Landroid/content/res/Configuration;->fontScale:F

    .line 76
    invoke-static {}, Lmiuix/autodensity/AutoDensityConfig;->shouldUpdateSystemResource()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-static {v0}, Lmiuix/autodensity/DensityUtil;->setSystemResources(Lmiuix/view/DisplayConfig;)V

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after changeDensity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Lmiuix/view/DisplayConfig;)Landroid/content/res/ResourcesImpl;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "findOrCreateResourcesImplForKeyLocked failed "

    .line 122
    const-class v2, [Ljava/lang/String;

    .line 123
    :try_start_0
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 124
    const-class v4, Landroid/content/res/ResourcesKey;

    const-string v5, "mOverrideConfiguration"

    invoke-static {v4, v0, v5}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    .line 126
    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    move-object/from16 v4, p1

    .line 127
    iget v4, v4, Lmiuix/view/DisplayConfig;->densityDpi:I

    iput v4, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 129
    const-class v4, Landroid/content/res/ResourcesKey;

    const-string v5, "mDisplayId"

    invoke-static {v4, v0, v5}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 130
    const-class v5, Landroid/content/res/ResourcesKey;

    const-string v6, "mLibDirs"

    invoke-static {v5, v0, v6}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 131
    const-class v6, Landroid/content/res/ResourcesKey;

    const-string v7, "mCompatInfo"

    invoke-static {v6, v0, v7}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/CompatibilityInfo;

    .line 138
    const-class v7, Landroid/content/res/ResourcesKey;

    const-string v8, "mOverlayPaths"

    invoke-static {v7, v0, v8}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 155
    const-class v8, Landroid/content/res/ResourcesKey;

    const-string v9, "mLoaders"

    invoke-static {v8, v0, v9}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/res/loader/ResourcesLoader;

    .line 156
    const-class v9, Landroid/content/res/ResourcesKey;

    const/16 v10, 0x8

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v14, 0x2

    aput-object v2, v11, v14

    const/4 v15, 0x3

    aput-object v2, v11, v15

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x4

    aput-object v2, v11, v16

    const-class v2, Landroid/content/res/Configuration;

    const/16 v17, 0x5

    aput-object v2, v11, v17

    const-class v2, Landroid/content/res/CompatibilityInfo;

    const/16 v18, 0x6

    aput-object v2, v11, v18

    const-class v2, [Landroid/content/res/loader/ResourcesLoader;

    const/16 v19, 0x7

    aput-object v2, v11, v19

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v10, v0, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    aput-object v10, v2, v13

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    aput-object v0, v2, v12

    aput-object v7, v2, v14

    aput-object v5, v2, v15

    .line 169
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v16

    aput-object v3, v2, v17

    aput-object v6, v2, v18

    aput-object v8, v2, v19

    .line 156
    invoke-static {v9, v11, v2}, Lmiuix/reflect/ReflectionHelper;->getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesKey;

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 172
    const-class v2, Landroid/app/ResourcesManager;

    sget-object v3, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    const-string v4, "findOrCreateResourcesImplForKeyLocked"

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/ResourcesKey;

    aput-object v6, v5, v13

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v5, v0}, Lmiuix/reflect/ReflectionHelper;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static findResourcesKeyByResourcesImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .locals 4

    .line 109
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    .line 111
    sget-object v3, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesImpl;

    :cond_0
    if-ne p0, v2, :cond_1

    .line 114
    sget-object p0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/ResourcesKey;

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static setDefaultBitmapDensity(I)V
    .locals 6

    .line 196
    :try_start_0
    const-class v0, Landroid/graphics/Bitmap;

    const-string v1, "setDefaultDensity"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v3, v2}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultBitmapDensity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reflect exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setSystemResources(Lmiuix/view/DisplayConfig;)V
    .locals 4

    .line 183
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 184
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 185
    iget v2, p0, Lmiuix/view/DisplayConfig;->densityDpi:I

    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 186
    iget v2, p0, Lmiuix/view/DisplayConfig;->scaledDensity:F

    iput v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 187
    iget v2, p0, Lmiuix/view/DisplayConfig;->density:F

    iput v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 188
    iget v2, p0, Lmiuix/view/DisplayConfig;->fontScale:F

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 189
    iget v2, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    invoke-static {v2}, Lmiuix/autodensity/DensityUtil;->setDefaultBitmapDensity(I)V

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSystemResources "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " defaultBitmapDensity:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmiuix/view/DisplayConfig;->defaultBitmapDensity:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    return-void
.end method

.method private static tryToCreateAndSetResourcesImpl(Landroid/content/res/Resources;Lmiuix/view/DisplayConfig;)V
    .locals 6

    .line 87
    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesManager:Landroid/app/ResourcesManager;

    if-eqz v0, :cond_2

    sget-object v0, Lmiuix/autodensity/DensityUtil;->sResourcesImpls:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    sget-object v0, Lmiuix/autodensity/DensityUtil;->sLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    const-class v1, Landroid/content/res/Resources;

    const-string v2, "mResourcesImpl"

    invoke-static {v1, p0, v2}, Lmiuix/reflect/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ResourcesImpl;

    .line 93
    invoke-static {v1}, Lmiuix/autodensity/DensityUtil;->findResourcesKeyByResourcesImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 96
    invoke-static {v1, p1}, Lmiuix/autodensity/DensityUtil;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;Lmiuix/view/DisplayConfig;)Landroid/content/res/ResourcesImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    const-class v1, Landroid/content/res/Resources;

    const-string v2, "setImpl"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/ResourcesImpl;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, p0, v2, v3, v4}, Lmiuix/reflect/ReflectionHelper;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set impl success "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    .line 102
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tryToCreateAndSetResourcesImpl failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static updateCustomDensity(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "AutoDensity"

    const-string v0, "context should not null"

    .line 54
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 57
    :cond_0
    invoke-static {}, Lmiuix/autodensity/DensityConfigManager;->getInstance()Lmiuix/autodensity/DensityConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/autodensity/DensityConfigManager;->isAutoDensityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lmiuix/autodensity/DensityUtil;->changeDensity(Landroid/content/res/Resources;)V

    :cond_1
    return-void
.end method
