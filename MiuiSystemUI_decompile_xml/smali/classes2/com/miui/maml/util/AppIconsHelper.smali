.class public Lcom/miui/maml/util/AppIconsHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final INVALID_INDEX:I = -0x1

.field private static final LAYER_NUM:I = 0x5

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field public static final TIME_MIN:I = 0xea60

.field private static mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;

.field private static mMamlAdaptiveIconsConfigFile:Landroid/util/ArrayMap;

.field private static mMamlAdaptiveIconsResourceManagers:Landroid/util/ArrayMap;

.field private static final mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

.field private static mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

.field private static mThemeChanged:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;

    .line 7
    new-instance v0, Landroid/util/ArrayMap;

    .line 9
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 11
    sput-object v0, Lcom/miui/maml/util/AppIconsHelper;->mMamlAdaptiveIconsResourceManagers:Landroid/util/ArrayMap;

    .line 14
    new-instance v0, Landroid/util/ArrayMap;

    .line 16
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    sput-object v0, Lcom/miui/maml/util/AppIconsHelper;->mMamlAdaptiveIconsConfigFile:Landroid/util/ArrayMap;

    .line 21
    new-instance v0, Lcom/miui/maml/util/AppIconsHelper$1;

    .line 23
    invoke-direct {v0}, Lcom/miui/maml/util/AppIconsHelper$1;-><init>()V

    .line 25
    sput-object v0, Lcom/miui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

    .line 28
    return-void
    .line 30
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    return-void
    .line 5
.end method

.method private static checkVersion(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Configuration_getThemeChanged(Landroid/content/res/Configuration;)I

    .line 10
    move-result p0

    .line 13
    sget v0, Lcom/miui/maml/util/AppIconsHelper;->mThemeChanged:I

    .line 14
    if-le p0, v0, :cond_0

    .line 16
    invoke-static {}, Lcom/miui/maml/util/AppIconsHelper;->clearCache()V

    .line 18
    sput p0, Lcom/miui/maml/util/AppIconsHelper;->mThemeChanged:I

    .line 21
    :cond_0
    return-void
    .line 23
.end method

.method public static cleanUp()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/miui/maml/RenderThread;->globalThreadStop()V

    .line 2
    return-void
    .line 5
.end method

.method public static clearCache()V
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/util/RendererCoreCache;->clear()V

    .line 6
    :cond_0
    sget-object v0, Lcom/miui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method private static createLifecycleResourceManagerFromeCache(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ResourceManager;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 10
    if-nez v1, :cond_1

    .line 12
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Lcom/miui/maml/ResourceManager;

    .line 19
    :goto_0
    if-nez v0, :cond_2

    .line 21
    new-instance v0, Lcom/miui/maml/LifecycleResourceManager;

    .line 23
    new-instance v2, Lcom/miui/maml/util/FancyIconResourceLoader;

    .line 25
    invoke-direct {v2, p1}, Lcom/miui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    .line 27
    const-wide/32 v3, 0x36ee80

    .line 30
    const-wide/32 v5, 0x57e40

    .line 33
    move-object v1, v0

    .line 36
    invoke-direct/range {v1 .. v6}, Lcom/miui/maml/LifecycleResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;JJ)V

    .line 37
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 40
    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_2
    return-object v0
    .line 48
.end method

.method private static createSubAnimatingDrawable(Landroid/content/Context;Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)Lcom/miui/maml/AnimatingDrawable;
    .locals 11

    .line 1
    move-object v0, p1

    .line 2
    move/from16 v6, p6

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1, v6}, Lcom/miui/maml/util/AppIconsHelper;->getUseQuietWhenAnimFromConfig(Lcom/miui/maml/util/ConfigFile;I)Z

    .line 7
    move-result v1

    .line 10
    invoke-static {p1, v6}, Lcom/miui/maml/util/AppIconsHelper;->getUseFancyWhenStaticFromConfig(Lcom/miui/maml/util/ConfigFile;I)Z

    .line 11
    move-result v2

    .line 14
    move v8, v1

    .line 15
    move v9, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    move v8, v1

    .line 19
    move v9, v8

    .line 20
    :goto_0
    invoke-static {p2, p3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->hashCode()I

    .line 25
    move-result v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 38
    sget-object v2, Lcom/miui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;

    .line 39
    const-string v3, "/quiet/"

    .line 41
    move-object v4, p4

    .line 43
    invoke-static {p4, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 47
    invoke-static {v2, v3, v1}, Lcom/miui/maml/util/AppIconsHelper;->createLifecycleResourceManagerFromeCache(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ResourceManager;

    .line 48
    move-result-object v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    if-eqz v0, :cond_1

    .line 54
    new-instance v10, Lcom/miui/maml/AnimatingDrawable;

    .line 56
    invoke-static {p1, v6}, Lcom/miui/maml/util/AppIconsHelper;->getLayerAnimIndex(Lcom/miui/maml/util/ConfigFile;I)I

    .line 58
    move-result v7

    .line 61
    move-object v0, v10

    .line 62
    move-object v1, p0

    .line 63
    move-object v2, p2

    .line 64
    move-object v3, p3

    .line 65
    move-object/from16 v5, p5

    .line 66
    move/from16 v6, p6

    .line 68
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    .line 70
    return-object v10

    .line 73
    :cond_1
    new-instance v7, Lcom/miui/maml/AnimatingDrawable;

    .line 74
    move-object v0, v7

    .line 76
    move-object v1, p0

    .line 77
    move-object v2, p2

    .line 78
    move-object v3, p3

    .line 79
    move-object/from16 v5, p5

    .line 80
    move/from16 v6, p6

    .line 82
    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;I)V

    .line 84
    return-object v7

    .line 87
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "fail to get rm, can\'t create subAD! package="

    .line 90
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    move-object v1, p2

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 102
    const-string v1, "MAML AppIconsHelper"

    .line 103
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    .line 108
    return-object v0
    .line 109
.end method

.method private static getAdaptiveDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 13

    .line 1
    invoke-static/range {p2 .. p3}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->hashCode()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    invoke-static/range {p1 .. p3}, Lmiui/content/res/IconCustomizer;->getMamlAdaptiveIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_5

    .line 22
    sget-object v3, Lcom/miui/maml/util/AppIconsHelper;->mMamlAdaptiveIconsConfigFile:Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 30
    if-nez v3, :cond_0

    .line 32
    move-object v3, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 39
    check-cast v3, Lcom/miui/maml/util/ConfigFile;

    .line 40
    :goto_0
    if-nez v3, :cond_2

    .line 42
    new-instance v3, Lcom/miui/maml/util/ConfigFile;

    .line 44
    invoke-direct {v3}, Lcom/miui/maml/util/ConfigFile;-><init>()V

    .line 46
    const-string v4, "config.xml"

    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Lcom/miui/maml/util/ConfigFile;->loadByIconStream(Ljava/lang/String;)Z

    .line 55
    move-result v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    sget-object v4, Lcom/miui/maml/util/AppIconsHelper;->mMamlAdaptiveIconsConfigFile:Landroid/util/ArrayMap;

    .line 61
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 63
    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    goto :goto_1

    .line 71
    :cond_1
    move-object v3, v2

    .line 72
    :cond_2
    :goto_1
    sget-object v4, Lcom/miui/maml/util/AppIconsHelper;->mMamlAdaptiveIconsResourceManagers:Landroid/util/ArrayMap;

    .line 73
    const-string v5, "quiet/"

    .line 75
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 80
    invoke-static {v4, v5, v0}, Lcom/miui/maml/util/AppIconsHelper;->createLifecycleResourceManagerFromeCache(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ResourceManager;

    .line 81
    move-result-object v0

    .line 84
    if-eqz v0, :cond_5

    .line 85
    const-string v4, "0"

    .line 87
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v8

    .line 92
    const/4 v10, 0x0

    .line 93
    move-object v4, p0

    .line 94
    move-object v5, v3

    .line 95
    move-object v6, p2

    .line 96
    move-object/from16 v7, p3

    .line 97
    move-object/from16 v9, p6

    .line 99
    invoke-static/range {v4 .. v10}, Lcom/miui/maml/util/AppIconsHelper;->createSubAnimatingDrawable(Landroid/content/Context;Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)Lcom/miui/maml/AnimatingDrawable;

    .line 101
    move-result-object v11

    .line 104
    if-nez v11, :cond_3

    .line 105
    return-object v2

    .line 107
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 108
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    const/4 v4, 0x1

    .line 113
    move v12, v4

    .line 114
    :goto_2
    const/4 v4, 0x5

    .line 115
    if-ge v12, v4, :cond_4

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v8

    .line 132
    move-object v4, p0

    .line 133
    move-object v5, v3

    .line 134
    move-object v6, p2

    .line 135
    move-object/from16 v7, p3

    .line 136
    move-object/from16 v9, p6

    .line 138
    move v10, v12

    .line 140
    invoke-static/range {v4 .. v10}, Lcom/miui/maml/util/AppIconsHelper;->createSubAnimatingDrawable(Landroid/content/Context;Lcom/miui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)Lcom/miui/maml/AnimatingDrawable;

    .line 141
    move-result-object v4

    .line 144
    if-eqz v4, :cond_4

    .line 145
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v12, v12, 0x1

    .line 150
    goto :goto_2

    .line 152
    :cond_4
    new-instance v1, Lcom/miui/maml/MamlAdaptiveIconDrawable;

    .line 153
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    .line 155
    const/4 v4, 0x0

    .line 157
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 160
    move-result-object v2

    .line 163
    check-cast v2, [Landroid/graphics/drawable/Drawable;

    .line 164
    invoke-direct {v3, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 166
    move-object v2, p0

    .line 169
    invoke-direct {v1, v11, v3, p0, v0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    .line 170
    return-object v1

    .line 173
    :cond_5
    return-object v2
    .line 174
.end method

.method public static getFancyIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 11

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    move-object v4, p1

    .line 8
    move-object v5, p2

    .line 9
    :try_start_1
    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 14
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-object v4, p1

    .line 19
    move-object v5, p2

    .line 20
    :catch_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    move-object v3, v0

    .line 22
    const/4 v9, 0x1

    .line 23
    move-object v2, p0

    .line 24
    move-object v4, p1

    .line 25
    move-object v5, p2

    .line 26
    move-wide v6, p3

    .line 27
    move-object/from16 v8, p5

    .line 28
    move/from16 v10, p6

    .line 30
    invoke-static/range {v2 .. v10}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;ZI)Landroid/graphics/drawable/Drawable;

    .line 32
    move-result-object v0

    .line 35
    return-object v0
    .line 36
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-wide/16 v0, 0x0

    .line 4
    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 5
    invoke-static {p0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_getInstance_with_int(I)Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 6
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 7
    instance-of v0, p1, Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    move-object v6, p5

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 10
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 15
    invoke-static {p0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_getInstance_with_int(I)Landroid/os/UserHandle;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v7}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    .line 16
    invoke-static/range {v0 .. v8}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;ZI)Landroid/graphics/drawable/Drawable;
    .locals 15

    move-wide/from16 v4, p4

    move/from16 v0, p8

    const-string v1, "fancy/"

    const-string v2, "quiet/"

    .line 17
    invoke-static/range {p2 .. p2}, Lmiui/content/res/IconCustomizer;->isModIconEnabledForPackageName(Ljava/lang/String;)Z

    move-result v3

    const/4 v8, 0x0

    if-nez v3, :cond_0

    return-object v8

    .line 18
    :cond_0
    sget-object v3, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    if-nez v3, :cond_1

    .line 19
    new-instance v3, Lcom/miui/maml/util/RendererCoreCache;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, v6}, Lcom/miui/maml/util/RendererCoreCache;-><init>(Landroid/os/Handler;)V

    sput-object v3, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    .line 20
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/miui/maml/util/AppIconsHelper;->checkVersion(Landroid/content/Context;)V

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_getIdentifier(Landroid/os/UserHandle;)I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez p7, :cond_2

    .line 22
    invoke-static/range {p0 .. p6}, Lcom/miui/maml/util/AppIconsHelper;->getAdaptiveDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_0

    :cond_2
    move-object v9, v8

    :goto_0
    if-nez v9, :cond_9

    if-eqz p7, :cond_5

    const/4 v10, -0x1

    if-eq v0, v10, :cond_5

    .line 23
    invoke-static/range {p1 .. p3}, Lmiui/content/res/IconCustomizer;->getMamlAdaptiveIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/fancy/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    sget-object v0, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    invoke-virtual {v0, v2, v4, v5}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 27
    sget-object v0, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    new-instance v6, Lcom/miui/maml/util/FancyIconResourceLoader;

    invoke-direct {v6, v1}, Lcom/miui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/miui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

    move-object v1, v0

    move-object v3, p0

    move-wide/from16 v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLcom/miui/maml/ResourceLoader;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 28
    iget-object v1, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/miui/maml/FancyDrawable;

    iget-object v0, v0, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    invoke-direct {v1, v0}, Lcom/miui/maml/FancyDrawable;-><init>(Lcom/miui/maml/RendererCore;)V

    move-object v9, v1

    goto :goto_3

    :cond_4
    move-object v9, v8

    goto :goto_3

    .line 29
    :cond_5
    invoke-static/range {p1 .. p3}, Lmiui/content/res/IconCustomizer;->getAnimatingIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p7, :cond_6

    .line 30
    sget-object v1, Lcom/miui/maml/util/AppIconsHelper;->mAnimatingIconsResourceManagers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Lcom/miui/maml/util/AppIconsHelper;->createLifecycleResourceManagerFromeCache(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ResourceManager;

    move-result-object v13

    if-eqz v13, :cond_9

    .line 31
    new-instance v0, Lcom/miui/maml/AnimatingDrawable;

    move-object v9, v0

    move-object v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;)V

    :goto_1
    move-object v9, v0

    goto :goto_3

    .line 32
    :cond_6
    sget-object v2, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;J)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v2

    if-nez v2, :cond_8

    if-eqz v0, :cond_7

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 34
    :cond_7
    invoke-static/range {p1 .. p3}, Lmiui/content/res/IconCustomizer;->getFancyIconRelativePath(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_2
    sget-object v1, Lcom/miui/maml/util/AppIconsHelper;->mRendererCoreCache:Lcom/miui/maml/util/RendererCoreCache;

    new-instance v6, Lcom/miui/maml/util/FancyIconResourceLoader;

    invoke-direct {v6, v0}, Lcom/miui/maml/util/FancyIconResourceLoader;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/miui/maml/util/AppIconsHelper;->mOnCreateRootCallback:Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;

    move-object v2, v3

    move-object v3, p0

    move-wide/from16 v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/miui/maml/util/RendererCoreCache;->get(Ljava/lang/Object;Landroid/content/Context;JLcom/miui/maml/ResourceLoader;Lcom/miui/maml/util/RendererCoreCache$OnCreateRootCallback;)Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_4

    .line 36
    iget-object v0, v2, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/miui/maml/FancyDrawable;

    iget-object v1, v2, Lcom/miui/maml/util/RendererCoreCache$RendererCoreInfo;->r:Lcom/miui/maml/RendererCore;

    invoke-direct {v0, v1}, Lcom/miui/maml/FancyDrawable;-><init>(Lcom/miui/maml/RendererCore;)V

    goto :goto_1

    :cond_9
    :goto_3
    if-eqz v9, :cond_a

    move-object v0, p0

    move-object/from16 v1, p6

    .line 37
    invoke-static {p0, v9, v1}, Lcom/miui/maml/util/PortableUtils;->getUserBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return-object v9

    :catch_0
    move-exception v0

    const-string v1, "MAML AppIconsHelper"

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3
    :goto_0
    invoke-static {p0, v0, p2, p3, p4}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 11
    invoke-static {p0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_getInstance_with_int(I)Landroid/os/UserHandle;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 13
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 14
    invoke-static/range {v1 .. v7}, Lcom/miui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getLayerAnimIndex(Lcom/miui/maml/util/ConfigFile;I)I
    .locals 2

    .line 1
    const-string v0, "layer"

    .line 2
    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return p0

    .line 26
    :catch_0
    :cond_0
    const/4 p0, -0x1

    .line 27
    return p0
    .line 28
.end method

.method private static getUseFancyWhenStaticFromConfig(Lcom/miui/maml/util/ConfigFile;I)Z
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string/jumbo v1, "use_fancy_when_static_layer"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    const-string/jumbo v1, "true"

    .line 23
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "layer_only_fancy"

    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 50
    move-result p0

    .line 53
    return p0

    .line 54
    :cond_0
    return v0

    .line 55
    :cond_1
    const/4 p0, 0x0

    .line 56
    return p0
    .line 57
.end method

.method private static getUseQuietWhenAnimFromConfig(Lcom/miui/maml/util/ConfigFile;I)Z
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string/jumbo v1, "use_quiet_when_anim_layer"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    const-string/jumbo v1, "true"

    .line 23
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "layer_only_quiet"

    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/ConfigFile;->getVariable(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 50
    move-result p0

    .line 53
    return p0

    .line 54
    :cond_0
    return v0

    .line 55
    :cond_1
    const/4 p0, 0x0

    .line 56
    return p0
    .line 57
.end method
