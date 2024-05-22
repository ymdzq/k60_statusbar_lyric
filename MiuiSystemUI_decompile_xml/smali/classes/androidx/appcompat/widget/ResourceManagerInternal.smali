.class public final Landroidx/appcompat/widget/ResourceManagerInternal;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

.field public static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field public static INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;


# instance fields
.field public final mDrawableCaches:Ljava/util/WeakHashMap;

.field public mHasCheckedVectorDrawableSetup:Z

.field public mHooks:Landroidx/appcompat/widget/AppCompatDrawableManager$1;

.field public mTintLists:Ljava/util/WeakHashMap;

.field public mTypedValue:Landroid/util/TypedValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2
    sput-object v0, Landroidx/appcompat/widget/ResourceManagerInternal;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 4
    new-instance v0, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 6
    invoke-direct {v0}, Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;-><init>()V

    .line 8
    sput-object v0, Landroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 11
    return-void
    .line 13
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 11
    return-void
    .line 13
.end method

.method public static declared-synchronized get()Landroidx/appcompat/widget/ResourceManagerInternal;
    .locals 2

    .line 1
    const-class v0, Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 5
    if-nez v1, :cond_0

    .line 7
    new-instance v1, Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 9
    invoke-direct {v1}, Landroidx/appcompat/widget/ResourceManagerInternal;-><init>()V

    .line 11
    sput-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 14
    :cond_0
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->INSTANCE:Landroidx/appcompat/widget/ResourceManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
    .line 22
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 4

    .line 1
    const-class v0, Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/ResourceManagerInternal;->COLOR_FILTER_CACHE:Landroidx/appcompat/widget/ResourceManagerInternal$ColorFilterLruCache;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    add-int/lit8 v2, p0, 0x1f

    .line 10
    mul-int/lit8 v2, v2, 0x1f

    .line 12
    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    .line 14
    move-result v3

    .line 17
    add-int/2addr v3, v2

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v3

    .line 22
    invoke-virtual {v1, v3}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 26
    check-cast v3, Landroid/graphics/PorterDuffColorFilter;

    .line 27
    if-nez v3, :cond_0

    .line 29
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    .line 31
    invoke-direct {v3, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    .line 39
    move-result p0

    .line 42
    add-int/2addr p0, v2

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {v1, p0, v3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 51
    check-cast p0, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit v0

    .line 54
    return-object v3

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v0

    .line 57
    throw p0
    .line 58
.end method


# virtual methods
.method public final declared-synchronized addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3
    move-result-object p4

    .line 6
    if-eqz p4, :cond_1

    .line 7
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/collection/LongSparseArray;

    .line 15
    if-nez v0, :cond_0

    .line 17
    new-instance v0, Landroidx/collection/LongSparseArray;

    .line 19
    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 21
    iget-object v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 24
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 29
    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :cond_1
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0

    .line 42
    throw p1
    .line 43
.end method

.method public final createDrawableIfNeeded(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/util/TypedValue;

    .line 6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 8
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTypedValue:Landroid/util/TypedValue;

    .line 13
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 20
    iget v1, v0, Landroid/util/TypedValue;->assetCookie:I

    .line 23
    int-to-long v1, v1

    .line 25
    const/16 v3, 0x20

    .line 26
    shl-long/2addr v1, v3

    .line 28
    iget v3, v0, Landroid/util/TypedValue;->data:I

    .line 29
    int-to-long v3, v3

    .line 31
    or-long/2addr v1, v3

    .line 32
    invoke-virtual {p0, v1, v2, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getCachedDrawable(JLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    return-object v3

    .line 39
    :cond_1
    iget-object v3, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/AppCompatDrawableManager$1;

    .line 40
    if-nez v3, :cond_2

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    const v3, 0x7f080a8b    # @drawable/abc_cab_background_top_material 'res/drawable/abc_cab_background_top_material.xml'

    .line 45
    if-ne p1, v3, :cond_3

    .line 48
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    .line 50
    const v3, 0x7f080a8a    # @drawable/abc_cab_background_internal_bg 'res/drawable/abc_cab_background_internal_bg.xml'

    .line 52
    invoke-virtual {p0, v3, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 55
    move-result-object v3

    .line 58
    const v4, 0x7f080a8c    # @drawable/abc_cab_background_top_mtrl_alpha 'res/drawable-hdpi/abc_cab_background_top_mtrl_alpha.9.png'

    .line 59
    invoke-virtual {p0, v4, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 62
    move-result-object v4

    .line 65
    filled-new-array {v3, v4}, [Landroid/graphics/drawable/Drawable;

    .line 66
    move-result-object v3

    .line 69
    invoke-direct {p1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 70
    goto :goto_1

    .line 73
    :cond_3
    const v3, 0x7f080ab1    # @drawable/abc_ratingbar_material 'res/drawable/abc_ratingbar_material.xml'

    .line 74
    if-ne p1, v3, :cond_4

    .line 77
    const p1, 0x7f070059    # @dimen/abc_star_big '48.0dp'

    .line 79
    invoke-static {p0, p2, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 82
    move-result-object p1

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    const v3, 0x7f080ab0    # @drawable/abc_ratingbar_indicator_material 'res/drawable/abc_ratingbar_indicator_material.xml'

    .line 87
    if-ne p1, v3, :cond_5

    .line 90
    const p1, 0x7f07005a    # @dimen/abc_star_medium '36.0dp'

    .line 92
    invoke-static {p0, p2, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 95
    move-result-object p1

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    const v3, 0x7f080ab2    # @drawable/abc_ratingbar_small_material 'res/drawable/abc_ratingbar_small_material.xml'

    .line 100
    if-ne p1, v3, :cond_6

    .line 103
    const p1, 0x7f07005b    # @dimen/abc_star_small '16.0dp'

    .line 105
    invoke-static {p0, p2, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    .line 108
    move-result-object p1

    .line 111
    goto :goto_1

    .line 112
    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 113
    :goto_1
    if-eqz p1, :cond_7

    .line 114
    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 116
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 118
    invoke-virtual {p0, p2, v1, v2, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_7
    return-object p1
    .line 124
.end method

.method public final declared-synchronized getCachedDrawable(JLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {v0, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/collection/LongSparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    monitor-exit p0

    .line 14
    return-object v1

    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 20
    if-eqz v2, :cond_2

    .line 22
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 28
    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object p1

    .line 35
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 36
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return-object p1

    .line 41
    :cond_1
    :try_start_2
    iget-object p3, v0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 42
    iget v2, v0, Landroidx/collection/LongSparseArray;->size:I

    .line 44
    invoke-static {p3, v2, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    .line 46
    move-result p1

    .line 49
    if-ltz p1, :cond_2

    .line 50
    iget-object p2, v0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 52
    aget-object p3, p2, p1

    .line 54
    sget-object v2, Landroidx/collection/LongSparseArrayKt;->DELETED:Ljava/lang/Object;

    .line 56
    if-eq p3, v2, :cond_2

    .line 58
    aput-object v2, p2, p1

    .line 60
    const/4 p1, 0x1

    .line 62
    iput-boolean p1, v0, Landroidx/collection/LongSparseArray;->garbage:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :cond_2
    monitor-exit p0

    .line 65
    return-object v1

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0

    .line 68
    throw p1
    .line 69
.end method

.method public final declared-synchronized getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 11

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iput-boolean v2, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    const v0, 0x7f080ad0    # @drawable/abc_vector_test 'res/drawable/abc_vector_test.xml'

    .line 4
    invoke-virtual {p0, v0, p3}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 5
    instance-of v3, v0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-nez v3, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_e

    .line 7
    :goto_2
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/widget/ResourceManagerInternal;->createDrawableIfNeeded(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8
    sget-object v0, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 9
    invoke-virtual {p3, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 11
    sget-object p2, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 13
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    iget-object p3, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/AppCompatDrawableManager$1;

    if-nez p3, :cond_4

    goto :goto_3

    :cond_4
    const p3, 0x7f080ac3    # @drawable/abc_switch_thumb_material 'res/drawable/abc_switch_thumb_material.xml'

    if-ne p1, p3, :cond_5

    .line 15
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_5
    :goto_3
    if-eqz v4, :cond_6

    .line 16
    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_6
    :goto_4
    move-object v0, p2

    goto/16 :goto_6

    .line 17
    :cond_7
    iget-object v3, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/AppCompatDrawableManager$1;

    if-eqz v3, :cond_b

    const v3, 0x7f080aba    # @drawable/abc_seekbar_track_material 'res/drawable/abc_seekbar_track_material.xml'

    const v5, 0x102000d    # @android:id/progress

    const v6, 0x102000f    # @android:id/secondaryProgress

    const/high16 v7, 0x1020000    # @android:id/background

    const v8, 0x7f0401a8    # @attr/colorControlActivated

    const v9, 0x7f0401aa    # @attr/colorControlNormal

    if-ne p1, v3, :cond_8

    .line 18
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 19
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 20
    invoke-static {v9, p3}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(ILandroid/content/Context;)I

    move-result v7

    .line 21
    sget-object v10, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 22
    invoke-static {v3, v7, v10}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 23
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 24
    invoke-static {v9, p3}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(ILandroid/content/Context;)I

    move-result v6

    .line 25
    invoke-static {v3, v6, v10}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 26
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 27
    invoke-static {v8, p3}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(ILandroid/content/Context;)I

    move-result v3

    .line 28
    invoke-static {v1, v3, v10}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_5

    :cond_8
    const v3, 0x7f080ab1    # @drawable/abc_ratingbar_material 'res/drawable/abc_ratingbar_material.xml'

    if-eq p1, v3, :cond_9

    const v3, 0x7f080ab0    # @drawable/abc_ratingbar_indicator_material 'res/drawable/abc_ratingbar_indicator_material.xml'

    if-eq p1, v3, :cond_9

    const v3, 0x7f080ab2    # @drawable/abc_ratingbar_small_material 'res/drawable/abc_ratingbar_small_material.xml'

    if-ne p1, v3, :cond_a

    .line 29
    :cond_9
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 30
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 31
    invoke-static {v9, p3}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(ILandroid/content/Context;)I

    move-result v7

    .line 32
    sget-object v9, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 33
    invoke-static {v3, v7, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 34
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 35
    invoke-static {v8, p3}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(ILandroid/content/Context;)I

    move-result v6

    .line 36
    invoke-static {v3, v6, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 37
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 38
    invoke-static {v8, p3}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(ILandroid/content/Context;)I

    move-result v3

    .line 39
    invoke-static {v1, v3, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    :goto_5
    move v1, v2

    :cond_a
    if-eqz v1, :cond_b

    goto :goto_6

    .line 40
    :cond_b
    invoke-virtual {p0, p1, p3, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->tintDrawableUsingColorFilter(ILandroid/content/Context;Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_c

    if-eqz p2, :cond_c

    move-object v0, v4

    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    .line 41
    sget-object p1, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_d
    monitor-exit p0

    return-object v0

    .line 43
    :cond_e
    :try_start_1
    iput-boolean v1, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHasCheckedVectorDrawableSetup:Z

    .line 44
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getTintList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 3
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v1

    .line 23
    :goto_0
    if-nez v0, :cond_5

    .line 24
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/AppCompatDrawableManager$1;

    .line 26
    if-nez v0, :cond_1

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getTintListForDrawableRes(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 31
    move-result-object v1

    .line 34
    :goto_1
    if-eqz v1, :cond_4

    .line 35
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 37
    if-nez v0, :cond_2

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    .line 41
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 43
    iput-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 46
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 48
    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 54
    if-nez v0, :cond_3

    .line 56
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    .line 58
    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    .line 60
    iget-object v2, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mTintLists:Ljava/util/WeakHashMap;

    .line 63
    invoke-virtual {v2, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_3
    invoke-virtual {v0, p1, v1}, Landroidx/collection/SparseArrayCompat;->append(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_4
    move-object v0, v1

    .line 71
    goto :goto_2

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_3

    .line 74
    :cond_5
    :goto_2
    monitor-exit p0

    .line 75
    return-object v0

    .line 76
    :goto_3
    monitor-exit p0

    .line 77
    throw p1
    .line 78
.end method

.method public final tintDrawableUsingColorFilter(ILandroid/content/Context;Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ResourceManagerInternal;->mHooks:Landroidx/appcompat/widget/AppCompatDrawableManager$1;

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_7

    .line 5
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 7
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 9
    invoke-static {p1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains(I[I)Z

    .line 11
    move-result v2

    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, -0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    const p0, 0x7f0401aa    # @attr/colorControlNormal

    .line 19
    goto :goto_1

    .line 22
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 23
    invoke-static {p1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains(I[I)Z

    .line 25
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    const p0, 0x7f0401a8    # @attr/colorControlActivated

    .line 31
    goto :goto_1

    .line 34
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 35
    invoke-static {p1, p0}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains(I[I)Z

    .line 37
    move-result p0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 43
    goto :goto_0

    .line 45
    :cond_2
    const p0, 0x7f080aa3    # @drawable/abc_list_divider_mtrl_alpha 'res/drawable-hdpi/abc_list_divider_mtrl_alpha.9.png'

    .line 46
    if-ne p1, p0, :cond_3

    .line 49
    const p0, 0x42233333    # 40.8f

    .line 51
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 54
    move-result p0

    .line 57
    const p1, 0x1010030    # @android:attr/colorForeground

    .line 58
    move-object v2, v1

    .line 61
    move v1, p1

    .line 62
    move p1, p0

    .line 63
    move p0, v3

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const p0, 0x7f080a8e    # @drawable/abc_dialog_material_background 'res/drawable/abc_dialog_material_background.xml'

    .line 66
    if-ne p1, p0, :cond_4

    .line 69
    :goto_0
    const p0, 0x1010031    # @android:attr/colorBackground

    .line 71
    :goto_1
    move p1, p0

    .line 74
    move p0, v3

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move p0, v0

    .line 77
    move p1, p0

    .line 78
    :goto_2
    move-object v2, v1

    .line 79
    move v1, p1

    .line 80
    move p1, v4

    .line 81
    :goto_3
    if-eqz p0, :cond_6

    .line 82
    sget-object p0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 86
    move-result-object p0

    .line 89
    invoke-static {v1, p2}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(ILandroid/content/Context;)I

    .line 90
    move-result p2

    .line 93
    invoke-static {p2, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 94
    move-result-object p2

    .line 97
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 98
    if-eq p1, v4, :cond_5

    .line 101
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 103
    :cond_5
    move p0, v3

    .line 106
    goto :goto_4

    .line 107
    :cond_6
    move p0, v0

    .line 108
    :goto_4
    if-eqz p0, :cond_7

    .line 109
    move v0, v3

    .line 111
    :cond_7
    return v0
    .line 112
.end method
