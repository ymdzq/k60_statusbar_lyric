.class public final Lcom/android/systemui/controls/ui/ToggleBehavior;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/controls/ui/Behavior;


# instance fields
.field public clipLayer:Landroid/graphics/drawable/Drawable;

.field public control:Landroid/service/controls/Control;

.field public cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public template:Landroid/service/controls/templates/ToggleTemplate;


# virtual methods
.method public final bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->control:Landroid/service/controls/Control;

    .line 7
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 9
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    move-object v0, v1

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    .line 16
    move-result-object p1

    .line 19
    sget-object v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    .line 20
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    .line 23
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->control:Landroid/service/controls/Control;

    .line 26
    if-eqz p1, :cond_1

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    move-object p1, v1

    .line 31
    :goto_1
    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 32
    move-result-object p1

    .line 35
    instance-of v0, p1, Landroid/service/controls/templates/ToggleTemplate;

    .line 36
    if-eqz v0, :cond_2

    .line 38
    check-cast p1, Landroid/service/controls/templates/ToggleTemplate;

    .line 40
    goto :goto_2

    .line 42
    :cond_2
    instance-of v0, p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    .line 43
    if-eqz v0, :cond_6

    .line 45
    check-cast p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    .line 47
    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 49
    move-result-object p1

    .line 52
    check-cast p1, Landroid/service/controls/templates/ToggleTemplate;

    .line 53
    :goto_2
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->template:Landroid/service/controls/templates/ToggleTemplate;

    .line 55
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 57
    if-eqz p1, :cond_3

    .line 59
    goto :goto_3

    .line 61
    :cond_3
    move-object p1, v1

    .line 62
    :goto_3
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 65
    move-result-object p1

    .line 68
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 69
    const v0, 0x7f0a01f5    # @id/clip_layer

    .line 71
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 74
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    .line 78
    const/16 v0, 0x2710

    .line 80
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 82
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->template:Landroid/service/controls/templates/ToggleTemplate;

    .line 85
    if-eqz p1, :cond_4

    .line 87
    goto :goto_4

    .line 89
    :cond_4
    move-object p1, v1

    .line 90
    :goto_4
    invoke-virtual {p1}, Landroid/service/controls/templates/ToggleTemplate;->isChecked()Z

    .line 91
    move-result p1

    .line 94
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 95
    if-eqz p0, :cond_5

    .line 97
    move-object v1, p0

    .line 99
    :cond_5
    const/4 p0, 0x1

    .line 100
    invoke-virtual {v1, p2, p1, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(IZZ)V

    .line 101
    return-void

    .line 104
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    const-string p2, "Unsupported template type: "

    .line 107
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 118
    const-string p1, "ControlsUiController"

    .line 119
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
    .line 124
.end method

.method public final initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    new-instance v0, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;

    .line 4
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ToggleBehavior;)V

    .line 6
    iget-object p0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    return-void
    .line 14
.end method
