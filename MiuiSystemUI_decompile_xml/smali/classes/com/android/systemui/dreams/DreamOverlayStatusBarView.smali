.class public Lcom/android/systemui/dreams/DreamOverlayStatusBarView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field public final mContext:Landroid/content/Context;

.field public mDrawableInsetSize:I

.field public mDrawableSize:I

.field public mExtraSystemStatusViewGroup:Landroid/view/ViewGroup;

.field public mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

.field public final mStatusIcons:Ljava/util/Map;

.field public mSystemStatusViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mStatusIcons:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addDoubleShadow(Landroid/view/View;)V
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    .line 6
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v3

    .line 11
    new-instance v6, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 14
    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 16
    iget v4, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mDrawableSize:I

    .line 18
    iget v5, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mDrawableInsetSize:I

    .line 20
    move-object v0, v6

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/shadow/DoubleShadowIconDrawable;-><init>(Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;Landroid/graphics/drawable/Drawable;II)V

    .line 23
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public final createShadowInfo(IFII)Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    move-result p1

    .line 21
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 28
    move-result p3

    .line 31
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    move-result-object p3

    .line 35
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 36
    move-result p3

    .line 39
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 46
    move-result p0

    .line 49
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 54
    move-result p0

    .line 57
    invoke-direct {v0, p1, p3, p0, p2}, Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;-><init>(FFFF)V

    .line 58
    return-object v0
    .line 61
.end method

.method public final fetchStatusIconForResId(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-object p1, p0

    .line 9
    check-cast p1, Landroid/view/View;

    .line 10
    return-object p0
    .line 12
.end method

.method public final onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    const v0, 0x7f070328    # @dimen/dream_overlay_status_bar_key_text_shadow_radius '1.0dp'

    .line 5
    const v1, 0x7f070326    # @dimen/dream_overlay_status_bar_key_text_shadow_dx '0.5dp'

    .line 8
    const v2, 0x3eb33333    # 0.35f

    .line 11
    const v3, 0x7f070327    # @dimen/dream_overlay_status_bar_key_text_shadow_dy '0.5dp'

    .line 14
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->createShadowInfo(IFII)Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mKeyShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 21
    const v0, 0x7f070322    # @dimen/dream_overlay_status_bar_ambient_text_shadow_radius '2.0dp'

    .line 23
    const v1, 0x7f070320    # @dimen/dream_overlay_status_bar_ambient_text_shadow_dx '0.5dp'

    .line 26
    const v2, 0x3ecccccd    # 0.4f

    .line 29
    const v3, 0x7f070321    # @dimen/dream_overlay_status_bar_ambient_text_shadow_dy '0.5dp'

    .line 32
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->createShadowInfo(IFII)Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 35
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mAmbientShadowInfo:Lcom/android/systemui/shared/shadow/DoubleShadowTextHelper$ShadowInfo;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v0

    .line 46
    const v1, 0x7f070325    # @dimen/dream_overlay_status_bar_icon_size '@android:dimen/text_size_title_material_toolbar'

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    move-result v0

    .line 53
    iput v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mDrawableSize:I

    .line 54
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object v0

    .line 61
    const v1, 0x7f07031e    # @dimen/dream_overlay_icon_inset_dimen '0.0dp'

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    move-result v0

    .line 68
    iput v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mDrawableInsetSize:I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mStatusIcons:Ljava/util/Map;

    .line 71
    const/4 v1, 0x1

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v1

    .line 77
    const v2, 0x7f0a0307    # @id/dream_overlay_wifi_status

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    .line 81
    move-result-object v2

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->addDoubleShadow(Landroid/view/View;)V

    .line 85
    check-cast v0, Ljava/util/HashMap;

    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mStatusIcons:Ljava/util/Map;

    .line 93
    const/4 v1, 0x2

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v1

    .line 99
    const v2, 0x7f0a02fa    # @id/dream_overlay_alarm_set

    .line 100
    invoke-virtual {p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    .line 103
    move-result-object v2

    .line 106
    invoke-virtual {p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->addDoubleShadow(Landroid/view/View;)V

    .line 107
    check-cast v0, Ljava/util/HashMap;

    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mStatusIcons:Ljava/util/Map;

    .line 115
    const/4 v1, 0x3

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v1

    .line 121
    const v2, 0x7f0a02fd    # @id/dream_overlay_camera_off

    .line 122
    invoke-virtual {p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    .line 125
    move-result-object v2

    .line 128
    check-cast v0, Ljava/util/HashMap;

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mStatusIcons:Ljava/util/Map;

    .line 134
    const/4 v1, 0x4

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object v1

    .line 140
    const v2, 0x7f0a0302    # @id/dream_overlay_mic_off

    .line 141
    invoke-virtual {p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    .line 144
    move-result-object v2

    .line 147
    check-cast v0, Ljava/util/HashMap;

    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mStatusIcons:Ljava/util/Map;

    .line 153
    const/4 v1, 0x5

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v1

    .line 159
    const v2, 0x7f0a02fc    # @id/dream_overlay_camera_mic_off

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    .line 163
    move-result-object v2

    .line 166
    check-cast v0, Ljava/util/HashMap;

    .line 167
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mStatusIcons:Ljava/util/Map;

    .line 172
    const/4 v1, 0x0

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object v1

    .line 178
    const v2, 0x7f0a0303    # @id/dream_overlay_notification_indicator

    .line 179
    invoke-virtual {p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    .line 182
    move-result-object v2

    .line 185
    check-cast v0, Ljava/util/HashMap;

    .line 186
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mStatusIcons:Ljava/util/Map;

    .line 191
    const/4 v1, 0x6

    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    move-result-object v1

    .line 197
    const v2, 0x7f0a0304    # @id/dream_overlay_priority_mode

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    .line 201
    move-result-object v2

    .line 204
    invoke-virtual {p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->addDoubleShadow(Landroid/view/View;)V

    .line 205
    check-cast v0, Ljava/util/HashMap;

    .line 208
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mStatusIcons:Ljava/util/Map;

    .line 213
    const/4 v1, 0x7

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    move-result-object v1

    .line 219
    const v2, 0x7f0a02fb    # @id/dream_overlay_assistant_attention_indicator

    .line 220
    invoke-virtual {p0, v2}, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->fetchStatusIconForResId(I)Landroid/view/View;

    .line 223
    move-result-object v2

    .line 226
    check-cast v0, Ljava/util/HashMap;

    .line 227
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const v0, 0x7f0a0306    # @id/dream_overlay_system_status

    .line 232
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 235
    move-result-object v0

    .line 238
    check-cast v0, Landroid/view/ViewGroup;

    .line 239
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mSystemStatusViewGroup:Landroid/view/ViewGroup;

    .line 241
    const v0, 0x7f0a0301    # @id/dream_overlay_extra_items

    .line 243
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 246
    move-result-object v0

    .line 249
    check-cast v0, Landroid/view/ViewGroup;

    .line 250
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarView;->mExtraSystemStatusViewGroup:Landroid/view/ViewGroup;

    .line 252
    return-void
    .line 254
.end method
