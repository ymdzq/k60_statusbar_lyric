.class public final Lcom/android/systemui/controls/ui/ThumbnailBehavior;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/controls/ui/Behavior;


# instance fields
.field public control:Landroid/service/controls/Control;

.field public cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public shadowColor:I

.field public shadowOffsetX:F

.field public shadowOffsetY:F

.field public shadowRadius:F

.field public template:Landroid/service/controls/templates/ThumbnailTemplate;


# virtual methods
.method public final bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 6

    .line 1
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    .line 2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->control:Landroid/service/controls/Control;

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 9
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->control:Landroid/service/controls/Control;

    .line 13
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :goto_0
    invoke-virtual {v0}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    .line 20
    move-result-object v0

    .line 23
    sget-object v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    .line 24
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    .line 27
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->control:Landroid/service/controls/Control;

    .line 30
    if-eqz p1, :cond_1

    .line 32
    goto :goto_1

    .line 34
    :cond_1
    move-object p1, v1

    .line 35
    :goto_1
    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    .line 36
    move-result-object p1

    .line 39
    check-cast p1, Landroid/service/controls/templates/ThumbnailTemplate;

    .line 40
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 44
    move-result-object p1

    .line 47
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 50
    move-result-object p1

    .line 53
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 54
    const v0, 0x7f0a01f5    # @id/clip_layer

    .line 56
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 59
    move-result-object p1

    .line 62
    check-cast p1, Landroid/graphics/drawable/ClipDrawable;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    .line 65
    if-eqz v0, :cond_2

    .line 67
    goto :goto_2

    .line 69
    :cond_2
    move-object v0, v1

    .line 70
    :goto_2
    invoke-virtual {v0}, Landroid/service/controls/templates/ThumbnailTemplate;->isActive()Z

    .line 71
    move-result v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    const/16 v0, 0x2710

    .line 77
    goto :goto_3

    .line 79
    :cond_3
    move v0, v2

    .line 80
    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 81
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    .line 84
    if-eqz v0, :cond_4

    .line 86
    goto :goto_4

    .line 88
    :cond_4
    move-object v0, v1

    .line 89
    :goto_4
    invoke-virtual {v0}, Landroid/service/controls/templates/ThumbnailTemplate;->isActive()Z

    .line 90
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 96
    move-result-object v0

    .line 99
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    .line 100
    const/4 v2, 0x4

    .line 102
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 106
    move-result-object v0

    .line 109
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    .line 110
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 115
    move-result-object v0

    .line 118
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    .line 119
    iget v2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowOffsetX:F

    .line 121
    iget v3, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowOffsetY:F

    .line 123
    iget v4, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowRadius:F

    .line 125
    iget v5, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowColor:I

    .line 127
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 132
    move-result-object v0

    .line 135
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 136
    new-instance v2, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;

    .line 138
    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;-><init>(Lcom/android/systemui/controls/ui/ThumbnailBehavior;Landroid/graphics/drawable/ClipDrawable;I)V

    .line 140
    check-cast v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 143
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 145
    goto :goto_5

    .line 148
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 149
    move-result-object p1

    .line 152
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    .line 153
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 158
    move-result-object p1

    .line 161
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    .line 162
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 167
    move-result-object p1

    .line 170
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    .line 171
    iget v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowColor:I

    .line 173
    const/4 v2, 0x0

    .line 175
    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 176
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 179
    move-result-object p1

    .line 182
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    .line 183
    if-eqz p0, :cond_6

    .line 185
    move-object v1, p0

    .line 187
    :cond_6
    invoke-virtual {v1}, Landroid/service/controls/templates/ThumbnailTemplate;->isActive()Z

    .line 188
    move-result p0

    .line 191
    const/4 v0, 0x1

    .line 192
    invoke-virtual {p1, p2, p0, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(IZZ)V

    .line 193
    return-void
    .line 196
.end method

.method public final getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

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
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    .line 4
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    iget-object v1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v2

    .line 14
    const v3, 0x7f07024f    # @dimen/controls_thumbnail_shadow_x '2.0'

    .line 15
    const/4 v4, 0x1

    .line 18
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 19
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    .line 22
    move-result v2

    .line 25
    iput v2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowOffsetX:F

    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v2

    .line 31
    const v3, 0x7f070250    # @dimen/controls_thumbnail_shadow_y '2.0'

    .line 32
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 35
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    .line 38
    move-result v2

    .line 41
    iput v2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowOffsetY:F

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object v2

    .line 47
    const v3, 0x7f07024e    # @dimen/controls_thumbnail_shadow_radius '2.0'

    .line 48
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 51
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    .line 54
    move-result v0

    .line 57
    iput v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowRadius:F

    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v0

    .line 63
    const v1, 0x7f0600d2    # @color/control_thumbnail_shadow_color '@android:color/black'

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 67
    move-result v0

    .line 70
    iput v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowColor:I

    .line 71
    new-instance v0, Lcom/android/systemui/controls/ui/ThumbnailBehavior$initialize$1;

    .line 73
    invoke-direct {v0, p1, p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior$initialize$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ThumbnailBehavior;)V

    .line 75
    iget-object p0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
    .line 83
.end method
