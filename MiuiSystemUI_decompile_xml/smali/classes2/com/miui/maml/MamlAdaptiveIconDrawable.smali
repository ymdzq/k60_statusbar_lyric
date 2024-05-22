.class public Lcom/miui/maml/MamlAdaptiveIconDrawable;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final TAG:Ljava/lang/String; = "MamlAdaptiveIconDrawable"


# instance fields
.field private volatile mLayerFancyDrawables:Ljava/util/ArrayList;

.field private volatile mLayerQuietDrawables:Ljava/util/ArrayList;

.field private final mLock:Ljava/lang/Object;

.field private final mLockFancy:Ljava/lang/Object;

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLock:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLockFancy:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLock:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLockFancy:Ljava/lang/Object;

    .line 7
    invoke-direct {p0, p3, p4}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->init(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    return-void
.end method

.method private addFancyDrawable(Lcom/miui/maml/AnimatingDrawable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/miui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    .line 8
    invoke-virtual {p1}, Lcom/miui/maml/AnimatingDrawable;->getFancyDrawable()Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Lcom/miui/maml/FancyDrawable;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    iget-object p0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method private init(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "window"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/WindowManager;

    .line 9
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 11
    move-result-object v0

    .line 14
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 15
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string v2, "den"

    .line 25
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 39
    invoke-virtual {p2, v0, v1}, Lcom/miui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p1

    .line 47
    const-string v0, "quietImage.png"

    .line 48
    invoke-virtual {p2, p1, v0}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 58
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 64
    move-result p2

    .line 67
    iget-object p0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 70
    move-result p0

    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0, v0, p2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    :cond_0
    return-void
    .line 78
.end method

.method private prepareLayerFancyDrawables()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/miui/maml/AnimatingDrawable;

    .line 18
    if-eqz v1, :cond_1

    .line 20
    check-cast v0, Lcom/miui/maml/AnimatingDrawable;

    .line 22
    invoke-direct {p0, v0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->addFancyDrawable(Lcom/miui/maml/AnimatingDrawable;)V

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v0

    .line 30
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    .line 31
    if-eqz v1, :cond_3

    .line 33
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 35
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 37
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-ge v2, v1, :cond_3

    .line 42
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object v3

    .line 47
    instance-of v4, v3, Lcom/miui/maml/AnimatingDrawable;

    .line 48
    if-eqz v4, :cond_2

    .line 50
    check-cast v3, Lcom/miui/maml/AnimatingDrawable;

    .line 52
    invoke-direct {p0, v3}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->addFancyDrawable(Lcom/miui/maml/AnimatingDrawable;)V

    .line 54
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 57
    goto :goto_0

    .line 59
    :cond_3
    return-void
    .line 60
.end method

.method private prepareLayerQuietDrawables()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/miui/maml/AnimatingDrawable;

    .line 18
    if-eqz v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    .line 22
    check-cast v0, Lcom/miui/maml/AnimatingDrawable;

    .line 24
    invoke-virtual {v0}, Lcom/miui/maml/AnimatingDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object v0

    .line 36
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    .line 37
    if-eqz v1, :cond_3

    .line 39
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 41
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    .line 43
    move-result v1

    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_0
    if-ge v2, v1, :cond_3

    .line 48
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object v3

    .line 53
    instance-of v4, v3, Lcom/miui/maml/AnimatingDrawable;

    .line 54
    if-eqz v4, :cond_2

    .line 56
    iget-object v4, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    .line 58
    check-cast v3, Lcom/miui/maml/AnimatingDrawable;

    .line 60
    invoke-virtual {v3}, Lcom/miui/maml/AnimatingDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    .line 62
    move-result-object v3

    .line 65
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 69
    goto :goto_0

    .line 71
    :cond_3
    return-void
    .line 72
.end method


# virtual methods
.method public getLayerFancyDrawables()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLockFancy:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->prepareLayerFancyDrawables()V

    .line 9
    monitor-exit v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0

    .line 16
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    .line 17
    return-object p0
    .line 19
.end method

.method public getLayerQuietDrawables()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/miui/maml/MamlAdaptiveIconDrawable;->prepareLayerQuietDrawables()V

    .line 9
    monitor-exit v0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0

    .line 16
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    .line 17
    return-object p0
    .line 19
.end method

.method public getTopQuietDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method
