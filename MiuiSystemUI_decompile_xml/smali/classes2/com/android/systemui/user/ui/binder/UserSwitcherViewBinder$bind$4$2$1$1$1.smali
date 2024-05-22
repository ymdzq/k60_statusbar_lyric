.class public final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $addButton:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$1$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$1$1;->$addButton:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    iget v0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$1$1;->$r8$classId:I

    .line 4
    const/4 v1, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2$1$1$1;->$addButton:Ljava/lang/Object;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 9
    goto/16 :goto_5

    .line 12
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 14
    check-cast p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v2

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v3

    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 41
    move-object v6, v3

    .line 42
    check-cast v6, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;

    .line 43
    iget-wide v6, v6, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;->viewKey:J

    .line 45
    int-to-long v8, v5

    .line 47
    cmp-long v5, v6, v8

    .line 48
    if-eqz v5, :cond_1

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    move v4, v1

    .line 53
    :goto_1
    if-eqz v4, :cond_0

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_0

    .line 59
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object p1

    .line 68
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v3

    .line 72
    if-eqz v3, :cond_5

    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 78
    move-object v6, v3

    .line 79
    check-cast v6, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;

    .line 80
    iget-wide v6, v6, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;->viewKey:J

    .line 82
    int-to-long v8, v5

    .line 84
    cmp-long v6, v6, v8

    .line 85
    if-nez v6, :cond_4

    .line 87
    move v6, v4

    .line 89
    goto :goto_3

    .line 90
    :cond_4
    move v6, v1

    .line 91
    :goto_3
    if-eqz v6, :cond_3

    .line 92
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_2

    .line 97
    :cond_5
    filled-new-array {v0, v2}, [Ljava/util/List;

    .line 98
    move-result-object p1

    .line 101
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 102
    move-result-object p1

    .line 105
    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;->sections:Ljava/util/List;

    .line 106
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 108
    return-object p2

    .line 111
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 112
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    move-result p1

    .line 117
    check-cast p0, Landroid/view/View;

    .line 118
    if-eqz p1, :cond_6

    .line 120
    goto :goto_4

    .line 122
    :cond_6
    const/16 v1, 0x8

    .line 123
    :goto_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    return-object p2

    .line 128
    :goto_5
    check-cast p1, Ljava/lang/Number;

    .line 129
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 131
    move-result p1

    .line 134
    check-cast p0, Landroidx/constraintlayout/helper/widget/Flow;

    .line 135
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/helper/widget/Flow;->setMaxElementsWrap(I)V

    .line 137
    return-object p2

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 142
.end method
