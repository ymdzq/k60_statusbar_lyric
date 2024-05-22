.class public final Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

.field public dialog:Landroid/app/AlertDialog;

.field public final dialogProvider:Lkotlin/jvm/functions/Function2;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final userFileManager:Lcom/android/systemui/settings/UserFileManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/controls/settings/ControlsSettingsRepository;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 7

    .line 8
    sget-object v6, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$1;->INSTANCE:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$1;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;-><init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/controls/settings/ControlsSettingsRepository;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/controls/settings/ControlsSettingsRepository;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    .line 5
    iput-object p4, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 6
    iput-object p5, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 7
    iput-object p6, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->dialogProvider:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final getShowDeviceControlsInLockscreen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    .line 2
    check-cast p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->canShowControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public final maybeShowDialog(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->dialog:Landroid/app/AlertDialog;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 9
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 13
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 17
    check-cast v1, Lcom/android/systemui/settings/UserFileManagerImpl;

    .line 19
    const-string v2, "controls_prefs"

    .line 21
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences(ILjava/lang/String;)Landroid/content/SharedPreferences;

    .line 23
    move-result-object v0

    .line 26
    const-string/jumbo v1, "show_settings_attempts"

    .line 27
    const/4 v2, 0x0

    .line 30
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 31
    move-result v1

    .line 34
    const/4 v2, 0x2

    .line 35
    if-ge v1, v2, :cond_3

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->getShowDeviceControlsInLockscreen()Z

    .line 38
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    .line 44
    check-cast v2, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;

    .line 46
    iget-object v2, v2, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->allowActionOnTrivialControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 48
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/Boolean;

    .line 54
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    move-result v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    goto/16 :goto_1

    .line 62
    :cond_1
    new-instance v2, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;

    .line 64
    invoke-direct {v2, p0, v0, v1, p2}, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;-><init>(Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;Landroid/content/SharedPreferences;ILkotlin/jvm/functions/Function0;)V

    .line 66
    const p2, 0x7f140564    # @style/Theme.SystemUI.Dialog

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p2

    .line 75
    iget-object v0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->dialogProvider:Lkotlin/jvm/functions/Function2;

    .line 76
    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 81
    check-cast p1, Landroid/app/AlertDialog;

    .line 82
    const p2, 0x7f0811ff    # @drawable/ic_warning 'res/drawable/ic_warning.xml'

    .line 84
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 87
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 90
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 93
    move-result-object p2

    .line 96
    const v0, 0x7f13032c    # @string/controls_settings_dialog_neutral_button 'No thanks'

    .line 97
    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 100
    move-result-object p2

    .line 103
    const/4 v0, -0x3

    .line 104
    invoke-virtual {p1, v0, p2, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 105
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 108
    move-result-object p2

    .line 111
    const v0, 0x7f13032d    # @string/controls_settings_dialog_positive_button 'Yes'

    .line 112
    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 115
    move-result-object p2

    .line 118
    const/4 v0, -0x1

    .line 119
    invoke-virtual {p1, v0, p2, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->getShowDeviceControlsInLockscreen()Z

    .line 123
    move-result p2

    .line 126
    if-eqz p2, :cond_2

    .line 127
    const p2, 0x7f130331    # @string/controls_settings_trivial_controls_dialog_title 'Control devices from lock screen?'

    .line 129
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 132
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 135
    move-result-object p2

    .line 138
    const v0, 0x7f130330    # @string/controls_settings_trivial_controls_dialog_message 'You can control some devices without unlocking your phone or tablet. Your device app determines whic ...'

    .line 139
    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 142
    move-result-object p2

    .line 145
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    goto :goto_0

    .line 149
    :cond_2
    const p2, 0x7f13032f    # @string/controls_settings_show_controls_dialog_title 'Show and control devices from lock screen?'

    .line 150
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 153
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 156
    move-result-object p2

    .line 159
    const v0, 0x7f13032e    # @string/controls_settings_show_controls_dialog_message 'You can add controls for your external devices to the lock screen.\n\nYour device app may allow you to ...'

    .line 160
    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 163
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    new-instance p2, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;

    .line 170
    invoke-direct {p2, p0}, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;-><init>(Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;)V

    .line 172
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;)V

    .line 175
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setDialogSize(Landroid/app/Dialog;)V

    .line 178
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 181
    iput-object p1, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->dialog:Landroid/app/AlertDialog;

    .line 184
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 186
    return-void

    .line 189
    :cond_3
    :goto_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 190
    return-void
    .line 193
.end method
