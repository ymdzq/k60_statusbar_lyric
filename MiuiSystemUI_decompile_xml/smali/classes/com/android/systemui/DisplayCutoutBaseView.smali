.class public Lcom/android/systemui/DisplayCutoutBaseView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;


# instance fields
.field public cameraProtectionProgress:F

.field public final cutoutPath:Landroid/graphics/Path;

.field public final displayInfo:Landroid/view/DisplayInfo;

.field public final location:[I

.field public final paint:Landroid/graphics/Paint;

.field public final protectionPath:Landroid/graphics/Path;

.field public final protectionPathOrig:Landroid/graphics/Path;

.field public final protectionRect:Landroid/graphics/RectF;

.field public final protectionRectOrig:Landroid/graphics/RectF;

.field public final shouldDrawCutout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p1, v0}, Landroid/view/DisplayCutout;->getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->shouldDrawCutout:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 4
    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    .line 5
    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 7
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    .line 10
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRectOrig:Landroid/graphics/RectF;

    .line 11
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 12
    iput p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 15
    :goto_0
    invoke-static {p1, p2}, Landroid/view/DisplayCutout;->getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->shouldDrawCutout:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 16
    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    .line 17
    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 19
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    .line 20
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 21
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    .line 22
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRectOrig:Landroid/graphics/RectF;

    .line 23
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 24
    iput p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 27
    :goto_0
    invoke-static {p1, p2}, Landroid/view/DisplayCutout;->getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->shouldDrawCutout:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 28
    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    .line 29
    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 30
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 31
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    .line 32
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 33
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    .line 34
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRectOrig:Landroid/graphics/RectF;

    .line 35
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    const/high16 p1, 0x3f000000    # 0.5f

    .line 36
    iput p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    return-void
.end method

.method public static synthetic getCameraProtectionProgress$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getDisplayInfo$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getProtectionPath$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getProtectionRect$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public drawCutoutProtection(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    .line 2
    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-lez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    iget v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    .line 18
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 20
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    .line 22
    move-result v1

    .line 25
    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 26
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    .line 28
    move-result v2

    .line 31
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    .line 35
    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 37
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 39
    :cond_0
    return-void
    .line 42
.end method

.method public drawCutouts(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 2
    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getCutoutPath()Landroid/graphics/Path;

    .line 8
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->paint:Landroid/graphics/Paint;

    .line 19
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 21
    return-void
.end method

.method public final getCameraProtectionProgress()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    .line 2
    return p0
    .line 4
.end method

.method public final getDisplayRotation()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getInterceptRegion()Landroid/graphics/Region;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 2
    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object v1

    .line 9
    :cond_0
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    .line 12
    move-result-object v1

    .line 15
    :cond_1
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    .line 16
    move-result-object v0

    .line 19
    if-eqz v1, :cond_3

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 25
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 35
    check-cast v2, Landroid/graphics/Rect;

    .line 36
    if-eqz v2, :cond_2

    .line 38
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 40
    move-result v3

    .line 43
    if-nez v3, :cond_2

    .line 44
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 46
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 48
    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 52
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 58
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    .line 61
    const/4 v2, 0x0

    .line 63
    aget v2, v1, v2

    .line 64
    neg-int v2, v2

    .line 66
    const/4 v3, 0x1

    .line 67
    aget v1, v1, v3

    .line 68
    neg-int v1, v1

    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Region;->translate(II)V

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 78
    move-result v3

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 82
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 86
    move-result v4

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 90
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 94
    move-result v5

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 98
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 102
    move-result v6

    .line 105
    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    .line 106
    move-object v2, v0

    .line 108
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 109
    return-object v0
    .line 112
.end method

.method public final getLocation()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public getPhysicalPixelDisplaySizeRatio()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 2
    iget-object p0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getCutoutPathParserInfo()Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 17
    return p0
    .line 19
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 9
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->updateCutout()V

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->updateProtectionBoundingPath()V

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->onUpdate()V

    .line 24
    return-void
    .line 27
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->shouldDrawCutout:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->location:[I

    .line 18
    const/4 v1, 0x0

    .line 20
    aget v1, v0, v1

    .line 21
    int-to-float v1, v1

    .line 23
    neg-float v1, v1

    .line 24
    const/4 v2, 0x1

    .line 25
    aget v0, v0, v2

    .line 26
    int-to-float v0, v0

    .line 28
    neg-float v0, v0

    .line 29
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;->drawCutouts(Landroid/graphics/Canvas;)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/systemui/DisplayCutoutBaseView;->drawCutoutProtection(Landroid/graphics/Canvas;)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 39
    return-void
    .line 42
.end method

.method public onUpdate()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setCameraProtectionProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionProgress:F

    .line 2
    return-void
    .line 4
.end method

.method public setProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 9
    iget-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 14
    iget-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRectOrig:Landroid/graphics/RectF;

    .line 17
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 19
    iget-object p1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRectOrig:Landroid/graphics/RectF;

    .line 22
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 27
    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    .line 29
    return-void
    .line 32
.end method

.method public updateCutout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 11
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 22
    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getCutoutPath()Landroid/graphics/Path;

    .line 28
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->cutoutPath:Landroid/graphics/Path;

    .line 34
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 39
    return-void
    .line 42
.end method

.method public updateProtectionBoundingPath()V
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/DisplayCutoutBaseView;->getPhysicalPixelDisplaySizeRatio()F

    .line 7
    move-result v1

    .line 10
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 11
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->displayInfo:Landroid/view/DisplayInfo;

    .line 14
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 16
    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 18
    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 20
    const/4 v4, 0x3

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eq v1, v5, :cond_1

    .line 24
    if-ne v1, v4, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const/4 v6, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    move v6, v5

    .line 31
    :goto_1
    if-eqz v6, :cond_2

    .line 32
    move v7, v3

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move v7, v2

    .line 36
    :goto_2
    if-eqz v6, :cond_3

    .line 37
    goto :goto_3

    .line 39
    :cond_3
    move v2, v3

    .line 40
    :goto_3
    if-eqz v1, :cond_7

    .line 41
    const/4 v3, 0x0

    .line 43
    if-eq v1, v5, :cond_6

    .line 44
    const/4 v5, 0x2

    .line 46
    if-eq v1, v5, :cond_5

    .line 47
    if-ne v1, v4, :cond_4

    .line 49
    const/high16 v1, 0x42b40000    # 90.0f

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 53
    int-to-float v1, v2

    .line 56
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 57
    goto :goto_4

    .line 60
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    const-string v0, "Unknown rotation: "

    .line 63
    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p0

    .line 72
    :cond_5
    const/high16 v1, 0x43340000    # 180.0f

    .line 73
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 75
    int-to-float v1, v7

    .line 78
    int-to-float v2, v2

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 80
    goto :goto_4

    .line 83
    :cond_6
    const/high16 v1, 0x43870000    # 270.0f

    .line 84
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 86
    int-to-float v1, v7

    .line 89
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 90
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    .line 93
    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    .line 95
    move-result v1

    .line 98
    if-nez v1, :cond_8

    .line 99
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    .line 101
    iget-object v2, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPathOrig:Landroid/graphics/Path;

    .line 103
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionPath:Landroid/graphics/Path;

    .line 108
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 110
    iget-object v1, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRect:Landroid/graphics/RectF;

    .line 113
    iget-object p0, p0, Lcom/android/systemui/DisplayCutoutBaseView;->protectionRectOrig:Landroid/graphics/RectF;

    .line 115
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 117
    :cond_8
    return-void
    .line 120
.end method
