.class public final Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 2
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    .line 8
    move-result p1

    .line 11
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 12
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getClipLayer()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 18
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    .line 22
    move-result v1

    .line 25
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 26
    const/16 v3, 0x2710

    .line 28
    invoke-virtual {v2, v3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    .line 30
    move-result v2

    .line 33
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 34
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 36
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Landroid/service/controls/templates/RangeTemplate;->getStepValue()F

    .line 40
    move-result v3

    .line 43
    float-to-double v3, v3

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 45
    move-result-wide v5

    .line 48
    cmpg-double v3, v3, v5

    .line 49
    const/4 v4, 0x1

    .line 51
    if-nez v3, :cond_0

    .line 52
    move v0, v4

    .line 54
    :cond_0
    xor-int/2addr v0, v4

    .line 55
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 56
    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    .line 58
    if-eqz p0, :cond_1

    .line 60
    invoke-static {v0, p1, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 62
    move-result-object p0

    .line 65
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 66
    :cond_1
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 69
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 71
    return-void
    .line 74
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .line 1
    const/16 v0, 0x10

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p2, v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 8
    iget-boolean v3, v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isToggleable:Z

    .line 10
    if-nez v3, :cond_0

    .line 12
    goto/16 :goto_2

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 16
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 20
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 22
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 24
    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 28
    iget-object v5, v4, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->templateId:Ljava/lang/String;

    .line 30
    if-eqz v5, :cond_1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    const/4 v5, 0x0

    .line 35
    :goto_0
    iget-boolean v4, v4, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    .line 36
    check-cast v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 38
    invoke-virtual {v0, v3, v5, v4}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->toggle(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Z)V

    .line 40
    goto :goto_1

    .line 43
    :cond_2
    const/16 v0, 0x20

    .line 44
    if-ne p2, v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 50
    move-result-object v0

    .line 53
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 54
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 56
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 58
    move-result-object v3

    .line 61
    check-cast v0, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 62
    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->longPress(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    .line 64
    goto :goto_1

    .line 67
    :cond_3
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 68
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    .line 70
    move-result v0

    .line 73
    if-ne p2, v0, :cond_5

    .line 74
    if-eqz p3, :cond_5

    .line 76
    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    .line 78
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 80
    move-result v3

    .line 83
    if-nez v3, :cond_4

    .line 84
    goto :goto_2

    .line 86
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 87
    move-result v0

    .line 90
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 91
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 93
    move-result-object v4

    .line 96
    invoke-virtual {v4}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    .line 97
    move-result v4

    .line 100
    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getRangeTemplate()Landroid/service/controls/templates/RangeTemplate;

    .line 101
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    .line 105
    move-result v3

    .line 108
    const/4 v5, 0x0

    .line 109
    const v6, 0x461c4000    # 10000.0f

    .line 110
    invoke-static {v5, v6, v4, v3, v0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    .line 113
    move-result v0

    .line 116
    float-to-int v0, v0

    .line 117
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 118
    iget-boolean v4, v3, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    .line 120
    invoke-virtual {v3, v0, v4, v2}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->updateRange(IZZ)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 125
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->endUpdateRange()V

    .line 127
    :goto_1
    move v0, v2

    .line 130
    goto :goto_3

    .line 131
    :cond_5
    :goto_2
    move v0, v1

    .line 132
    :goto_3
    if-nez v0, :cond_6

    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 135
    move-result p0

    .line 138
    if-eqz p0, :cond_7

    .line 139
    :cond_6
    move v1, v2

    .line 141
    :cond_7
    return v1
    .line 142
.end method
