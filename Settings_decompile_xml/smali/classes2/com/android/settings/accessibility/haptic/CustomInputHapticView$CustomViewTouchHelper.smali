.class Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "CustomInputHapticView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/haptic/CustomInputHapticView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomViewTouchHelper"
.end annotation


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/settings/accessibility/haptic/CustomInputHapticView;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/haptic/CustomInputHapticView;Landroid/view/View;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;->this$0:Lcom/android/settings/accessibility/haptic/CustomInputHapticView;

    .line 79
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 77
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method protected onItemClicked(I)Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;->this$0:Lcom/android/settings/accessibility/haptic/CustomInputHapticView;

    invoke-static {v0}, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->-$$Nest$fgetmTouchHelper(Lcom/android/settings/accessibility/haptic/CustomInputHapticView;)Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 130
    iget-object p0, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;->this$0:Lcom/android/settings/accessibility/haptic/CustomInputHapticView;

    invoke-static {p0}, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->-$$Nest$fgetmTouchHelper(Lcom/android/settings/accessibility/haptic/CustomInputHapticView;)Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;->onItemClicked(I)Z

    move-result p0

    return p0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 99
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;->this$0:Lcom/android/settings/accessibility/haptic/CustomInputHapticView;

    invoke-static {p1}, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->-$$Nest$fgetmText(Lcom/android/settings/accessibility/haptic/CustomInputHapticView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;->this$0:Lcom/android/settings/accessibility/haptic/CustomInputHapticView;

    invoke-static {p1}, Lcom/android/settings/accessibility/haptic/CustomInputHapticView;->-$$Nest$fgetmText(Lcom/android/settings/accessibility/haptic/CustomInputHapticView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    const/16 v0, 0x10

    .line 102
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/4 v0, 0x0

    .line 103
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 104
    iget-object v1, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;->this$0:Lcom/android/settings/accessibility/haptic/CustomInputHapticView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 105
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 106
    iget-object p0, p0, Lcom/android/settings/accessibility/haptic/CustomInputHapticView$CustomViewTouchHelper;->this$0:Lcom/android/settings/accessibility/haptic/CustomInputHapticView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 107
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
