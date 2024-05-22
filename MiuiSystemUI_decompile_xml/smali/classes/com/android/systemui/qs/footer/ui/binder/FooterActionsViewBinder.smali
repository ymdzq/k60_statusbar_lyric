.class public final Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static bindButton(Lcom/android/systemui/qs/footer/ui/binder/IconButtonViewHolder;Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/footer/ui/binder/IconButtonViewHolder;->view:Landroid/view/View;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget v1, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->id:I

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, -0x1

    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 10
    const/4 v1, 0x0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    const/4 v2, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v2, v1

    .line 18
    :goto_1
    if-eqz v2, :cond_2

    .line 19
    move v2, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    const/16 v2, 0x8

    .line 23
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    if-nez p1, :cond_3

    .line 28
    return-void

    .line 30
    :cond_3
    const v2, 0x7f040581    # @attr/offStateColor

    .line 31
    iget v3, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->backgroundColor:I

    .line 34
    if-ne v3, v2, :cond_4

    .line 36
    const v2, 0x7f081754    # @drawable/qs_footer_action_circle 'res/drawable/qs_footer_action_circle.xml'

    .line 38
    goto :goto_3

    .line 41
    :cond_4
    const v2, 0x1010435    # @android:attr/colorAccent

    .line 42
    if-ne v3, v2, :cond_6

    .line 45
    const v2, 0x7f081755    # @drawable/qs_footer_action_circle_color 'res/drawable/qs_footer_action_circle_color.xml'

    .line 47
    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    new-instance v2, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;

    .line 53
    invoke-direct {v2, v1, v0, p1}, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;-><init>(ILandroid/view/View;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->icon:Lcom/android/systemui/common/shared/model/Icon;

    .line 61
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/binder/IconButtonViewHolder;->icon:Landroid/widget/ImageView;

    .line 63
    invoke-static {v0, p0}, Lcom/android/systemui/common/ui/binder/IconViewBinder;->bind(Lcom/android/systemui/common/shared/model/Icon;Landroid/widget/ImageView;)V

    .line 65
    iget-object p1, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->iconTint:Ljava/lang/Integer;

    .line 68
    if-eqz p1, :cond_5

    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result p1

    .line 75
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 76
    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 78
    goto :goto_4

    .line 81
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 82
    :goto_4
    return-void

    .line 85
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    .line 88
    const-string v0, "Unsupported icon background resource "

    .line 90
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    throw p0
    .line 109
.end method


# virtual methods
.method public final bind(Landroid/widget/LinearLayout;Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 15

    .line 1
    move-object/from16 v13, p1

    .line 2
    move-object/from16 v2, p2

    .line 4
    const/4 v0, 0x1

    .line 6
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    move-result-object v1

    .line 17
    const v3, 0x7f0d00bf    # @layout/footer_actions_text_button 'res/layout/footer_actions_text_button.xml'

    .line 18
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v1, v3, v13, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    move-result-object v5

    .line 25
    invoke-virtual {v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    new-instance v6, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;

    .line 29
    invoke-direct {v6, v5}, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    invoke-virtual {v1, v3, v13, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    move-result-object v3

    .line 37
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    new-instance v9, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;

    .line 41
    invoke-direct {v9, v3}, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;-><init>(Landroid/view/View;)V

    .line 43
    const v3, 0x7f0d00be    # @layout/footer_actions_number_button 'res/layout/footer_actions_number_button.xml'

    .line 46
    invoke-virtual {v1, v3, v13, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    move-result-object v3

    .line 52
    invoke-virtual {v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    new-instance v8, Lcom/android/systemui/qs/footer/ui/binder/NumberButtonViewHolder;

    .line 56
    invoke-direct {v8, v3}, Lcom/android/systemui/qs/footer/ui/binder/NumberButtonViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    invoke-static {v1, v13, v4}, Lcom/android/systemui/qs/footer/ui/binder/IconButtonViewHolder$Companion;->createAndAdd(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/systemui/qs/footer/ui/binder/IconButtonViewHolder;

    .line 61
    move-result-object v11

    .line 64
    iget-object v3, v2, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->power:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;

    .line 65
    if-nez v3, :cond_0

    .line 67
    move v5, v0

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v5, v4

    .line 71
    :goto_0
    invoke-static {v1, v13, v5}, Lcom/android/systemui/qs/footer/ui/binder/IconButtonViewHolder$Companion;->createAndAdd(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/systemui/qs/footer/ui/binder/IconButtonViewHolder;

    .line 72
    move-result-object v5

    .line 75
    iget-object v7, v2, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->settings:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;

    .line 76
    invoke-static {v5, v7}, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder;->bindButton(Lcom/android/systemui/qs/footer/ui/binder/IconButtonViewHolder;Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;)V

    .line 78
    if-eqz v3, :cond_1

    .line 81
    invoke-static {v1, v13, v0}, Lcom/android/systemui/qs/footer/ui/binder/IconButtonViewHolder$Companion;->createAndAdd(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/android/systemui/qs/footer/ui/binder/IconButtonViewHolder;

    .line 83
    move-result-object v1

    .line 86
    invoke-static {v1, v3}, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder;->bindButton(Lcom/android/systemui/qs/footer/ui/binder/IconButtonViewHolder;Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;)V

    .line 87
    :cond_1
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 90
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 92
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 95
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 97
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 100
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 102
    iget-object v1, v2, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->isVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 105
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 107
    move-result-object v1

    .line 110
    check-cast v1, Ljava/lang/Boolean;

    .line 111
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    move-result v1

    .line 116
    xor-int/2addr v0, v1

    .line 117
    if-eqz v0, :cond_2

    .line 118
    const/4 v4, 0x4

    .line 120
    :cond_2
    invoke-virtual {v13, v4}, Landroid/view/View;->setVisibility(I)V

    .line 121
    new-instance v14, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1;

    .line 124
    const/4 v12, 0x0

    .line 126
    move-object v0, v14

    .line 127
    move-object/from16 v1, p3

    .line 128
    move-object/from16 v2, p2

    .line 130
    move-object/from16 v3, p1

    .line 132
    move-object v4, v5

    .line 134
    move-object v5, p0

    .line 135
    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;Landroid/widget/LinearLayout;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder;Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/qs/footer/ui/binder/NumberButtonViewHolder;Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/qs/footer/ui/binder/IconButtonViewHolder;Lkotlin/coroutines/Continuation;)V

    .line 136
    invoke-static {v13, v14}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 139
    return-void
    .line 142
.end method
