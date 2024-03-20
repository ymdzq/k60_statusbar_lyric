.class public final Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final attempts:I

.field public final onComplete:Lkotlin/jvm/functions/Function0;

.field public final prefs:Landroid/content/SharedPreferences;

.field public final synthetic this$0:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;Landroid/content/SharedPreferences;ILkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->this$0:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->prefs:Landroid/content/SharedPreferences;

    .line 7
    iput p3, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->attempts:I

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->onComplete:Lkotlin/jvm/functions/Function0;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget p1, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->attempts:I

    .line 5
    const/4 v0, 0x2

    .line 7
    if-ge p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->prefs:Landroid/content/SharedPreferences;

    .line 10
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object p1

    .line 15
    iget v0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->attempts:I

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 18
    const-string/jumbo v1, "show_settings_attempts"

    .line 20
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 23
    move-result-object p1

    .line 26
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->onComplete:Lkotlin/jvm/functions/Function0;

    .line 30
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 32
    return-void
    .line 35
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    const/4 p1, -0x1

    .line 5
    if-ne p2, p1, :cond_2

    .line 6
    const-string p1, "lockscreen_allow_trivial_controls"

    .line 8
    filled-new-array {p1}, [Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->this$0:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;

    .line 18
    invoke-virtual {p2}, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->getShowDeviceControlsInLockscreen()Z

    .line 20
    move-result p2

    .line 23
    if-nez p2, :cond_1

    .line 24
    const-string p2, "lockscreen_show_controls"

    .line 26
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->this$0:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->onComplete:Lkotlin/jvm/functions/Function0;

    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    new-instance v1, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$turnOnSettingSecurely$action$1;

    .line 38
    invoke-direct {v1, p2, p1, v0}, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$turnOnSettingSecurely$action$1;-><init>(Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 40
    new-instance p1, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;

    .line 43
    invoke-direct {p1, v0}, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$maybeShowDialog$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 45
    const/4 v0, 0x1

    .line 48
    iget-object p2, p2, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 49
    invoke-interface {p2, v1, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 51
    goto :goto_0

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->onComplete:Lkotlin/jvm/functions/Function0;

    .line 55
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 57
    :goto_0
    iget p1, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->attempts:I

    .line 60
    const/4 p2, 0x2

    .line 62
    if-eq p1, p2, :cond_3

    .line 63
    iget-object p0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$DialogListener;->prefs:Landroid/content/SharedPreferences;

    .line 65
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 67
    move-result-object p0

    .line 70
    const-string/jumbo p1, "show_settings_attempts"

    .line 71
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    move-result-object p0

    .line 77
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    :cond_3
    return-void
    .line 81
.end method
