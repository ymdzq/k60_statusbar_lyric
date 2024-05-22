.class public final Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$turnOnSettingSecurely$action$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic $onComplete:Lkotlin/jvm/functions/Function0;

.field public final synthetic $settings:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$turnOnSettingSecurely$action$1;->$settings:Ljava/util/List;

    .line 2
    iput-object p3, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$turnOnSettingSecurely$action$1;->$onComplete:Lkotlin/jvm/functions/Function0;

    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$turnOnSettingSecurely$action$1;->this$0:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$turnOnSettingSecurely$action$1;->$settings:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;

    .line 19
    iget-object v3, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$turnOnSettingSecurely$action$1;->this$0:Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;

    .line 21
    iget-object v4, v3, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 23
    iget-object v3, v3, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 25
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 27
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 29
    move-result v3

    .line 32
    invoke-interface {v4, v2, v3, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/settings/ControlsSettingsDialogManagerImpl$turnOnSettingSecurely$action$1;->$onComplete:Lkotlin/jvm/functions/Function0;

    .line 37
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 39
    return v2
    .line 42
.end method
