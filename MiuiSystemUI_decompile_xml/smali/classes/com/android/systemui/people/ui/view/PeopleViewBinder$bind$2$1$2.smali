.class public final Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $view:Ljava/lang/Object;

.field public final synthetic $viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2;->$view:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2;->$viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2;->$viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    iput-object p2, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2;->$view:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    iget v0, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2;->$r8$classId:I

    .line 4
    iget-object v1, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2;->$view:Ljava/lang/Object;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2;->$viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 10
    goto/16 :goto_2

    .line 13
    :pswitch_0
    check-cast p1, Lkotlin/Pair;

    .line 15
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/List;

    .line 21
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    check-cast p1, Ljava/util/List;

    .line 27
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    xor-int/2addr v2, v3

    .line 34
    const/4 v4, 0x0

    .line 35
    const-string v5, " children, it should have maximum 1"

    .line 36
    const-string/jumbo v6, "view has "

    .line 38
    if-nez v2, :cond_4

    .line 41
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 43
    move-result v2

    .line 46
    xor-int/2addr v2, v3

    .line 47
    if-eqz v2, :cond_0

    .line 48
    goto/16 :goto_0

    .line 50
    :cond_0
    sget-object p1, Lcom/android/systemui/people/ui/view/PeopleViewBinder;->ViewOutlineProvider:Lcom/android/systemui/people/ui/view/PeopleViewBinder$ViewOutlineProvider$1;

    .line 52
    check-cast v1, Landroid/view/ViewGroup;

    .line 54
    new-instance p1, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2$2;

    .line 56
    invoke-direct {p1, p0}, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2$2;-><init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;)V

    .line 58
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 61
    move-result p0

    .line 64
    if-gt p0, v3, :cond_3

    .line 65
    const p0, 0x7f0a09bc    # @id/top_level_no_conversations

    .line 67
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object p0

    .line 73
    if-eqz p0, :cond_1

    .line 74
    goto/16 :goto_1

    .line 76
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 78
    move-result p0

    .line 81
    if-ne p0, v3, :cond_2

    .line 82
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 84
    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 87
    move-result-object p0

    .line 90
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 91
    move-result-object v0

    .line 94
    const v2, 0x7f0d02ae    # @layout/people_space_activity_no_conversations 'res/layout/people_space_activity_no_conversations.xml'

    .line 95
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 98
    move-result-object v0

    .line 101
    const v1, 0x7f0a03b1    # @id/got_it_button

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v1

    .line 108
    new-instance v2, Lcom/android/systemui/people/ui/view/PeopleViewBinder$setNoConversationsContent$1;

    .line 109
    invoke-direct {v2, p1}, Lcom/android/systemui/people/ui/view/PeopleViewBinder$setNoConversationsContent$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const/high16 p1, 0x1020000    # @android:id/background

    .line 117
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object p1

    .line 122
    check-cast p1, Landroid/widget/LinearLayout;

    .line 123
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 125
    move-result-object p1

    .line 128
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 131
    move-result-object p0

    .line 134
    const v0, 0x112002f    # @android:^attr-private/colorSurface

    .line 135
    filled-new-array {v0}, [I

    .line 138
    move-result-object v0

    .line 141
    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 142
    move-result-object p0

    .line 145
    const/4 v0, -0x1

    .line 146
    invoke-virtual {p0, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 147
    move-result v0

    .line 150
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 151
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    goto :goto_1

    .line 157
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 158
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 160
    move-result p1

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 179
    move-result-object p1

    .line 182
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    throw p0

    .line 186
    :cond_4
    :goto_0
    sget-object v2, Lcom/android/systemui/people/ui/view/PeopleViewBinder;->ViewOutlineProvider:Lcom/android/systemui/people/ui/view/PeopleViewBinder$ViewOutlineProvider$1;

    .line 187
    check-cast v1, Landroid/view/ViewGroup;

    .line 189
    new-instance v2, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2$1;

    .line 191
    invoke-direct {v2, p0}, Lcom/android/systemui/people/ui/view/PeopleViewBinder$bind$2$1$2$1;-><init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;)V

    .line 193
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 196
    move-result p0

    .line 199
    if-gt p0, v3, :cond_7

    .line 200
    const p0, 0x7f0a09bd    # @id/top_level_with_conversations

    .line 202
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 205
    move-result-object v5

    .line 208
    if-nez v5, :cond_6

    .line 209
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 211
    move-result v5

    .line 214
    if-ne v5, v3, :cond_5

    .line 215
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 217
    :cond_5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 220
    move-result-object v3

    .line 223
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 224
    move-result-object v3

    .line 227
    const v4, 0x7f0d02af    # @layout/people_space_activity_with_conversations 'res/layout/people_space_activity_with_conversations.xml'

    .line 228
    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 231
    :cond_6
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 234
    move-result-object p0

    .line 237
    const v1, 0x7f0a072b    # @id/priority

    .line 238
    const v3, 0x7f0a0730    # @id/priority_tiles

    .line 241
    invoke-static {p0, v1, v3, v0, v2}, Lcom/android/systemui/people/ui/view/PeopleViewBinder;->setTileViews(Landroid/view/View;IILjava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 244
    const v0, 0x7f0a077d    # @id/recent

    .line 247
    const v1, 0x7f0a0780    # @id/recent_tiles

    .line 250
    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/systemui/people/ui/view/PeopleViewBinder;->setTileViews(Landroid/view/View;IILjava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 253
    :goto_1
    return-object p2

    .line 256
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 257
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 259
    move-result p1

    .line 262
    new-instance p2, Ljava/lang/StringBuilder;

    .line 263
    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 278
    move-result-object p1

    .line 281
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 282
    throw p0

    .line 285
    :goto_2
    check-cast p1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result;

    .line 286
    if-eqz p1, :cond_8

    .line 288
    iget-object p0, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->_result:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 290
    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 293
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 296
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_8
    return-object p2

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 302
.end method
