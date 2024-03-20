.class public final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

.field public final synthetic $gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

.field public final synthetic $layoutInflater:Landroid/view/LayoutInflater;

.field public final synthetic $view:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/UserSwitcherRootView;Landroidx/constraintlayout/helper/widget/Flow;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$layoutInflater:Landroid/view/LayoutInflater;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$view:Landroid/view/ViewGroup;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

    .line 4
    invoke-static {p2}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;

    .line 6
    move-result-object v0

    .line 9
    sget-object v1, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1$viewPool$1;->INSTANCE:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1$viewPool$1;

    .line 10
    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 12
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    iget-object v5, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    .line 32
    if-eqz v2, :cond_4

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 39
    check-cast v2, Landroid/view/View;

    .line 40
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 42
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 48
    move-result v2

    .line 51
    const/4 v6, -0x1

    .line 52
    if-ne v2, v6, :cond_0

    .line 53
    goto :goto_0

    .line 55
    :cond_0
    iput-object v3, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 56
    move v3, v4

    .line 58
    :goto_1
    iget v7, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 59
    if-ge v3, v7, :cond_3

    .line 61
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 63
    aget v7, v7, v3

    .line 65
    if-ne v7, v2, :cond_2

    .line 67
    :goto_2
    iget v2, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 69
    add-int/2addr v2, v6

    .line 71
    if-ge v3, v2, :cond_1

    .line 72
    iget-object v2, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 74
    add-int/lit8 v7, v3, 0x1

    .line 76
    aget v8, v2, v7

    .line 78
    aput v8, v2, v3

    .line 80
    move v3, v7

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    iget-object v3, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    .line 84
    aput v4, v3, v2

    .line 86
    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    .line 88
    goto :goto_3

    .line 90
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_1

    .line 93
    :cond_3
    :goto_3
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 94
    goto :goto_0

    .line 97
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object p1

    .line 101
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v1

    .line 105
    if-eqz v1, :cond_b

    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v1

    .line 111
    check-cast v1, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 114
    move-result v2

    .line 117
    xor-int/lit8 v2, v2, 0x1

    .line 118
    if-eqz v2, :cond_5

    .line 120
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 122
    move-result-object v2

    .line 125
    check-cast v2, Landroid/view/View;

    .line 126
    goto :goto_5

    .line 128
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$view:Landroid/view/ViewGroup;

    .line 129
    const v6, 0x7f0d03dd    # @layout/user_switcher_fullscreen_item 'res/layout/user_switcher_fullscreen_item.xml'

    .line 131
    iget-object v7, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$5$1;->$layoutInflater:Landroid/view/LayoutInflater;

    .line 134
    invoke-virtual {v7, v6, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 136
    move-result-object v2

    .line 139
    const-string/jumbo v6, "user_view"

    .line 140
    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 143
    :goto_5
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 146
    move-result v6

    .line 149
    invoke-virtual {v2, v6}, Landroid/view/View;->setId(I)V

    .line 150
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 153
    invoke-virtual {v5, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->addView(Landroid/view/View;)V

    .line 156
    const v6, 0x7f0a0a50    # @id/user_switcher_text

    .line 159
    invoke-virtual {v2, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 162
    move-result-object v6

    .line 165
    check-cast v6, Landroid/widget/TextView;

    .line 166
    iget-object v7, v1, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->name:Lcom/android/systemui/common/shared/model/Text;

    .line 168
    instance-of v8, v7, Lcom/android/systemui/common/shared/model/Text$Resource;

    .line 170
    if-eqz v8, :cond_6

    .line 172
    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 174
    move-result-object v8

    .line 177
    check-cast v7, Lcom/android/systemui/common/shared/model/Text$Resource;

    .line 178
    iget v7, v7, Lcom/android/systemui/common/shared/model/Text$Resource;->res:I

    .line 180
    invoke-virtual {v8, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    move-result-object v7

    .line 185
    goto :goto_6

    .line 186
    :cond_6
    instance-of v8, v7, Lcom/android/systemui/common/shared/model/Text$Loaded;

    .line 187
    if-eqz v8, :cond_a

    .line 189
    check-cast v7, Lcom/android/systemui/common/shared/model/Text$Loaded;

    .line 191
    iget-object v7, v7, Lcom/android/systemui/common/shared/model/Text$Loaded;->text:Ljava/lang/String;

    .line 193
    :goto_6
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    const v6, 0x7f0a0a4c    # @id/user_switcher_icon

    .line 198
    invoke-virtual {v2, v6}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 201
    move-result-object v6

    .line 204
    check-cast v6, Landroid/widget/ImageView;

    .line 205
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 207
    move-result-object v7

    .line 210
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 211
    move-result-object v8

    .line 214
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 215
    move-result-object v9

    .line 218
    sget-object v10, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 219
    const v10, 0x7f08198e    # @drawable/user_switcher_icon_large 'res/drawable/user_switcher_icon_large.xml'

    .line 221
    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 224
    move-result-object v8

    .line 227
    if-eqz v8, :cond_9

    .line 228
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 230
    move-result-object v8

    .line 233
    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    .line 234
    iget-boolean v9, v1, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->isSelectionMarkerVisible:Z

    .line 236
    if-eqz v9, :cond_7

    .line 238
    const v9, 0x7f0a07c2    # @id/ring

    .line 240
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    .line 243
    move-result-object v9

    .line 246
    check-cast v9, Landroid/graphics/drawable/GradientDrawable;

    .line 247
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 249
    move-result-object v10

    .line 252
    const v11, 0x7f071235    # @dimen/user_switcher_icon_selected_width '8.0dp'

    .line 253
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 256
    move-result v10

    .line 259
    const v11, 0x1120026    # @android:^attr-private/colorAccentPrimary

    .line 260
    invoke-static {v7, v11, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 263
    move-result v7

    .line 266
    invoke-virtual {v9, v10, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 267
    :cond_7
    const v7, 0x7f0a0a3e    # @id/user_avatar

    .line 270
    iget-object v9, v1, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->image:Landroid/graphics/drawable/Drawable;

    .line 273
    invoke-virtual {v8, v7, v9}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 275
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget v6, v1, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->alpha:F

    .line 281
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    .line 283
    iget-object v6, v1, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->onClicked:Lkotlin/jvm/functions/Function0;

    .line 286
    if-eqz v6, :cond_8

    .line 288
    new-instance v6, Lcom/android/systemui/user/ui/binder/UserViewBinder$bind$1;

    .line 290
    invoke-direct {v6, v1}, Lcom/android/systemui/user/ui/binder/UserViewBinder$bind$1;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserViewModel;)V

    .line 292
    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    goto/16 :goto_4

    .line 298
    :cond_8
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    goto/16 :goto_4

    .line 303
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 305
    const-string p1, "Required value was null."

    .line 307
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 309
    move-result-object p1

    .line 312
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 313
    throw p0

    .line 316
    :cond_a
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 317
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 319
    throw p0

    .line 322
    :cond_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 323
    return-object p0
    .line 325
.end method
