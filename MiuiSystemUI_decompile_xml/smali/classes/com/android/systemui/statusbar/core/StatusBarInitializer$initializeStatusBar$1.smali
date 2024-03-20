.class public final Lcom/android/systemui/statusbar/core/StatusBarInitializer$initializeStatusBar$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/core/StatusBarInitializer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/core/StatusBarInitializer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/core/StatusBarInitializer$initializeStatusBar$1;->this$0:Lcom/android/systemui/statusbar/core/StatusBarInitializer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFragmentViewCreated(Landroid/app/Fragment;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarFragmentComponent:Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;

    .line 4
    if-eqz p1, :cond_2

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/core/StatusBarInitializer$initializeStatusBar$1;->this$0:Lcom/android/systemui/statusbar/core/StatusBarInitializer;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/core/StatusBarInitializer;->statusBarViewUpdatedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 14
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getPhoneStatusBarViewController()Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 17
    move-result-object v1

    .line 20
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getPhoneStatusBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 21
    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;->onStatusBarViewUpdated(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;)V

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/core/StatusBarInitializer;->creationListeners:Ljava/util/Set;

    .line 28
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p0

    .line 33
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 43
    check-cast v0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getBoundsProvider()Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 49
    move-result-object v1

    .line 52
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LetterboxAppearanceCalculator;->statusBarBoundsProvider:Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    return-void

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 57
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 59
    throw p0
    .line 62
.end method

.method public final onFragmentViewDestroyed(Landroid/app/Fragment;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
