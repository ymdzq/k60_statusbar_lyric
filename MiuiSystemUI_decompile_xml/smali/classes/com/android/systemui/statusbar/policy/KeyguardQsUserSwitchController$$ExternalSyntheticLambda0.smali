.class public final synthetic Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 4
    const/4 v0, 0x1

    .line 6
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    goto/16 :goto_2

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    .line 15
    iget-boolean p1, p1, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    .line 17
    if-eqz p1, :cond_1

    .line 19
    goto/16 :goto_2

    .line 21
    :cond_1
    sget-object p1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_SWITCH_USER_TAP:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 25
    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 27
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarViewWithBackground:Landroid/view/View;

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p1

    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserAvatarViewWithBackground:Landroid/view/View;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    .line 38
    iget-object v2, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->dialogFactory:Lkotlin/jvm/functions/Function1;

    .line 40
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 45
    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 51
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 54
    const v0, 0x7f130955    # @string/qs_user_switch_dialog_title 'Select user'

    .line 57
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 60
    new-instance v0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$1;

    .line 63
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$1;-><init>(Lcom/android/systemui/qs/user/UserSwitchDialogController;)V

    .line 65
    const v2, 0x7f1309aa    # @string/quick_settings_done 'Done'

    .line 68
    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 71
    new-instance v0, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$2;

    .line 74
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/user/UserSwitchDialogController$showDialog$1$2;-><init>(Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V

    .line 76
    const/4 v2, -0x3

    .line 79
    const v3, 0x7f1309cb    # @string/quick_settings_more_user_settings 'Manage users'

    .line 80
    const/4 v4, 0x0

    .line 83
    invoke-virtual {p1, v2, v3, v0, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 84
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 91
    move-result-object v0

    .line 94
    const v2, 0x7f0d0310    # @layout/qs_user_dialog_content 'res/layout/qs_user_dialog_content.xml'

    .line 95
    const/4 v3, 0x0

    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 99
    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 103
    iget-object v2, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->userDetailViewAdapterProvider:Ljavax/inject/Provider;

    .line 106
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 111
    check-cast v2, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;

    .line 112
    const v5, 0x7f0a03b8    # @id/grid

    .line 114
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    move-result-object v0

    .line 120
    check-cast v0, Landroid/view/ViewGroup;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    new-instance v5, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;

    .line 126
    invoke-direct {v5, v0, v2}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;-><init>(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    .line 128
    new-instance v0, Lcom/android/systemui/animation/DialogCuj;

    .line 131
    const/16 v5, 0x3a

    .line 133
    const-string/jumbo v6, "switch_user"

    .line 135
    invoke-direct {v0, v5, v6}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    .line 138
    instance-of v5, v1, Lcom/android/systemui/animation/LaunchableView;

    .line 141
    if-eqz v5, :cond_4

    .line 143
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 145
    move-result-object v5

    .line 148
    instance-of v5, v5, Landroid/view/ViewGroup;

    .line 149
    if-nez v5, :cond_2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    const-string v5, "Skipping animation as view "

    .line 155
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, " is not attached to a ViewGroup"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 171
    new-instance v1, Ljava/lang/Exception;

    .line 172
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 174
    const-string v5, "DialogLaunchAnimator"

    .line 177
    invoke-static {v5, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    goto :goto_0

    .line 182
    :cond_2
    new-instance v3, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 183
    invoke-direct {v3, v1, v0}, Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;-><init>(Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 188
    if-eqz v3, :cond_3

    .line 190
    sget-object v1, Lcom/android/systemui/animation/DialogLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 192
    invoke-virtual {v0, p1, v3, v4}, Lcom/android/systemui/animation/DialogLaunchAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;Z)V

    .line 194
    goto :goto_1

    .line 197
    :cond_3
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 198
    :goto_1
    sget-object v1, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_DETAIL_OPEN:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    .line 201
    iget-object p0, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 203
    invoke-interface {p0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 205
    new-instance p0, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;

    .line 208
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;-><init>(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogLaunchAnimator;)V

    .line 210
    iput-object p0, v2, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mDialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    .line 213
    :goto_2
    return-void

    .line 215
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 216
    const-string p1, "A DialogLaunchAnimator.Controller was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    .line 218
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 220
    throw p0
    .line 223
.end method
