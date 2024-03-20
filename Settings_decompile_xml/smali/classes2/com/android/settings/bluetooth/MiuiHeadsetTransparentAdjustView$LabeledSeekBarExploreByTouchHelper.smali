.class Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "MiuiHeadsetTransparentAdjustView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabeledSeekBarExploreByTouchHelper"
.end annotation


# instance fields
.field private mIsLayoutRtl:Z

.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;


# direct methods
.method private getBoundsInParentFromVirtualViewId(I)Landroid/graphics/Rect;
    .locals 3

    .line 322
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 324
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 325
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmVirtualPointsXList(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 326
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int p1, p1

    float-to-int v1, v1

    .line 327
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method private getHalfVirtualViewWidth()I
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    .line 309
    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 310
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I

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

    .line 314
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    .line 315
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth()I

    move-result v0

    div-int/2addr p1, v0

    const/4 v0, 0x0

    .line 314
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 316
    div-int/lit8 p1, p1, 0x2

    .line 317
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 318
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int p1, p0, p1

    :cond_0
    return p1
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->getVirtualViewIdIndexFromX(F)I

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

    .line 245
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 246
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

    .line 253
    iget-boolean p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 254
    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p3}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I

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

    .line 263
    :cond_2
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I

    move-result p2

    if-eq p1, p2, :cond_5

    .line 264
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fputmCurrentPointIndex(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;I)V

    .line 265
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmListener(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 266
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmListener(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p3}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$misRtl(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 267
    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p3}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmPointCount(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I

    move-result p3

    sub-int/2addr p3, v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I

    move-result v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p3}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I

    move-result p3

    .line 266
    :goto_0
    invoke-interface {p2, p3}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$TransparentLevelChangeListener;->onTransparentLevelChange(I)V

    .line 269
    :cond_4
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 270
    iget-object p2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p2}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmHapticUtil(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)Lcom/android/settingslib/util/HapticUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settingslib/util/HapticUtil;->performHapticFeedback()V

    .line 272
    :cond_5
    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 298
    :try_start_0
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 300
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmLabels(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 302
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 283
    :try_start_0
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->getBoundsInParentFromVirtualViewId(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    .line 285
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/4 v0, 0x1

    .line 286
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 287
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 288
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {v1}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmCurrentPointIndex(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 289
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;->-$$Nest$fgetmLabels(Lcom/android/settings/bluetooth/MiuiHeadsetTransparentAdjustView;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 291
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
