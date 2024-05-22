.class public final Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserId:I

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/internal/logging/UiEventLogger;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 2
    const v0, 0x7f1304d6    # @string/guest_reset_and_restart_dialog_title 'Reset guest session?'

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 8
    const v0, 0x7f1304d5    # @string/guest_reset_and_restart_dialog_message 'This will start a new guest session and delete all apps and data from the current session'

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 18
    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    const/4 v1, -0x3

    .line 27
    invoke-virtual {p0, v1, v0, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 28
    const v0, 0x7f1304d9    # @string/guest_reset_guest_confirm_button 'Reset'

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    const/4 v0, -0x1

    .line 38
    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 39
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    iput-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 46
    iput-object p3, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 48
    iput p4, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog;->mUserId:I

    .line 50
    return-void
    .line 52
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 5
    sget-object p2, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_GUEST_REMOVE:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    .line 7
    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 9
    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 12
    iget p0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialog;->mUserId:I

    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->removeGuestUser(I)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, -0x3

    .line 24
    if-ne p2, p1, :cond_1

    .line 25
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 27
    :cond_1
    :goto_0
    return-void
    .line 30
.end method
