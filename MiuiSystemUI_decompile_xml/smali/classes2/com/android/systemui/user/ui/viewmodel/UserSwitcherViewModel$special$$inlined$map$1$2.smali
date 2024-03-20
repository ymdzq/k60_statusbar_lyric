.class public final Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p2, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    goto/16 :goto_5

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 42
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0

    .line 49
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    check-cast p1, Ljava/util/List;

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    .line 55
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 57
    move-result v2

    .line 60
    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object p1

    .line 67
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v2

    .line 71
    if-eqz v2, :cond_6

    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 77
    check-cast v2, Lcom/android/systemui/user/shared/model/UserModel;

    .line 78
    iget-object v4, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    .line 80
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    new-instance v12, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;

    .line 85
    iget v6, v2, Lcom/android/systemui/user/shared/model/UserModel;->id:I

    .line 87
    iget-boolean v5, v2, Lcom/android/systemui/user/shared/model/UserModel;->isGuest:Z

    .line 89
    if-eqz v5, :cond_3

    .line 91
    iget-boolean v5, v2, Lcom/android/systemui/user/shared/model/UserModel;->isSelected:Z

    .line 93
    if-eqz v5, :cond_3

    .line 95
    new-instance v5, Lcom/android/systemui/common/shared/model/Text$Resource;

    .line 97
    const v7, 0x7f1304cb    # @string/guest_exit_quick_settings_button 'Exit guest'

    .line 99
    invoke-direct {v5, v7}, Lcom/android/systemui/common/shared/model/Text$Resource;-><init>(I)V

    .line 102
    goto :goto_2

    .line 105
    :cond_3
    iget-object v5, v2, Lcom/android/systemui/user/shared/model/UserModel;->name:Lcom/android/systemui/common/shared/model/Text;

    .line 106
    :goto_2
    move-object v7, v5

    .line 108
    new-instance v8, Lcom/android/systemui/common/ui/drawable/CircularDrawable;

    .line 109
    iget-object v5, v2, Lcom/android/systemui/user/shared/model/UserModel;->image:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-direct {v8, v5}, Lcom/android/systemui/common/ui/drawable/CircularDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-boolean v9, v2, Lcom/android/systemui/user/shared/model/UserModel;->isSelected:Z

    .line 116
    iget-boolean v5, v2, Lcom/android/systemui/user/shared/model/UserModel;->isSelectable:Z

    .line 118
    if-eqz v5, :cond_4

    .line 120
    const/high16 v10, 0x3f800000    # 1.0f

    .line 122
    goto :goto_3

    .line 124
    :cond_4
    const v10, 0x3ec28f5c    # 0.38f

    .line 125
    :goto_3
    if-nez v5, :cond_5

    .line 128
    const/4 v2, 0x0

    .line 130
    move-object v11, v2

    .line 131
    goto :goto_4

    .line 132
    :cond_5
    new-instance v5, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$createOnSelectedCallback$1;

    .line 133
    invoke-direct {v5, v4, v2}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$createOnSelectedCallback$1;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lcom/android/systemui/user/shared/model/UserModel;)V

    .line 135
    move-object v11, v5

    .line 138
    :goto_4
    move-object v5, v12

    .line 139
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;-><init>(ILcom/android/systemui/common/shared/model/Text;Lcom/android/systemui/common/ui/drawable/CircularDrawable;ZFLkotlin/jvm/functions/Function0;)V

    .line 140
    invoke-virtual {p2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    goto :goto_1

    .line 146
    :cond_6
    iput v3, v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2$1;->label:I

    .line 147
    iget-object p0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 149
    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 151
    move-result-object p0

    .line 154
    if-ne p0, v1, :cond_7

    .line 155
    return-object v1

    .line 157
    :cond_7
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 158
    return-object p0
    .line 160
.end method
