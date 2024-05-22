.class public final Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$mUserChangedCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$mUserChangedCallback$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$mUserChangedCallback$1;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 2
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->settingsObserver:Lcom/miui/interfaces/SettingsObserver;

    .line 4
    const-string v0, "force_use_control_panel"

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->forceUseControlCenterPanel:Z

    .line 8
    invoke-static {p2, v0, v1}, Lcom/miui/interfaces/SettingsObserver;->setValue$default(Lcom/miui/interfaces/SettingsObserver;Ljava/lang/String;I)V

    .line 10
    iget p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenterDefaultValue:I

    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 18
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->settingsObserver:Lcom/miui/interfaces/SettingsObserver;

    .line 19
    const-string/jumbo v1, "use_control_panel"

    .line 21
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, p2, v2}, Lcom/miui/interfaces/SettingsObserver;->getValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 28
    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->onContentChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string p2, "expandable_under_lock_screen"

    .line 32
    const-string v1, "1"

    .line 34
    invoke-virtual {v0, p2, v1, v2}, Lcom/miui/interfaces/SettingsObserver;->getValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->onContentChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-boolean p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 43
    if-eqz p2, :cond_0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->controlCenter:Ldagger/Lazy;

    .line 47
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 52
    check-cast p0, Lcom/android/systemui/controlcenter/ControlCenter;

    .line 53
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 55
    if-eqz p0, :cond_0

    .line 57
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->onUserSwitched(I)V

    .line 59
    :cond_0
    return-void
    .line 62
.end method
