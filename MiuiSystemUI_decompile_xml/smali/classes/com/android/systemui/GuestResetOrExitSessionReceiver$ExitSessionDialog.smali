.class public final Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mIsEphemeral:Z

.field public final mUserId:I

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;IZ)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 v0, -0x1

    .line 5
    const/high16 v1, 0x1040000    # @android:string/cancel

    .line 6
    const/4 v2, -0x3

    .line 8
    if-eqz p4, :cond_0

    .line 9
    const v3, 0x7f1304c7    # @string/guest_exit_dialog_title 'Exit guest mode?'

    .line 11
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 17
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    const v3, 0x7f1304c5    # @string/guest_exit_dialog_message 'This will delete apps and data from the current guest session'

    .line 21
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 27
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 34
    invoke-virtual {p0, v2, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 35
    const v1, 0x7f1304c4    # @string/guest_exit_dialog_button 'Exit'

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 44
    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    const v3, 0x7f1304c8    # @string/guest_exit_dialog_title_non_ephemeral 'Save guest activity?'

    .line 49
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 55
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    const v3, 0x7f1304c6    # @string/guest_exit_dialog_message_non_ephemeral 'You can save activity from the current session or delete all apps and data'

    .line 59
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 65
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 72
    invoke-virtual {p0, v2, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 73
    const v1, 0x7f1304c3    # @string/guest_exit_clear_data_button 'Delete'

    .line 76
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 82
    const/4 v2, -0x2

    .line 83
    invoke-virtual {p0, v2, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 84
    const v1, 0x7f1304cc    # @string/guest_exit_save_data_button 'Save'

    .line 87
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 93
    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 94
    :goto_0
    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    iput-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 101
    iput p3, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;->mUserId:I

    .line 103
    iput-boolean p4, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;->mIsEphemeral:Z

    .line 105
    return-void
    .line 107
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;->mIsEphemeral:Z

    .line 2
    const/16 v0, -0x2710

    .line 4
    const/4 v1, -0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, -0x1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    if-ne p2, v3, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 13
    iget p0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;->mUserId:I

    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 17
    move-result-object p1

    .line 20
    invoke-virtual {p1, p0, v0, v2}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->exitGuestUser(IIZ)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    if-ne p2, v1, :cond_4

    .line 25
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 27
    goto :goto_0

    .line 30
    :cond_1
    if-ne p2, v3, :cond_2

    .line 31
    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 33
    iget p0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;->mUserId:I

    .line 35
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 37
    move-result-object p1

    .line 40
    invoke-virtual {p1, p0, v0, v2}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->exitGuestUser(IIZ)V

    .line 41
    goto :goto_0

    .line 44
    :cond_2
    const/4 p1, -0x2

    .line 45
    if-ne p2, p1, :cond_3

    .line 46
    iget-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 48
    iget p0, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialog;->mUserId:I

    .line 50
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 52
    move-result-object p1

    .line 55
    const/4 p2, 0x1

    .line 56
    invoke-virtual {p1, p0, v0, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->exitGuestUser(IIZ)V

    .line 57
    goto :goto_0

    .line 60
    :cond_3
    if-ne p2, v1, :cond_4

    .line 61
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 63
    :cond_4
    :goto_0
    return-void
    .line 66
.end method
