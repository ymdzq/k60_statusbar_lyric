.class Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "FontSizeAdjustView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/FontSizeAdjustView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabeledSeekBarExploreByTouchHelper"
.end annotation


# instance fields
.field private mIsLayoutRtl:Z

.field final synthetic this$0:Lcom/android/settings/display/FontSizeAdjustView;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/FontSizeAdjustView;Landroid/view/View;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    .line 236
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 237
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    return-void
.end method

.method private getBoundsInParentFromVirtualViewId(I)Landroid/graphics/Rect;
    .locals 3

    .line 334
    iget-boolean v0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {v0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 336
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 337
    iget-object v1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {v1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmVirtualPointsXList(Lcom/android/settings/display/FontSizeAdjustView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 338
    iget-object v1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int p1, p1

    float-to-int v1, v1

    .line 339
    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method private getHalfVirtualViewWidth()I
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    .line 321
    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 322
    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x2

    div-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getVirtualViewIdIndexFromX(F)I
    .locals 1

    float-to-int p1, p1

    .line 326
    iget-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    .line 327
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth()I

    move-result v0

    div-int/2addr p1, v0

    const/4 v0, 0x0

    .line 326
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 328
    div-int/lit8 p1, p1, 0x2

    .line 329
    iget-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {v0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 330
    iget-boolean v0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int p1, p0, p1

    :cond_0
    return p1
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 0

    .line 243
    invoke-direct {p0, p1}, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->getVirtualViewIdIndexFromX(F)I

    move-result p0

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 248
    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 249
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 2

    .line 256
    iget-boolean p3, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 257
    iget-object p3, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p3}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p3

    sub-int/2addr p3, v0

    sub-int p1, p3, p1

    :cond_0
    const/4 p3, -0x1

    const/4 v1, 0x0

    if-ne p1, p3, :cond_1

    return v1

    :cond_1
    const/16 p3, 0x10

    if-eq p2, p3, :cond_2

    return v1

    .line 266
    :cond_2
    iget-object p2, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p2}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p2

    if-eq p1, p2, :cond_5

    .line 267
    iget-object p2, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p2, p1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fputmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;I)V

    .line 268
    iget-object p2, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p2}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmListener(Lcom/android/settings/display/FontSizeAdjustView;)Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 269
    iget-object p2, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p2}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmListener(Lcom/android/settings/display/FontSizeAdjustView;)Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p3}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$misRtl(Lcom/android/settings/display/FontSizeAdjustView;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 270
    iget-object p3, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p3}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p3

    sub-int/2addr p3, v0

    iget-object v1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {v1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p3}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p3

    .line 269
    :goto_0
    invoke-interface {p2, p3}, Lcom/android/settings/display/FontSizeAdjustView$FontSizeChangeListener;->onSizeChange(I)V

    .line 272
    :cond_4
    iget-object p2, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 273
    iget-object p2, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p2}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmHapticUtil(Lcom/android/settings/display/FontSizeAdjustView;)Lcom/android/settingslib/util/HapticUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settingslib/util/HapticUtil;->performHapticFeedback()V

    .line 275
    :cond_5
    iget-object p2, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p2}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$misRtl(Lcom/android/settings/display/FontSizeAdjustView;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 276
    iget-object p2, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p2}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p2

    sub-int/2addr p2, v0

    sub-int p1, p2, p1

    .line 275
    :cond_6
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 279
    iget-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmRecommendListener(Lcom/android/settings/display/FontSizeAdjustView;)Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 280
    iget-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$misRtl(Lcom/android/settings/display/FontSizeAdjustView;)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_7

    .line 281
    iget-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p1

    sub-int/2addr p1, v0

    add-int/lit8 p2, p1, -0x5

    .line 282
    :cond_7
    iget-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p1

    if-ne p1, p2, :cond_8

    .line 283
    iget-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fputmLastCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;I)V

    .line 284
    iget-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmRecommendListener(Lcom/android/settings/display/FontSizeAdjustView;)Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;->showRecommendLayout()V

    .line 286
    :cond_8
    iget-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmLastCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p1

    if-ne p1, p2, :cond_9

    iget-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p1

    if-eq p1, p2, :cond_9

    .line 287
    iget-object p1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fputmLastCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;I)V

    .line 288
    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmRecommendListener(Lcom/android/settings/display/FontSizeAdjustView;)Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/display/FontSizeAdjustView$RecommendListener;->scrollViewToHideRecommend()V

    :cond_9
    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 312
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {v0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmLabels(Lcom/android/settings/display/FontSizeAdjustView;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {v0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$misRtl(Lcom/android/settings/display/FontSizeAdjustView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {v0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result v0

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p0

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result v0

    :goto_0
    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 314
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 300
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 301
    invoke-direct {p0, p1}, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->getBoundsInParentFromVirtualViewId(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    .line 302
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {v0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmLabels(Lcom/android/settings/display/FontSizeAdjustView;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 304
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 305
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 306
    iget-object v1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {v1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$misRtl(Lcom/android/settings/display/FontSizeAdjustView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {v1}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result p0

    sub-int/2addr v1, p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/FontSizeAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/display/FontSizeAdjustView;

    invoke-static {p0}, Lcom/android/settings/display/FontSizeAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/display/FontSizeAdjustView;)I

    move-result v1

    :goto_0
    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 306
    :goto_1
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    return-void
.end method
