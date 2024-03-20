.class public final Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public activeWidthInterpolator:Landroidx/core/animation/PathInterpolator;

.field public arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

.field public arrowThickness:F

.field public cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public deactivationTriggerThreshold:F

.field public dynamicTriggerThresholdRange:Lkotlin/ranges/ClosedFloatRange;

.field public edgeCornerInterpolator:Landroidx/core/animation/PathInterpolator;

.field public entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

.field public entryWidthTowardsEdgeInterpolator:Landroidx/core/animation/PathInterpolator;

.field public farCornerInterpolator:Landroidx/core/animation/PathInterpolator;

.field public fingerOffset:I

.field public flungIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public fullyStretchedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public heightInterpolator:Landroidx/core/animation/PathInterpolator;

.field public horizontalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

.field public minArrowYPosition:I

.field public preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

.field public reactivationTriggerThreshold:F

.field public resources:Landroid/content/res/Resources;

.field public staticTriggerThreshold:F

.field public swipeProgressThreshold:F

.field public verticalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->update(Landroid/content/res/Resources;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 14
    iget-object p1, p1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 16
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p0

    .line 21
    if-nez p0, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    return v0
    .line 25
.end method

.method public final getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

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

.method public final getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

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

.method public final getDimen(I)F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final getDimenFloat(I)F
    .locals 2

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 7
    const/4 v1, 0x1

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 10
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public final getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

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

.method public final getFlungIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->flungIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

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

.method public final getPreThresholdIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

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

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 2
    invoke-virtual {p0}, Landroid/content/res/Resources;->hashCode()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "EdgePanelParams(resources="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string p0, ")"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method

.method public final update(Landroid/content/res/Resources;)V
    .locals 56

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 6
    const v1, 0x7f070d26    # @dimen/navigation_edge_arrow_thickness '4.0dp'

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 11
    move-result v1

    .line 14
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowThickness:F

    .line 15
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 17
    const v2, 0x7f070d39    # @dimen/navigation_edge_panel_padding '8.0dp'

    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 25
    const v2, 0x7f070d25    # @dimen/navigation_edge_arrow_min_y '64.0dp'

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    move-result v1

    .line 33
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->minArrowYPosition:I

    .line 34
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->resources:Landroid/content/res/Resources;

    .line 36
    const v2, 0x7f070d37    # @dimen/navigation_edge_finger_offset '64.0dp'

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    move-result v1

    .line 44
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->fingerOffset:I

    .line 45
    const v1, 0x7f070d18    # @dimen/navigation_edge_action_drag_threshold '16.0dp'

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 50
    move-result v1

    .line 53
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->staticTriggerThreshold:F

    .line 54
    const v1, 0x7f070d1a    # @dimen/navigation_edge_action_reactivation_drag_threshold '32.0dp'

    .line 56
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 59
    move-result v1

    .line 62
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->reactivationTriggerThreshold:F

    .line 63
    const v1, 0x7f070d17    # @dimen/navigation_edge_action_deactivation_drag_threshold '32.0dp'

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 68
    move-result v1

    .line 71
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->deactivationTriggerThreshold:F

    .line 72
    iget v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->reactivationTriggerThreshold:F

    .line 74
    neg-float v1, v1

    .line 76
    new-instance v3, Lkotlin/ranges/ClosedFloatRange;

    .line 77
    invoke-direct {v3, v2, v1}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    .line 79
    iput-object v3, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->dynamicTriggerThresholdRange:Lkotlin/ranges/ClosedFloatRange;

    .line 82
    const v1, 0x7f070d19    # @dimen/navigation_edge_action_progress_threshold '412.0dp'

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 87
    move-result v1

    .line 90
    iput v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->swipeProgressThreshold:F

    .line 91
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 93
    const v2, 0x3fa28f5c    # 1.27f

    .line 95
    const v3, 0x3e428f5c    # 0.19f

    .line 98
    const v4, 0x3f35c28f    # 0.71f

    .line 101
    const v5, 0x3f5c28f6    # 0.86f

    .line 104
    invoke-direct {v1, v3, v2, v4, v5}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 107
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 110
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 112
    const/high16 v2, -0x3fc00000    # -3.0f

    .line 114
    const v4, 0x3f99999a    # 1.2f

    .line 116
    const/high16 v5, 0x3f800000    # 1.0f

    .line 119
    invoke-direct {v1, v5, v2, v5, v4}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 121
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthTowardsEdgeInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 124
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 126
    const v2, 0x3f333333    # 0.7f

    .line 128
    const v4, -0x418a3d71    # -0.24f

    .line 131
    const v6, 0x3ef5c28f    # 0.48f

    .line 134
    const v7, 0x3f9ae148    # 1.21f

    .line 137
    invoke-direct {v1, v2, v4, v6, v7}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 140
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 143
    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryWidthInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 145
    if-eqz v1, :cond_0

    .line 147
    goto :goto_0

    .line 149
    :cond_0
    const/4 v1, 0x0

    .line 150
    :goto_0
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->arrowAngleInterpolator:Landroidx/core/animation/Interpolator;

    .line 151
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 153
    const v4, 0x3e4ccccd    # 0.2f

    .line 155
    invoke-direct {v1, v4, v5, v5, v5}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 158
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->horizontalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 161
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 163
    const v4, 0x3f70a3d7    # 0.94f

    .line 165
    const v6, 0x3f933333    # 1.15f

    .line 168
    const/high16 v7, 0x3f000000    # 0.5f

    .line 171
    const v8, 0x3ed1eb85    # 0.41f

    .line 173
    invoke-direct {v1, v7, v6, v8, v4}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 176
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->verticalTranslationInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 179
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 181
    const v4, 0x3f8b851f    # 1.09f

    .line 183
    const v6, 0x3cf5c28f    # 0.03f

    .line 186
    const v8, 0x3e0f5c29    # 0.14f

    .line 189
    invoke-direct {v1, v6, v3, v8, v4}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 192
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->farCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 195
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 197
    const v3, 0x3f570a3d    # 0.84f

    .line 199
    const v4, 0x3f8e147b    # 1.11f

    .line 202
    const/4 v6, 0x0

    .line 205
    const v8, 0x3f59999a    # 0.85f

    .line 206
    invoke-direct {v1, v6, v4, v8, v3}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 209
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->edgeCornerInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 212
    new-instance v1, Landroidx/core/animation/PathInterpolator;

    .line 214
    const v3, 0x3d4ccccd    # 0.05f

    .line 216
    const v4, 0x3f666666    # 0.9f

    .line 219
    const v8, -0x416b851f    # -0.29f

    .line 222
    invoke-direct {v1, v5, v3, v4, v8}, Landroidx/core/animation/PathInterpolator;-><init>(FFFF)V

    .line 225
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->heightInterpolator:Landroidx/core/animation/PathInterpolator;

    .line 228
    const v1, 0x44bb8000    # 1500.0f

    .line 230
    const v3, 0x3e947ae1    # 0.29f

    .line 233
    invoke-static {v1, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 236
    move-result-object v15

    .line 239
    invoke-static {v1, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 240
    move-result-object v3

    .line 243
    const v14, 0x461c4000    # 10000.0f

    .line 244
    invoke-static {v14, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 247
    move-result-object v24

    .line 250
    invoke-static {v14, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 251
    move-result-object v25

    .line 254
    invoke-static {v14, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 255
    move-result-object v26

    .line 258
    invoke-static {v14, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 259
    move-result-object v27

    .line 262
    new-instance v13, Lcom/android/systemui/navigationbar/gestural/Step;

    .line 263
    const/high16 v8, 0x43340000    # 180.0f

    .line 265
    invoke-static {v8, v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 267
    move-result-object v4

    .line 270
    const/high16 v8, 0x44fa0000    # 2000.0f

    .line 271
    const v12, 0x3f19999a    # 0.6f

    .line 273
    invoke-static {v8, v12}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 276
    move-result-object v8

    .line 279
    invoke-direct {v13, v4, v8}, Lcom/android/systemui/navigationbar/gestural/Step;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 280
    new-instance v4, Lcom/android/systemui/navigationbar/gestural/Step;

    .line 283
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 285
    move-result-object v8

    .line 288
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 289
    move-result-object v9

    .line 292
    invoke-direct {v4, v8, v9}, Lcom/android/systemui/navigationbar/gestural/Step;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    const v8, 0x7f070d35    # @dimen/navigation_edge_entry_margin '4.0dp'

    .line 296
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 299
    move-result v8

    .line 302
    const v9, 0x7f070d36    # @dimen/navigation_edge_entry_scale '0.98'

    .line 303
    invoke-virtual {v0, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimenFloat(I)F

    .line 306
    move-result v30

    .line 309
    const v11, 0x7f070d40    # @dimen/navigation_edge_pre_threshold_background_width '51.0dp'

    .line 310
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 313
    move-result v9

    .line 316
    const/high16 v10, 0x44480000    # 800.0f

    .line 317
    const v11, 0x3f428f5c    # 0.76f

    .line 319
    invoke-static {v10, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 322
    move-result-object v35

    .line 325
    const v10, 0x46ea6000    # 30000.0f

    .line 326
    invoke-static {v10, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 329
    move-result-object v34

    .line 332
    const/high16 v11, 0x42f00000    # 120.0f

    .line 333
    const v10, 0x3f4ccccd    # 0.8f

    .line 335
    invoke-static {v11, v10}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 338
    move-result-object v36

    .line 341
    const v11, 0x7f070d2f    # @dimen/navigation_edge_entry_arrow_length '8.6dp'

    .line 342
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 345
    move-result v11

    .line 348
    const v12, 0x7f070d2e    # @dimen/navigation_edge_entry_arrow_height '5.0dp'

    .line 349
    invoke-virtual {v0, v12}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 352
    move-result v12

    .line 355
    const/high16 v14, 0x44160000    # 600.0f

    .line 356
    const v6, 0x3ecccccd    # 0.4f

    .line 358
    invoke-static {v14, v6}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 361
    move-result-object v21

    .line 364
    invoke-static {v14, v6}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 365
    move-result-object v20

    .line 368
    new-instance v32, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 369
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 371
    move-result-object v17

    .line 374
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 375
    move-result-object v18

    .line 378
    const/16 v19, 0x0

    .line 379
    move-object/from16 v16, v32

    .line 381
    move-object/from16 v22, v13

    .line 383
    move-object/from16 v23, v4

    .line 385
    invoke-direct/range {v16 .. v23}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;-><init>(Ljava/lang/Float;Ljava/lang/Float;FLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/systemui/navigationbar/gestural/Step;Lcom/android/systemui/navigationbar/gestural/Step;)V

    .line 387
    const v6, 0x7f070d32    # @dimen/navigation_edge_entry_background_width '0.0dp'

    .line 390
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 393
    move-result v6

    .line 396
    const v11, 0x7f070d31    # @dimen/navigation_edge_entry_background_height '48.0dp'

    .line 397
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 400
    move-result v39

    .line 403
    const v11, 0x7f070d33    # @dimen/navigation_edge_entry_edge_corners '6.0dp'

    .line 404
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 407
    move-result v40

    .line 410
    const v11, 0x7f070d34    # @dimen/navigation_edge_entry_far_corners '6.0dp'

    .line 411
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 414
    move-result v41

    .line 417
    const v11, 0x3f266666    # 0.65f

    .line 418
    const/high16 v14, 0x43e10000    # 450.0f

    .line 421
    invoke-static {v14, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 423
    move-result-object v42

    .line 426
    const v12, 0x3ee66666    # 0.45f

    .line 427
    invoke-static {v1, v12}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 430
    move-result-object v43

    .line 433
    const/high16 v11, 0x43960000    # 300.0f

    .line 434
    invoke-static {v11, v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 436
    move-result-object v44

    .line 439
    const/high16 v11, 0x43160000    # 150.0f

    .line 440
    invoke-static {v11, v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 442
    move-result-object v45

    .line 445
    new-instance v33, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 446
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 448
    move-result-object v38

    .line 451
    move-object/from16 v37, v33

    .line 452
    invoke-direct/range {v37 .. v45}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;-><init>(Ljava/lang/Float;FFFLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 454
    new-instance v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 457
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 459
    move-result-object v29

    .line 462
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 463
    move-result-object v31

    .line 466
    move-object/from16 v28, v6

    .line 467
    invoke-direct/range {v28 .. v36}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 469
    iput-object v6, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->entryIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 472
    const v6, 0x7f070d23    # @dimen/navigation_edge_active_margin '14.0dp'

    .line 474
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 477
    move-result v6

    .line 480
    const v8, 0x7f070d24    # @dimen/navigation_edge_active_scale '1.0'

    .line 481
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimenFloat(I)F

    .line 484
    move-result v30

    .line 487
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 488
    invoke-static {v8, v10}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 490
    move-result-object v34

    .line 493
    const v8, 0x43a28000    # 325.0f

    .line 494
    const v9, 0x3f0ccccd    # 0.55f

    .line 497
    invoke-static {v8, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 500
    move-result-object v35

    .line 503
    const v11, 0x7f070d20    # @dimen/navigation_edge_active_background_width '48.0dp'

    .line 504
    invoke-virtual {v0, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 507
    move-result v17

    .line 510
    const v8, 0x7f070d1d    # @dimen/navigation_edge_active_arrow_length '6.4dp'

    .line 511
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 514
    move-result v8

    .line 517
    const v9, 0x7f070d1c    # @dimen/navigation_edge_active_arrow_height '7.2dp'

    .line 518
    invoke-virtual {v0, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 521
    move-result v9

    .line 524
    new-instance v32, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 525
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 527
    move-result-object v18

    .line 530
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 531
    move-result-object v19

    .line 534
    const/high16 v20, 0x3f800000    # 1.0f

    .line 535
    move-object/from16 v8, v32

    .line 537
    move-object/from16 v9, v18

    .line 539
    move v2, v10

    .line 541
    move-object/from16 v10, v19

    .line 542
    move v2, v11

    .line 544
    const v1, 0x7f070d40    # @dimen/navigation_edge_pre_threshold_background_width '51.0dp'

    .line 545
    const/high16 v7, 0x42f00000    # 120.0f

    .line 548
    move/from16 v11, v20

    .line 550
    move-object v12, v3

    .line 552
    move-object v13, v15

    .line 553
    const v7, 0x461c4000    # 10000.0f

    .line 554
    move-object/from16 v14, v22

    .line 557
    move-object/from16 v46, v15

    .line 559
    move-object v15, v4

    .line 561
    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;-><init>(Ljava/lang/Float;Ljava/lang/Float;FLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/systemui/navigationbar/gestural/Step;Lcom/android/systemui/navigationbar/gestural/Step;)V

    .line 562
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 565
    move-result v2

    .line 568
    const v8, 0x7f070d1f    # @dimen/navigation_edge_active_background_height '48.0dp'

    .line 569
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 572
    move-result v49

    .line 575
    const v8, 0x7f070d21    # @dimen/navigation_edge_active_edge_corners '24.0dp'

    .line 576
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 579
    move-result v50

    .line 582
    const v8, 0x7f070d22    # @dimen/navigation_edge_active_far_corners '24.0dp'

    .line 583
    invoke-virtual {v0, v8}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 586
    move-result v51

    .line 589
    const v8, 0x44548000    # 850.0f

    .line 590
    const/high16 v9, 0x3f400000    # 0.75f

    .line 593
    invoke-static {v8, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 595
    move-result-object v52

    .line 598
    invoke-static {v7, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 599
    move-result-object v53

    .line 602
    const v7, 0x45228000    # 2600.0f

    .line 603
    const v9, 0x3f5ae148    # 0.855f

    .line 606
    invoke-static {v7, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 609
    move-result-object v55

    .line 612
    const/high16 v7, 0x44960000    # 1200.0f

    .line 613
    const v9, 0x3e99999a    # 0.3f

    .line 615
    invoke-static {v7, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 618
    move-result-object v54

    .line 621
    new-instance v33, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 622
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 624
    move-result-object v48

    .line 627
    move-object/from16 v47, v33

    .line 628
    invoke-direct/range {v47 .. v55}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;-><init>(Ljava/lang/Float;FFFLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 630
    new-instance v2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 633
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 635
    move-result-object v29

    .line 638
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 639
    move-result-object v31

    .line 642
    const/16 v55, 0x20

    .line 643
    const/16 v36, 0x20

    .line 645
    move-object/from16 v28, v2

    .line 647
    invoke-direct/range {v28 .. v36}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    .line 649
    iput-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->activeIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 652
    const v2, 0x7f070d43    # @dimen/navigation_edge_pre_threshold_margin '4.0dp'

    .line 654
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 657
    move-result v2

    .line 660
    const v6, 0x7f070d44    # @dimen/navigation_edge_pre_threshold_scale '0.98'

    .line 661
    invoke-virtual {v0, v6}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimenFloat(I)F

    .line 664
    move-result v49

    .line 667
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 668
    move-result v6

    .line 671
    const/high16 v7, 0x42f00000    # 120.0f

    .line 672
    const v9, 0x3f4ccccd    # 0.8f

    .line 674
    invoke-static {v7, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 677
    move-result-object v54

    .line 680
    const v7, 0x45bb8000    # 6000.0f

    .line 681
    invoke-static {v7, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 684
    move-result-object v53

    .line 687
    const v7, 0x7f070d3d    # @dimen/navigation_edge_pre_threshold_arrow_length '8.0dp'

    .line 688
    invoke-virtual {v0, v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 691
    move-result v7

    .line 694
    const v9, 0x7f070d3c    # @dimen/navigation_edge_pre_threshold_arrow_height '5.6dp'

    .line 695
    invoke-virtual {v0, v9}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 698
    move-result v9

    .line 701
    const/high16 v10, 0x42c80000    # 100.0f

    .line 702
    const v11, 0x3f19999a    # 0.6f

    .line 704
    invoke-static {v10, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 707
    move-result-object v21

    .line 710
    invoke-static {v10, v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 711
    move-result-object v20

    .line 714
    new-instance v51, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 715
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 717
    move-result-object v17

    .line 720
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 721
    move-result-object v18

    .line 724
    const/high16 v19, 0x3f800000    # 1.0f

    .line 725
    move-object/from16 v16, v51

    .line 727
    invoke-direct/range {v16 .. v23}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;-><init>(Ljava/lang/Float;Ljava/lang/Float;FLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/systemui/navigationbar/gestural/Step;Lcom/android/systemui/navigationbar/gestural/Step;)V

    .line 729
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 732
    move-result v1

    .line 735
    const v4, 0x7f070d3f    # @dimen/navigation_edge_pre_threshold_background_height '46.0dp'

    .line 736
    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 739
    move-result v11

    .line 742
    const v4, 0x7f070d41    # @dimen/navigation_edge_pre_threshold_edge_corners '16.0dp'

    .line 743
    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 746
    move-result v12

    .line 749
    const v4, 0x7f070d42    # @dimen/navigation_edge_pre_threshold_far_corners '20.0dp'

    .line 750
    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 753
    move-result v13

    .line 756
    const v4, 0x44228000    # 650.0f

    .line 757
    invoke-static {v4, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 760
    move-result-object v14

    .line 763
    const v4, 0x3ee66666    # 0.45f

    .line 764
    const v7, 0x44bb8000    # 1500.0f

    .line 767
    invoke-static {v7, v4}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 770
    move-result-object v15

    .line 773
    const/high16 v4, 0x43960000    # 300.0f

    .line 774
    invoke-static {v4, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 776
    move-result-object v16

    .line 779
    const/high16 v4, 0x437a0000    # 250.0f

    .line 780
    const/high16 v7, 0x3f000000    # 0.5f

    .line 782
    invoke-static {v4, v7}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 784
    move-result-object v17

    .line 787
    new-instance v52, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 788
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 790
    move-result-object v10

    .line 793
    move-object/from16 v9, v52

    .line 794
    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;-><init>(Ljava/lang/Float;FFFLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 796
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 799
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 801
    move-result-object v48

    .line 804
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 805
    move-result-object v50

    .line 808
    move-object/from16 v47, v1

    .line 809
    invoke-direct/range {v47 .. v55}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    .line 811
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->preThresholdIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 816
    move-result-object v9

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 820
    move-result-object v1

    .line 823
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 824
    move-object/from16 v2, v46

    .line 826
    const/4 v4, 0x0

    .line 828
    invoke-static {v1, v4, v4, v3, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Ljava/lang/Float;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 829
    move-result-object v11

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 833
    move-result-object v1

    .line 836
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 837
    const/high16 v2, 0x44af0000    # 1400.0f

    .line 839
    invoke-static {v2, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 841
    move-result-object v22

    .line 844
    const/16 v17, 0x0

    .line 845
    const/16 v23, 0xe

    .line 847
    move-object/from16 v16, v1

    .line 849
    move-object/from16 v18, v26

    .line 851
    move-object/from16 v19, v27

    .line 853
    move-object/from16 v20, v25

    .line 855
    move-object/from16 v21, v24

    .line 857
    invoke-static/range {v16 .. v23}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 859
    move-result-object v12

    .line 862
    const v1, 0x45b22000    # 5700.0f

    .line 863
    invoke-static {v1, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 866
    move-result-object v13

    .line 869
    const v10, 0x3f5c28f6    # 0.86f

    .line 870
    const/16 v14, 0x60

    .line 873
    invoke-static/range {v9 .. v14}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;FLcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 875
    move-result-object v1

    .line 878
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->committedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 881
    move-result-object v9

    .line 884
    const/4 v10, 0x0

    .line 885
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 886
    move-result-object v1

    .line 889
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 890
    const v2, 0x3eeb851f    # 0.46f

    .line 892
    invoke-static {v8, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 895
    move-result-object v3

    .line 898
    invoke-static {v8, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 899
    move-result-object v2

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 903
    move-result-object v4

    .line 906
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 907
    iget-object v4, v4, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->length:Ljava/lang/Float;

    .line 909
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getActiveIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 911
    move-result-object v6

    .line 914
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->arrowDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 915
    iget-object v6, v6, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->height:Ljava/lang/Float;

    .line 917
    invoke-static {v1, v4, v6, v2, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Ljava/lang/Float;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 919
    move-result-object v11

    .line 922
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getCommittedIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 923
    move-result-object v1

    .line 926
    iget-object v1, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 927
    const/16 v22, 0x0

    .line 929
    const/16 v23, 0x21f

    .line 931
    move-object/from16 v16, v1

    .line 933
    invoke-static/range {v16 .. v23}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 935
    move-result-object v12

    .line 938
    const/4 v13, 0x0

    .line 939
    const/16 v14, 0xe7

    .line 940
    invoke-static/range {v9 .. v14}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;FLcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 942
    move-result-object v1

    .line 945
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->flungIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 948
    move-result-object v6

    .line 951
    const/4 v7, 0x0

    .line 952
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getEntryIndicator()Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 953
    move-result-object v1

    .line 956
    iget-object v8, v1, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->backgroundDimens:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 957
    const/4 v1, 0x0

    .line 959
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 960
    move-result-object v9

    .line 963
    const/4 v10, 0x0

    .line 964
    const/4 v11, 0x0

    .line 965
    const/4 v12, 0x0

    .line 966
    const/high16 v1, 0x43e10000    # 450.0f

    .line 967
    invoke-static {v1, v5}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParamsKt;->createSpring(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 969
    move-result-object v14

    .line 972
    const/16 v15, 0x1ee

    .line 973
    invoke-static/range {v8 .. v15}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Ljava/lang/Float;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 975
    move-result-object v9

    .line 978
    const/16 v11, 0xef

    .line 979
    const/4 v8, 0x0

    .line 981
    invoke-static/range {v6 .. v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;->copy$default(Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;FLcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;I)Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 982
    move-result-object v1

    .line 985
    iput-object v1, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->cancelledIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 986
    const v1, 0x7f070d4b    # @dimen/navigation_edge_stretch_margin '18.0dp'

    .line 988
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 991
    move-result v1

    .line 994
    const v2, 0x7f070d4c    # @dimen/navigation_edge_stretch_scale '1.0'

    .line 995
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimenFloat(I)F

    .line 998
    move-result v5

    .line 1001
    const v2, 0x7f070d4e    # @dimen/navigation_edge_stretched_arrow_length '5.6dp'

    .line 1002
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 1005
    move-result v2

    .line 1008
    const v3, 0x7f070d4d    # @dimen/navigation_edge_stretched_arrow_height '8.0dp'

    .line 1009
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 1012
    move-result v3

    .line 1015
    new-instance v14, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;

    .line 1016
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1018
    move-result-object v7

    .line 1021
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1022
    move-result-object v8

    .line 1025
    const/high16 v9, 0x3f800000    # 1.0f

    .line 1026
    const/4 v11, 0x0

    .line 1028
    move-object v6, v14

    .line 1029
    invoke-direct/range {v6 .. v13}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;-><init>(Ljava/lang/Float;Ljava/lang/Float;FLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Lcom/android/systemui/navigationbar/gestural/Step;Lcom/android/systemui/navigationbar/gestural/Step;)V

    .line 1030
    const v2, 0x7f070d48    # @dimen/navigation_edge_stretch_background_width '60.0dp'

    .line 1033
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 1036
    move-result v2

    .line 1039
    const v3, 0x7f070d47    # @dimen/navigation_edge_stretch_background_height '48.0dp'

    .line 1040
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 1043
    move-result v17

    .line 1046
    const v3, 0x7f070d49    # @dimen/navigation_edge_stretch_edge_corners '24.0dp'

    .line 1047
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 1050
    move-result v18

    .line 1053
    const v3, 0x7f070d4a    # @dimen/navigation_edge_stretch_far_corners '24.0dp'

    .line 1054
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->getDimen(I)F

    .line 1057
    move-result v19

    .line 1060
    new-instance v8, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;

    .line 1061
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1063
    move-result-object v16

    .line 1066
    const/high16 v20, 0x3f800000    # 1.0f

    .line 1067
    const/16 v21, 0x0

    .line 1069
    const/16 v23, 0x0

    .line 1071
    const/16 v24, 0x0

    .line 1073
    const/16 v25, 0x0

    .line 1075
    move-object v15, v8

    .line 1077
    invoke-direct/range {v15 .. v25}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;-><init>(Ljava/lang/Float;FFFFLandroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 1078
    new-instance v2, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 1081
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1083
    move-result-object v4

    .line 1086
    const/4 v6, 0x0

    .line 1087
    const/4 v9, 0x0

    .line 1088
    const/4 v11, 0x4

    .line 1089
    move-object v3, v2

    .line 1090
    move-object v7, v14

    .line 1091
    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;-><init>(Ljava/lang/Float;FLjava/lang/Float;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$ArrowDimens;Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackgroundDimens;Landroidx/dynamicanimation/animation/SpringForce;Landroidx/dynamicanimation/animation/SpringForce;I)V

    .line 1092
    iput-object v2, v0, Lcom/android/systemui/navigationbar/gestural/EdgePanelParams;->fullyStretchedIndicator:Lcom/android/systemui/navigationbar/gestural/EdgePanelParams$BackIndicatorDimens;

    .line 1095
    return-void
    .line 1097
.end method
