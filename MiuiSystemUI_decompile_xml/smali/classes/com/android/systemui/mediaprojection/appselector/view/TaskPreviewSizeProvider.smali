.class public final Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final context:Landroid/content/Context;

.field public final listeners:Ljava/util/ArrayList;

.field public final size:Landroid/graphics/Rect;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->windowManager:Landroid/view/WindowManager;

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->calculateSize()Landroid/graphics/Rect;

    .line 9
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->size:Landroid/graphics/Rect;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->listeners:Ljava/util/ArrayList;

    .line 20
    check-cast p3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 22
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 24
    return-void
    .line 27
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider$TaskPreviewSizeListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->listeners:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method

.method public final calculateSize()Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->windowManager:Landroid/view/WindowManager;

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 12
    move-result v2

    .line 15
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 16
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 20
    move-result v1

    .line 23
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->context:Landroid/content/Context;

    .line 24
    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isLargeScreen(Landroid/content/Context;)Z

    .line 26
    move-result p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 32
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 36
    move-result-object p0

    .line 39
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    .line 40
    move-result v0

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 44
    move-result-object p0

    .line 47
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    .line 48
    sub-int p0, v2, p0

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    move p0, v2

    .line 53
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    .line 54
    const/4 v3, 0x0

    .line 56
    invoke-direct {v0, v3, v3, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 57
    int-to-float p0, p0

    .line 60
    int-to-float v1, v2

    .line 61
    div-float/2addr p0, v1

    .line 62
    const/high16 v1, 0x40800000    # 4.0f

    .line 63
    div-float/2addr p0, v1

    .line 65
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->scale(F)V

    .line 66
    return-object v0
    .line 69
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->calculateSize()Landroid/graphics/Rect;

    .line 2
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->size:Landroid/graphics/Rect;

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->listeners:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 32
    check-cast p1, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider$TaskPreviewSizeListener;

    .line 33
    invoke-interface {p1}, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider$TaskPreviewSizeListener;->onTaskSizeChanged()V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    return-void
    .line 39
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider$TaskPreviewSizeListener;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->listeners:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    return-void
    .line 9
.end method
