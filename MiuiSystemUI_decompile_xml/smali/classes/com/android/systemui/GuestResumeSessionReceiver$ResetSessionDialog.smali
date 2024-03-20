.class public Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final BUTTON_DONTWIPE:I = -0x1

.field public static final BUTTON_WIPE:I = -0x2


# instance fields
.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserId:I

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/internal/logging/UiEventLogger;I)V
    .locals 2

    .line 1
    const v0, 0x7f140564    # @style/Theme.SystemUI.Dialog

    .line 2
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(IZLandroid/content/Context;)V

    .line 6
    const v0, 0x7f1304de    # @string/guest_wipe_session_title 'Welcome back, guest!'

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 16
    const v0, 0x7f1304dd    # @string/guest_wipe_session_message 'Do you want to continue your session?'

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 29
    const v0, 0x7f1304df    # @string/guest_wipe_session_wipe 'Start over'

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    const/4 v1, -0x2

    .line 39
    invoke-virtual {p0, v1, v0, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 40
    const v0, 0x7f1304dc    # @string/guest_wipe_session_dontwipe 'Yes, continue'

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 49
    const/4 v0, -0x1

    .line 50
    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 51
    iput-object p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 54
    iput-object p3, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 56
    iput p4, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    .line 58
    return-void
    .line 60
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const/4 p1, -0x2

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 5
    sget-object p2, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_GUEST_WIPE:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    .line 7
    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 9
    iget-object p1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 12
    iget p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    .line 14
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getUserInteractor()Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->removeGuestUser(I)V

    .line 20
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, -0x1

    .line 27
    if-ne p2, p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 30
    sget-object p2, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_GUEST_CONTINUE:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    .line 32
    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 34
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 37
    :cond_1
    :goto_0
    return-void
    .line 40
.end method
