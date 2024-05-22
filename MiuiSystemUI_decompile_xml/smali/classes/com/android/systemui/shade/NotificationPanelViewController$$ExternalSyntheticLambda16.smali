.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;->f$1:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;->f$1:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 10
    check-cast p1, Ljava/lang/Float;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 16
    move-result v1

    .line 19
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 20
    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    .line 22
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardStatusView;->setChildrenTranslationY(FZ)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 28
    move-result p1

    .line 31
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 34
    return-void

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 38
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda16;->f$1:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 40
    check-cast p1, Ljava/lang/Float;

    .line 42
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 46
    move-result v2

    .line 49
    iget-object v3, v1, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 50
    iget-boolean v3, v3, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 52
    if-nez v3, :cond_0

    .line 54
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 56
    check-cast v1, Lcom/android/keyguard/KeyguardStatusView;

    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->setAlpha(F)V

    .line 60
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 63
    move-result v1

    .line 66
    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mAlpha:F

    .line 67
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 69
    if-eqz v2, :cond_1

    .line 71
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMagazineAlpha:F

    .line 73
    mul-float/2addr p0, v1

    .line 75
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 76
    :cond_1
    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 81
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 84
    move-result p0

    .line 87
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    .line 88
    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 90
    check-cast v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 92
    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_bottomAreaAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 94
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 96
    move-result-object p0

    .line 99
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 103
    move-result p0

    .line 106
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    .line 107
    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 109
    check-cast v1, Lcom/android/keyguard/LockIconView;

    .line 111
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 113
    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 116
    if-eqz p0, :cond_3

    .line 118
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 120
    move-result v1

    .line 123
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 124
    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 126
    if-nez v2, :cond_3

    .line 128
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 130
    check-cast p0, Landroid/widget/FrameLayout;

    .line 132
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 134
    :cond_3
    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 137
    if-eqz p0, :cond_4

    .line 139
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 141
    move-result p1

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 145
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 147
    if-nez v0, :cond_4

    .line 149
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 151
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    .line 153
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 155
    :cond_4
    return-void

    .line 158
    nop

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 160
.end method
