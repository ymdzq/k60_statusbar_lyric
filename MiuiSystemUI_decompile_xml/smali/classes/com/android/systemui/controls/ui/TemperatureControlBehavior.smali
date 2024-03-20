.class public final Lcom/android/systemui/controls/ui/TemperatureControlBehavior;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/controls/ui/Behavior;


# instance fields
.field public clipLayer:Landroid/graphics/drawable/Drawable;

.field public control:Landroid/service/controls/Control;

.field public cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public subBehavior:Lcom/android/systemui/controls/ui/Behavior;


# virtual methods
.method public final bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 5

    .line 1
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 9
    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    .line 13
    const/4 v0, 0x0

    .line 15
    if-eqz p2, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    move-object p2, v0

    .line 19
    :goto_0
    invoke-virtual {p2}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    .line 20
    move-result-object p2

    .line 23
    sget-object v1, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    .line 24
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 30
    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 36
    move-result-object p1

    .line 39
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 40
    const p2, 0x7f0a01f5    # @id/clip_layer

    .line 42
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 45
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    .line 49
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    .line 51
    if-eqz p1, :cond_1

    .line 53
    goto :goto_1

    .line 55
    :cond_1
    move-object p1, v0

    .line 56
    :goto_1
    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 57
    move-result-object p1

    .line 60
    check-cast p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    .line 61
    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getCurrentActiveMode()I

    .line 63
    move-result p2

    .line 66
    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 67
    move-result-object v2

    .line 70
    invoke-static {}, Landroid/service/controls/templates/ControlTemplate;->getNoTemplateObject()Landroid/service/controls/templates/ControlTemplate;

    .line 71
    move-result-object v3

    .line 74
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    move-result v3

    .line 78
    if-nez v3, :cond_5

    .line 79
    invoke-static {}, Landroid/service/controls/templates/ControlTemplate;->getErrorTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 81
    move-result-object v3

    .line 84
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    move-result v3

    .line 88
    if-eqz v3, :cond_2

    .line 89
    goto :goto_3

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 92
    move-result-object p1

    .line 95
    iget-object v1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->subBehavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 96
    iget-object v3, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    .line 98
    if-eqz v3, :cond_3

    .line 100
    goto :goto_2

    .line 102
    :cond_3
    move-object v3, v0

    .line 103
    :goto_2
    invoke-virtual {v3}, Landroid/service/controls/Control;->getStatus()I

    .line 104
    move-result v3

    .line 107
    iget-object v4, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    .line 108
    if-eqz v4, :cond_4

    .line 110
    move-object v0, v4

    .line 112
    :cond_4
    invoke-virtual {v0}, Landroid/service/controls/Control;->getDeviceType()I

    .line 113
    move-result v0

    .line 116
    invoke-static {v3, v2, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;->findBehaviorClass(ILandroid/service/controls/templates/ControlTemplate;I)Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;

    .line 117
    move-result-object v0

    .line 120
    invoke-virtual {p1, v1, v0, p2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindBehavior(Lcom/android/systemui/controls/ui/Behavior;Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$1;I)Lcom/android/systemui/controls/ui/Behavior;

    .line 121
    move-result-object p1

    .line 124
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->subBehavior:Lcom/android/systemui/controls/ui/Behavior;

    .line 125
    goto :goto_5

    .line 127
    :cond_5
    :goto_3
    const/4 v2, 0x1

    .line 128
    if-eqz p2, :cond_6

    .line 129
    if-eq p2, v2, :cond_6

    .line 131
    move v3, v2

    .line 133
    goto :goto_4

    .line 134
    :cond_6
    move v3, v1

    .line 135
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    .line 136
    if-eqz v4, :cond_7

    .line 138
    move-object v0, v4

    .line 140
    :cond_7
    if-eqz v3, :cond_8

    .line 141
    const/16 v1, 0x2710

    .line 143
    :cond_8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 148
    move-result-object v0

    .line 151
    invoke-virtual {v0, p2, v3, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(IZZ)V

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 155
    move-result-object p2

    .line 158
    iget-object p2, p2, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 159
    new-instance v0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;

    .line 161
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;-><init>(Lcom/android/systemui/controls/ui/TemperatureControlBehavior;Landroid/service/controls/templates/TemperatureControlTemplate;)V

    .line 163
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :goto_5
    return-void
    .line 169
.end method

.method public final getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    return-void
    .line 4
.end method
