.class public final Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$2$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $previousSecurity:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $r8$classId:I

.field public final synthetic $securityHolder:Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;

.field public final synthetic $view:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder;Ljava/lang/Object;Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$2$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$2$1$1;->$previousSecurity:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$2$1$1;->this$0:Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$2$1$1;->$view:Ljava/lang/Object;

    .line 8
    iput-object p4, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$2$1$1;->$securityHolder:Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    iget v0, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$2$1$1;->$r8$classId:I

    .line 4
    const/16 v1, 0x8

    .line 6
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v4, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$2$1$1;->$securityHolder:Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;

    .line 10
    iget-object v5, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$2$1$1;->this$0:Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder;

    .line 12
    iget-object v6, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$2$1$1;->$view:Ljava/lang/Object;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bind$1$2$1$1;->$previousSecurity:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 18
    goto :goto_4

    .line 21
    :pswitch_0
    check-cast p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsSecurityButtonViewModel;

    .line 22
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 24
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 29
    if-nez v0, :cond_4

    .line 30
    check-cast v6, Landroid/widget/LinearLayout;

    .line 32
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    iget-object v5, v4, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;->view:Landroid/view/View;

    .line 41
    if-eqz p1, :cond_0

    .line 43
    move v6, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move v6, v2

    .line 47
    :goto_0
    if-eqz v6, :cond_1

    .line 48
    move v6, v2

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v6, v1

    .line 52
    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 53
    if-nez p1, :cond_2

    .line 56
    goto :goto_3

    .line 58
    :cond_2
    iget-object v6, v4, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;->chevron:Landroid/widget/ImageView;

    .line 59
    iget-object v7, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsSecurityButtonViewModel;->onClick:Lkotlin/jvm/functions/Function2;

    .line 61
    if-eqz v7, :cond_3

    .line 63
    invoke-virtual {v5, v3}, Landroid/view/View;->setClickable(Z)V

    .line 65
    new-instance v3, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindSecurity$1;

    .line 68
    invoke-direct {v3, v7, v0, v5}, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindSecurity$1;-><init>(Lkotlin/jvm/functions/Function2;Landroid/content/Context;Landroid/view/View;)V

    .line 70
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {v5, v2}, Landroid/view/View;->setClickable(Z)V

    .line 80
    const/4 v0, 0x0

    .line 83
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :goto_2
    iget-object v0, v4, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;->text:Landroid/widget/TextView;

    .line 90
    iget-object v2, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsSecurityButtonViewModel;->text:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, v4, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;->newDot:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, v4, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;->icon:Landroid/widget/ImageView;

    .line 102
    iget-object v1, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsSecurityButtonViewModel;->icon:Lcom/android/systemui/common/shared/model/Icon;

    .line 104
    invoke-static {v1, v0}, Lcom/android/systemui/common/ui/binder/IconViewBinder;->bind(Lcom/android/systemui/common/shared/model/Icon;Landroid/widget/ImageView;)V

    .line 106
    :goto_3
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 109
    :cond_4
    return-object p2

    .line 111
    :goto_4
    check-cast p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsForegroundServicesButtonViewModel;

    .line 112
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 114
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    move-result v0

    .line 119
    if-nez v0, :cond_9

    .line 120
    check-cast v6, Lcom/android/systemui/qs/footer/ui/binder/NumberButtonViewHolder;

    .line 122
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    iget-object v0, v6, Lcom/android/systemui/qs/footer/ui/binder/NumberButtonViewHolder;->view:Landroid/view/View;

    .line 127
    iget-object v5, v4, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;->view:Landroid/view/View;

    .line 129
    if-nez p1, :cond_5

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    goto :goto_5

    .line 139
    :cond_5
    iget-boolean v7, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsForegroundServicesButtonViewModel;->displayText:Z

    .line 140
    iget-boolean v8, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsForegroundServicesButtonViewModel;->hasNewChanges:Z

    .line 142
    iget-object v9, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsForegroundServicesButtonViewModel;->text:Ljava/lang/String;

    .line 144
    if-eqz v7, :cond_7

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    new-instance v0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;

    .line 154
    invoke-direct {v0, v3, v5, p1}, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;-><init>(ILandroid/view/View;Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, v4, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;->text:Landroid/widget/TextView;

    .line 162
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    if-eqz v8, :cond_6

    .line 167
    move v1, v2

    .line 169
    :cond_6
    iget-object v0, v4, Lcom/android/systemui/qs/footer/ui/binder/TextButtonViewHolder;->newDot:Landroid/widget/ImageView;

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    goto :goto_5

    .line 175
    :cond_7
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    new-instance v3, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;

    .line 182
    const/4 v4, 0x2

    .line 184
    invoke-direct {v3, v4, v0, p1}, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindButton$1;-><init>(ILandroid/view/View;Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget v0, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsForegroundServicesButtonViewModel;->foregroundServicesCount:I

    .line 191
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 193
    move-result-object v0

    .line 196
    iget-object v3, v6, Lcom/android/systemui/qs/footer/ui/binder/NumberButtonViewHolder;->number:Landroid/widget/TextView;

    .line 197
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 202
    if-eqz v8, :cond_8

    .line 205
    move v1, v2

    .line 207
    :cond_8
    iget-object v0, v6, Lcom/android/systemui/qs/footer/ui/binder/NumberButtonViewHolder;->newDot:Landroid/widget/ImageView;

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :goto_5
    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 213
    :cond_9
    return-object p2

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 216
.end method
