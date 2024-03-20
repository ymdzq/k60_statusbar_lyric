.class public final Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/RemoteInputViewController;


# instance fields
.field public bouncerChecker:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;

.field public final entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public isBound:Z

.field public final mFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final onFocusChangeListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;

.field public final onSendListeners:Landroid/util/ArraySet;

.field public final onSendRemoteInputListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;

.field public pendingIntent:Landroid/app/PendingIntent;

.field public remoteInput:Landroid/app/RemoteInput;

.field public final remoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field public final remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field public remoteInputs:[Landroid/app/RemoteInput;

.field public revealParams:Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;

.field public final shortcutManager:Landroid/content/pm/ShortcutManager;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final view:Lcom/android/systemui/statusbar/policy/RemoteInputView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/RemoteInputController;Landroid/content/pm/ShortcutManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->shortcutManager:Landroid/content/pm/ShortcutManager;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 17
    new-instance p1, Landroid/util/ArraySet;

    .line 19
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onSendListeners:Landroid/util/ArraySet;

    .line 24
    new-instance p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;

    .line 26
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;)V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onFocusChangeListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;

    .line 31
    new-instance p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;

    .line 33
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;)V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onSendRemoteInputListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;

    .line 38
    return-void
    .line 40
.end method


# virtual methods
.method public final bind()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->isBound:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->isBound:Z

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInput:Landroid/app/RemoteInput;

    .line 10
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setHintText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {v0}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setSupportedMimeTypes(Ljava/util/Collection;)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->revealParams:Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;

    .line 30
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRevealParameters(Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;)V

    .line 32
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->mFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const/4 v0, 0x0

    .line 42
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setIsFocusAnimationFlagActive(Z)V

    .line 43
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditTextFocusChangeListeners:Ljava/util/ArrayList;

    .line 46
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onFocusChangeListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnSendListeners:Ljava/util/ArrayList;

    .line 53
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onSendRemoteInputListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;

    .line 55
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
    .line 60
.end method

.method public final setRemoteInput(Landroid/app/RemoteInput;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInput:Landroid/app/RemoteInput;

    .line 2
    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->isBound:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    .line 14
    move-result-object v0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setHintText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p1}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setSupportedMimeTypes(Ljava/util/Collection;)V

    .line 27
    :cond_1
    return-void
    .line 30
.end method

.method public final stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputViewController;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;

    .line 2
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 6
    sget v1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->$r8$clinit:I

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->defocusIfNeeded(Z)V

    .line 11
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInput:Landroid/app/RemoteInput;

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->setRemoteInput(Landroid/app/RemoteInput;)V

    .line 16
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputs:[Landroid/app/RemoteInput;

    .line 19
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->remoteInputs:[Landroid/app/RemoteInput;

    .line 21
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->revealParams:Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->revealParams:Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;

    .line 25
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->isBound:Z

    .line 27
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 29
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRevealParameters(Lcom/android/systemui/statusbar/policy/RemoteInputView$RevealParams;)V

    .line 33
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->pendingIntent:Landroid/app/PendingIntent;

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->pendingIntent:Landroid/app/PendingIntent;

    .line 38
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    .line 40
    return-void
    .line 43
.end method

.method public final unbind()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->isBound:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->isBound:Z

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->view:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 10
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditTextFocusChangeListeners:Ljava/util/ArrayList;

    .line 12
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onFocusChangeListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onFocusChangeListener$1;

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnSendListeners:Ljava/util/ArrayList;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl;->onSendRemoteInputListener:Lcom/android/systemui/statusbar/policy/RemoteInputViewControllerImpl$onSendRemoteInputListener$1;

    .line 21
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 23
    return-void
    .line 26
.end method
