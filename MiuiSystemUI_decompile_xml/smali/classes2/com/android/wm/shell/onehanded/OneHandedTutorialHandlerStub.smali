.class public interface abstract Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static newImpl()Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;

    .line 2
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public canShowTutorial()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public init(Landroid/content/Context;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Landroid/view/WindowManager;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public removeTutorialFromWindowManager(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setTargetViewContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setTutorialShownCountIncrement()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
