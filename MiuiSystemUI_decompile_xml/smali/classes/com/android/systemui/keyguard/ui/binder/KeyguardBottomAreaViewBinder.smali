.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;->INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder;

    .line 7
    return-void
    .line 9
.end method

.method public static final access$updateButtonAlpha(Landroid/view/View;Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButtonAlpha$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 5
    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButtonAlpha$3;

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-direct {p1, v2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButtonAlpha$3;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 11
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 14
    invoke-direct {v2, v0, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 16
    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButtonAlpha$4;

    .line 19
    invoke-direct {p1, v1, p0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$updateButtonAlpha$4;-><init>(ILandroid/view/View;)V

    .line 21
    invoke-virtual {v2, p1, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 27
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    if-ne p0, p1, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 33
    :goto_0
    return-object p0
    .line 35
.end method

.method public static final bind(Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/ActivityStarter;)Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;
    .locals 20

    .line 1
    move-object/from16 v14, p0

    .line 2
    const v0, 0x7f0a0485    # @id/keyguard_indication_area

    .line 4
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 7
    move-result-object v15

    .line 10
    const v0, 0x7f0a00b5    # @id/ambient_indication_container

    .line 11
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v16

    .line 17
    const v0, 0x7f0a08cc    # @id/start_button

    .line 18
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 24
    move-object v9, v0

    .line 25
    check-cast v9, Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f0a0329    # @id/end_button

    .line 28
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    move-object v10, v0

    .line 35
    check-cast v10, Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f0a06db    # @id/overlay_container

    .line 38
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 41
    move-result-object v3

    .line 44
    const v0, 0x7f0a0486    # @id/keyguard_indication_text

    .line 45
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 48
    move-result-object v0

    .line 51
    move-object v8, v0

    .line 52
    check-cast v8, Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0a0487    # @id/keyguard_indication_text_bottom

    .line 55
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 58
    move-result-object v0

    .line 61
    check-cast v0, Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0a049a    # @id/keyguard_settings_button

    .line 64
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 67
    move-result-object v0

    .line 70
    move-object v11, v0

    .line 71
    check-cast v11, Lcom/android/systemui/animation/view/LaunchableLinearLayout;

    .line 72
    const/4 v0, 0x0

    .line 74
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 75
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 78
    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$1;

    .line 81
    move-object/from16 v13, p1

    .line 83
    invoke-direct {v0, v11, v13}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$1;-><init>(Lcom/android/systemui/animation/view/LaunchableLinearLayout;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;)V

    .line 85
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$ConfigurationBasedDimensions;

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 93
    move-result-object v1

    .line 96
    const v2, 0x7f07027c    # @dimen/default_burn_in_prevention_offset '15.0dp'

    .line 97
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 100
    move-result v1

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 104
    move-result-object v2

    .line 107
    const v4, 0x7f07047f    # @dimen/keyguard_indication_area_padding '82.0dp'

    .line 108
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 111
    move-result v2

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 115
    move-result-object v4

    .line 118
    const v5, 0x10502dd    # @android:dimen/toast_width

    .line 119
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 122
    move-result v4

    .line 125
    new-instance v5, Landroid/util/Size;

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 128
    move-result-object v6

    .line 131
    const v7, 0x7f070437    # @dimen/keyguard_affordance_fixed_width '105.0dp'

    .line 132
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 135
    move-result v6

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 139
    move-result-object v7

    .line 142
    const v12, 0x7f070434    # @dimen/keyguard_affordance_fixed_height '105.0dp'

    .line 143
    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 146
    move-result v7

    .line 149
    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    .line 150
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$ConfigurationBasedDimensions;-><init>(IIILandroid/util/Size;)V

    .line 153
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 156
    move-result-object v17

    .line 159
    new-instance v12, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;

    .line 160
    const/16 v18, 0x0

    .line 162
    move-object v0, v12

    .line 164
    move-object/from16 v1, p3

    .line 165
    move-object/from16 v2, p1

    .line 167
    move-object/from16 v4, p0

    .line 169
    move-object/from16 v5, v16

    .line 171
    move-object v6, v15

    .line 173
    move-object/from16 v7, v17

    .line 174
    move-object/from16 v19, v15

    .line 176
    move-object v15, v12

    .line 178
    move-object/from16 v12, p2

    .line 179
    move-object/from16 v13, v18

    .line 181
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$disposableHandle$1;-><init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/android/systemui/animation/view/LaunchableLinearLayout;Lcom/android/systemui/statusbar/VibratorHelper;Lkotlin/coroutines/Continuation;)V

    .line 183
    invoke-static {v14, v15}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 186
    move-result-object v6

    .line 189
    new-instance v7, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;

    .line 190
    move-object v0, v7

    .line 192
    move-object/from16 v1, v19

    .line 193
    move-object/from16 v2, v16

    .line 195
    move-object/from16 v3, v17

    .line 197
    move-object/from16 v5, p1

    .line 199
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;-><init>(Landroid/view/View;Landroid/view/View;Lkotlinx/coroutines/flow/StateFlowImpl;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;)V

    .line 201
    return-object v7
    .line 204
.end method
