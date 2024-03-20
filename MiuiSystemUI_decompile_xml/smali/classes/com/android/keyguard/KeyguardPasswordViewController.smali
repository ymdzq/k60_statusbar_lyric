.class public final Lcom/android/keyguard/KeyguardPasswordViewController;
.super Lcom/android/keyguard/KeyguardAbsKeyInputViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mKeyBoardActionListener:Lcom/android/keyguard/KeyguardPasswordViewController$2;

.field public mKeyboardView:Lcom/android/keyguard/widget/MiuiKeyBoardView;

.field public final mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final mOnEditorActionListener:Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda0;

.field public final mPasswordEntry:Landroid/widget/EditText;

.field public mPaused:Z

.field public final mShowImeAtScreenOn:Z

.field public final mTextWatcher:Lcom/android/keyguard/KeyguardPasswordViewController$1;


# direct methods
.method public static synthetic $r8$lambda$pGc0h-kftpb4w3JsRIl3CpZ3HlI(Lcom/android/keyguard/KeyguardPasswordViewController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 4
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPause()V

    .line 7
    return-void
    .line 10
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/EmergencyButtonController;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object/from16 v4, p4

    .line 7
    move-object/from16 v5, p5

    .line 9
    move-object/from16 v6, p6

    .line 11
    move-object/from16 v7, p7

    .line 13
    move-object/from16 v8, p10

    .line 15
    move-object/from16 v9, p8

    .line 17
    move-object/from16 v10, p12

    .line 19
    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;)V

    .line 21
    new-instance v0, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda0;

    .line 24
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;)V

    .line 26
    iput-object v0, v11, Lcom/android/keyguard/KeyguardPasswordViewController;->mOnEditorActionListener:Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda0;

    .line 29
    new-instance v0, Lcom/android/keyguard/KeyguardPasswordViewController$1;

    .line 31
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPasswordViewController$1;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;)V

    .line 33
    iput-object v0, v11, Lcom/android/keyguard/KeyguardPasswordViewController;->mTextWatcher:Lcom/android/keyguard/KeyguardPasswordViewController$1;

    .line 36
    new-instance v0, Lcom/android/keyguard/KeyguardPasswordViewController$2;

    .line 38
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPasswordViewController$2;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;)V

    .line 40
    iput-object v0, v11, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyBoardActionListener:Lcom/android/keyguard/KeyguardPasswordViewController$2;

    .line 43
    move-object/from16 v0, p5

    .line 45
    iput-object v0, v11, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 47
    move-object/from16 v0, p11

    .line 49
    iput-object v0, v11, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 51
    const v0, 0x7f05008c    # @bool/kg_show_ime_at_screen_on 'true'

    .line 53
    move-object/from16 v1, p9

    .line 56
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 58
    move-result v0

    .line 61
    iput-boolean v0, v11, Lcom/android/keyguard/KeyguardPasswordViewController;->mShowImeAtScreenOn:Z

    .line 62
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardPasswordView;->getPasswordTextViewId()I

    .line 64
    move-result v0

    .line 67
    move-object v1, p1

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/EditText;

    .line 73
    iput-object v0, v11, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 75
    return-void
    .line 77
.end method


# virtual methods
.method public final onPause()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPaused:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPaused:Z

    .line 8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 10
    invoke-virtual {v0}, Landroid/widget/EditText;->isVisibleToUser()Z

    .line 12
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    if-nez v0, :cond_1

    .line 18
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPause()V

    .line 20
    goto :goto_0

    .line 23
    :cond_1
    move-object v0, v1

    .line 24
    check-cast v0, Lcom/android/keyguard/KeyguardPasswordView;

    .line 25
    new-instance v2, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda2;

    .line 27
    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;)V

    .line 29
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardInputView;->setOnFinishImeAnimationRunnable(Ljava/lang/Runnable;)V

    .line 32
    :goto_0
    check-cast v1, Lcom/android/keyguard/KeyguardPasswordView;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    new-instance p0, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;

    .line 40
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPasswordView;I)V

    .line 43
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
    .line 49
.end method

.method public final onResume(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 4
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    .line 8
    move-result-wide v0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->shouldLockout(J)Z

    .line 12
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->handleAttemptLockout(J)V

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPaused:Z

    .line 22
    const/4 v0, 0x1

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mShowImeAtScreenOn:Z

    .line 27
    if-eqz p1, :cond_3

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 31
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 33
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 35
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    goto :goto_0

    .line 41
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 42
    check-cast p0, Lcom/android/keyguard/KeyguardPasswordView;

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    .line 46
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    new-instance p1, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;

    .line 52
    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPasswordView;I)V

    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 57
    :cond_3
    :goto_0
    return-void
    .line 60
.end method

.method public final onStartingToHide()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast p0, Lcom/android/keyguard/KeyguardPasswordView;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardPasswordView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPasswordView;I)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
    .line 18
.end method

.method public final onViewAttached()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onViewAttached()V

    .line 2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 5
    move-result v0

    .line 8
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 9
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 13
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextOperationUser(Landroid/os/UserHandle;)V

    .line 15
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 22
    const/4 v0, 0x0

    .line 25
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 26
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelected(Z)V

    .line 30
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mOnEditorActionListener:Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda0;

    .line 33
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 35
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mTextWatcher:Lcom/android/keyguard/KeyguardPasswordViewController$1;

    .line 38
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 40
    new-instance v3, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;

    .line 43
    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;I)V

    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 51
    check-cast v0, Lcom/android/keyguard/KeyguardPasswordView;

    .line 53
    const v1, 0x7f0a01bf    # @id/cancel_button

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 58
    move-result-object v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    new-instance v3, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;

    .line 64
    invoke-direct {v3, p0, v2}, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardPasswordViewController;I)V

    .line 66
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_0
    const v1, 0x7f0a05ef    # @id/mixed_password_keyboard_view

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v0

    .line 78
    check-cast v0, Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 79
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyboardView:Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 81
    iget-object v1, v0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object v1

    .line 88
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v2

    .line 92
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyBoardActionListener:Lcom/android/keyguard/KeyguardPasswordViewController$2;

    .line 93
    if-eqz v2, :cond_2

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    move-result-object v2

    .line 100
    check-cast v2, Lcom/android/keyguard/KeyguardPasswordViewController$2;

    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v2

    .line 106
    if-eqz v2, :cond_1

    .line 107
    goto :goto_0

    .line 109
    :cond_2
    iget-object p0, v0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :goto_0
    return-void
    .line 115
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyboardView:Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 8
    iget-object v0, v0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mKeyBoardActionListener:Lcom/android/keyguard/KeyguardPasswordViewController$2;

    .line 12
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    return-void
    .line 17
.end method

.method public final resetState()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextOperationUser(Landroid/os/UserHandle;)V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 15
    move-object v0, p0

    .line 17
    check-cast v0, Lcom/android/keyguard/KeyguardPasswordView;

    .line 18
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryEnabled(Z)V

    .line 21
    check-cast p0, Lcom/android/keyguard/KeyguardPasswordView;

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryInputEnabled(Z)V

    .line 26
    return-void
    .line 29
.end method
