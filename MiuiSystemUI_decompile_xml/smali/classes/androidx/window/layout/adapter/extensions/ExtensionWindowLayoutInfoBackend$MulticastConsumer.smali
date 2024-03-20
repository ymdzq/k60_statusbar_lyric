.class public final Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final context:Landroid/content/Context;

.field public lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

.field public final multicastConsumerLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final registeredListeners:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->context:Landroid/content/Context;

    .line 5
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->multicastConsumerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 14
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->registeredListeners:Ljava/util/Set;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->multicastConsumerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    :try_start_0
    iget-object v2, v0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->context:Landroid/content/Context;

    .line 4
    sget-object v3, Landroidx/window/layout/WindowMetricsCalculatorCompat;->INSTANCE:Landroidx/window/layout/WindowMetricsCalculatorCompat;

    .line 5
    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 6
    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    const/4 v4, 0x0

    .line 7
    invoke-static {v4, v3}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 8
    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 9
    new-instance v3, Landroidx/window/core/Bounds;

    invoke-direct {v3, v2}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroidx/window/extensions/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object v2

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 13
    check-cast v6, Landroidx/window/extensions/layout/DisplayFeature;

    .line 14
    instance-of v7, v6, Landroidx/window/extensions/layout/FoldingFeature;

    if-eqz v7, :cond_d

    check-cast v6, Landroidx/window/extensions/layout/FoldingFeature;

    .line 15
    invoke-virtual {v6}, Landroidx/window/extensions/layout/FoldingFeature;->getType()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v7, v8, :cond_1

    if-eq v7, v9, :cond_0

    goto/16 :goto_8

    .line 16
    :cond_0
    sget-object v7, Landroidx/window/layout/HardwareFoldingFeature$Type;->HINGE:Landroidx/window/layout/HardwareFoldingFeature$Type;

    goto :goto_1

    .line 17
    :cond_1
    sget-object v7, Landroidx/window/layout/HardwareFoldingFeature$Type;->FOLD:Landroidx/window/layout/HardwareFoldingFeature$Type;

    .line 18
    :goto_1
    invoke-virtual {v6}, Landroidx/window/extensions/layout/FoldingFeature;->getState()I

    move-result v10

    if-eq v10, v8, :cond_3

    if-eq v10, v9, :cond_2

    goto/16 :goto_8

    .line 19
    :cond_2
    sget-object v9, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    goto :goto_2

    .line 20
    :cond_3
    sget-object v9, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    .line 21
    :goto_2
    invoke-virtual {v6}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 22
    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v12, v10, Landroid/graphics/Rect;->top:I

    iget v13, v10, Landroid/graphics/Rect;->right:I

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    if-gt v11, v13, :cond_4

    move v15, v8

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    if-eqz v15, :cond_c

    if-gt v12, v10, :cond_5

    move v15, v8

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_b

    .line 23
    new-instance v15, Landroid/graphics/Rect;

    iget v4, v3, Landroidx/window/core/Bounds;->left:I

    iget v8, v3, Landroidx/window/core/Bounds;->top:I

    iget v14, v3, Landroidx/window/core/Bounds;->right:I

    move-object/from16 v16, v2

    iget v2, v3, Landroidx/window/core/Bounds;->bottom:I

    invoke-direct {v15, v4, v8, v14, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int/2addr v10, v12

    if-nez v10, :cond_6

    sub-int v2, v13, v11

    if-nez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    sub-int/2addr v13, v11

    .line 24
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v13, v2, :cond_8

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v10, v2, :cond_8

    goto :goto_6

    .line 25
    :cond_8
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v13, v2, :cond_9

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v10, v2, :cond_9

    goto :goto_6

    .line 26
    :cond_9
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v13, v2, :cond_a

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v10, v2, :cond_a

    :goto_6
    const/4 v8, 0x0

    goto :goto_7

    :cond_a
    const/4 v8, 0x1

    :goto_7
    if-eqz v8, :cond_e

    .line 27
    new-instance v2, Landroidx/window/layout/HardwareFoldingFeature;

    new-instance v4, Landroidx/window/core/Bounds;

    invoke-virtual {v6}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v4, v6}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v2, v4, v7, v9}, Landroidx/window/layout/HardwareFoldingFeature;-><init>(Landroidx/window/core/Bounds;Landroidx/window/layout/HardwareFoldingFeature$Type;Landroidx/window/layout/FoldingFeature$State;)V

    goto :goto_9

    .line 28
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "top must be less than or equal to bottom, top: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 30
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Left must be less than or equal to right, left: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", right: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    :goto_8
    move-object/from16 v16, v2

    :cond_e
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_f

    .line 32
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object/from16 v2, v16

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 33
    :cond_10
    new-instance v2, Landroidx/window/layout/WindowLayoutInfo;

    invoke-direct {v2, v5}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    .line 34
    iput-object v2, v0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

    .line 35
    iget-object v2, v0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->registeredListeners:Ljava/util/Set;

    .line 36
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Consumer;

    .line 37
    iget-object v4, v0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

    invoke-interface {v3, v4}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    .line 38
    :cond_11
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    return-void
.end method
