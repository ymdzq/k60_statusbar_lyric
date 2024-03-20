.class public final Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$1$1$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $view:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$1$1$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$1$1$1$1;->$view:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    iget v0, p0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$1$1$1$1;->$r8$classId:I

    .line 4
    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder$bind$1$1$1$1;->$view:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_2

    .line 11
    :pswitch_0
    check-cast p1, Lcom/android/systemui/common/shared/model/Text;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;->getText()Landroid/widget/TextView;

    .line 14
    move-result-object p0

    .line 17
    instance-of v0, p1, Lcom/android/systemui/common/shared/model/Text$Resource;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 25
    check-cast p1, Lcom/android/systemui/common/shared/model/Text$Resource;

    .line 26
    iget p1, p1, Lcom/android/systemui/common/shared/model/Text$Resource;->res:I

    .line 28
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/common/shared/model/Text$Loaded;

    .line 35
    if-eqz v0, :cond_1

    .line 37
    check-cast p1, Lcom/android/systemui/common/shared/model/Text$Loaded;

    .line 39
    iget-object p1, p1, Lcom/android/systemui/common/shared/model/Text$Loaded;->text:Ljava/lang/String;

    .line 41
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-object p2

    .line 46
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 47
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 49
    throw p0

    .line 52
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    const/4 p1, 0x0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    const/16 p1, 0x8

    .line 63
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/view/LaunchableLinearLayout;->setVisibility(I)V

    .line 65
    return-object p2

    .line 68
    :goto_2
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;->getAvatar()Landroid/widget/ImageView;

    .line 71
    move-result-object p0

    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-object p2

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 80
.end method
