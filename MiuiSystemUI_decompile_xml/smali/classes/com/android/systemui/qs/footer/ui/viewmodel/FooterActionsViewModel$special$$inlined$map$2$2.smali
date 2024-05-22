.class public final Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2;->this$0:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p2, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2$1;-><init>(Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    goto :goto_2

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 48
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    check-cast p1, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel;

    .line 52
    sget-object p2, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Disabled;->INSTANCE:Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Disabled;

    .line 54
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result p2

    .line 59
    const/4 v2, 0x0

    .line 60
    if-eqz p2, :cond_3

    .line 61
    goto :goto_1

    .line 63
    :cond_3
    instance-of p2, p1, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;

    .line 64
    if-eqz p2, :cond_7

    .line 66
    check-cast p1, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;

    .line 68
    iget-object p2, p1, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->currentUserImage:Landroid/graphics/drawable/Drawable;

    .line 70
    if-nez p2, :cond_4

    .line 72
    const-string p1, "FooterActionsViewModel"

    .line 74
    const-string p2, "Skipped the addition of user switcher button because currentUserImage is missing"

    .line 76
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    goto :goto_1

    .line 81
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2;->this$0:Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;

    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    iget-object v4, p1, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->currentUserImage:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 89
    new-instance v11, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;

    .line 92
    const v6, 0x7f0a0670    # @id/multi_user_switch

    .line 94
    new-instance v7, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    .line 97
    new-instance v5, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;

    .line 99
    iget-object p1, p1, Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel$Enabled;->currentUserName:Ljava/lang/String;

    .line 101
    if-eqz p1, :cond_5

    .line 103
    iget-object v2, p2, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;->context:Landroid/view/ContextThemeWrapper;

    .line 105
    const v8, 0x7f1300e4    # @string/accessibility_quick_settings_user 'Signed in as %s'

    .line 107
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 110
    move-result-object p1

    .line 113
    invoke-virtual {v2, v8, p1}, Landroid/view/ContextThemeWrapper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 117
    :cond_5
    invoke-direct {v5, v2}, Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-direct {v7, v4, v5}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 121
    const/4 v8, 0x0

    .line 124
    const v9, 0x7f040581    # @attr/offStateColor

    .line 125
    new-instance v10, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$userSwitcherButton$1;

    .line 128
    invoke-direct {v10, p2}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$userSwitcherButton$1;-><init>(Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel;)V

    .line 130
    move-object v5, v11

    .line 133
    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;-><init>(ILcom/android/systemui/common/shared/model/Icon;Ljava/lang/Integer;ILkotlin/jvm/functions/Function1;)V

    .line 134
    move-object v2, v11

    .line 137
    :goto_1
    iput v3, v0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2$1;->label:I

    .line 138
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 140
    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 142
    move-result-object p0

    .line 145
    if-ne p0, v1, :cond_6

    .line 146
    return-object v1

    .line 148
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 149
    return-object p0

    .line 151
    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 152
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 154
    throw p0
    .line 157
.end method
