.class public interface abstract Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract getBoundsProvider()Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;
.end method

.method public abstract getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;
.end method

.method public abstract getPhoneStatusBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
.end method

.method public abstract getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end method

.method public abstract getPhoneStatusBarViewController()Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;
.end method

.method public abstract getStartables()Ljava/util/Set;
.end method

.method public abstract getStatusBarDemoMode()Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 6
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getPhoneStatusBarViewController()Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 13
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getStatusBarDemoMode()Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 20
    return-void
    .line 23
.end method
