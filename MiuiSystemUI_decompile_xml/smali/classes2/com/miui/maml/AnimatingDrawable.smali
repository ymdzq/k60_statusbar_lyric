.class public Lcom/miui/maml/AnimatingDrawable;
.super Lcom/miui/maml/MamlDrawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final TAG:Ljava/lang/String; = "Maml.AnimatingDrawable"

.field public static final TIME_FANCY_CACHE:I


# instance fields
.field private final mAnimIndex:I

.field private final mClassName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFancyDrawable:Lcom/miui/maml/FancyDrawable;

.field private final mLayerIndex:I

.field private final mLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private final mResourceManager:Lcom/miui/maml/ResourceManager;

.field private mUseFancyWhenStatic:Z

.field private mUseQuietWhenAnim:Z

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;)V
    .locals 10

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;I)V
    .locals 10

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 2
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;II)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    .line 7
    iput-object p4, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 8
    iput-object p2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    .line 11
    iput p6, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    .line 12
    iput p7, p0, Lcom/miui/maml/AnimatingDrawable;->mAnimIndex:I

    .line 13
    iput-boolean p8, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    .line 14
    iput-boolean p9, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    .line 15
    invoke-direct {p0}, Lcom/miui/maml/AnimatingDrawable;->init()V

    return-void
.end method

.method private init()V
    .locals 11

    .line 1
    new-instance v10, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    .line 4
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 10
    iget-object v5, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    .line 12
    iget v6, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    .line 14
    iget v7, p0, Lcom/miui/maml/AnimatingDrawable;->mAnimIndex:I

    .line 16
    iget-boolean v8, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    .line 18
    iget-boolean v9, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    .line 20
    move-object v0, v10

    .line 22
    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    .line 23
    iput-object v10, p0, Lcom/miui/maml/MamlDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 26
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    .line 28
    const-string/jumbo v1, "window"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Landroid/view/WindowManager;

    .line 37
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 39
    move-result-object v0

    .line 42
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 43
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 48
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    const-string v3, "den"

    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v2

    .line 68
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 69
    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 74
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 78
    move-result-object v1

    .line 81
    const-string v2, "quietImage.png"

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 84
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 92
    move-result v0

    .line 95
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 98
    move-result v1

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/MamlDrawable;->setIntrinsicSize(II)V

    .line 102
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 107
    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 113
    move-result v1

    .line 116
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 119
    move-result v2

    .line 122
    const/4 v3, 0x0

    .line 123
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 127
    if-eqz v0, :cond_1

    .line 129
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 133
    goto :goto_0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "mQuietDrwable is null! package/class="

    .line 139
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "/"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    .line 154
    const-string v1, "Maml.AnimatingDrawable"

    .line 156
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_1
    :goto_0
    return-void
    .line 161
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/miui/maml/FancyDrawable;->cleanUp()V

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 13
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
    .line 19
.end method

.method public drawIcon(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    const-string v0, "Maml.AnimatingDrawable"

    .line 2
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    move-result v1

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 13
    move-result-object v2

    .line 16
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 17
    int-to-float v2, v2

    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 20
    move-result-object v3

    .line 23
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 24
    int-to-float v3, v3

    .line 26
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mWidth:I

    .line 30
    int-to-float v2, v2

    .line 32
    iget v3, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 33
    int-to-float v3, v3

    .line 35
    div-float/2addr v2, v3

    .line 36
    iget v3, p0, Lcom/miui/maml/MamlDrawable;->mHeight:I

    .line 37
    int-to-float v3, v3

    .line 39
    iget v4, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 40
    int-to-float v4, v4

    .line 42
    div-float/2addr v3, v4

    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-virtual {p1, v2, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 45
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 50
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 56
    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 64
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    goto :goto_0

    .line 68
    :catch_1
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 76
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void
    .line 80
.end method

.method public getAnimIndex()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/AnimatingDrawable;->mAnimIndex:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    iget p0, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    .line 8
    return p0
    .line 10
.end method

.method public getFancyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 5
    return-object p0
    .line 7
.end method

.method public getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public getQuietDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    .line 5
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getStartDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p0

    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
    .line 23
.end method

.method public isOnlyFancyWork()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    .line 2
    return p0
    .line 4
.end method

.method public isOnlyQuietWork()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    .line 2
    return p0
    .line 4
.end method

.method public prepareFancyDrawable()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 10
    if-eqz v1, :cond_1

    .line 12
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mContext:Landroid/content/Context;

    .line 16
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mPackageName:Ljava/lang/String;

    .line 18
    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable;->mClassName:Ljava/lang/String;

    .line 20
    const-wide/16 v4, 0x0

    .line 22
    iget-object v6, p0, Lcom/miui/maml/AnimatingDrawable;->mUser:Landroid/os/UserHandle;

    .line 24
    iget v7, p0, Lcom/miui/maml/AnimatingDrawable;->mLayerIndex:I

    .line 26
    invoke-static/range {v1 .. v7}, Lcom/miui/maml/util/AppIconsHelper;->getFancyIconDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    .line 28
    move-result-object v1

    .line 31
    instance-of v2, v1, Lcom/miui/maml/FancyDrawable;

    .line 32
    if-eqz v2, :cond_4

    .line 34
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    if-nez v2, :cond_3

    .line 38
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 40
    if-lez v2, :cond_2

    .line 42
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 44
    if-gtz v2, :cond_3

    .line 46
    :cond_2
    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 48
    iget v3, v2, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 50
    iget v2, v2, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 52
    invoke-virtual {p0, v3, v2}, Lcom/miui/maml/MamlDrawable;->setIntrinsicSize(II)V

    .line 54
    :cond_3
    check-cast v1, Lcom/miui/maml/FancyDrawable;

    .line 57
    iput-object v1, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 59
    iget-object p0, p0, Lcom/miui/maml/MamlDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 61
    invoke-virtual {v1, p0}, Lcom/miui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 63
    :cond_4
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
    .line 70
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/maml/MamlDrawable;->setBounds(IIII)V

    .line 2
    return-void
    .line 5
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/MamlDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2
    const-string v0, "Maml.AnimatingDrawable"

    .line 5
    const-string/jumbo v1, "setColorFilter"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/miui/maml/AnimatingDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/AnimatingDrawable;->mFancyDrawable:Lcom/miui/maml/FancyDrawable;

    .line 27
    if-eqz p0, :cond_2

    .line 29
    invoke-virtual {p0, p1}, Lcom/miui/maml/FancyDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 31
    :cond_2
    return-void
    .line 34
.end method

.method public useFancyWhenStatic()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseFancyWhenStatic:Z

    .line 2
    return p0
    .line 4
.end method

.method public useQuietWhenAnim()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/AnimatingDrawable;->mUseQuietWhenAnim:Z

    .line 2
    return p0
    .line 4
.end method
