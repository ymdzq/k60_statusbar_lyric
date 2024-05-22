.class public final Lcom/android/keyguard/KeyguardStatusViewController$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardStatusViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardStatusViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 4
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    check-cast p1, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 8
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardClockSwitch;->onConfigChanged()V

    .line 10
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 13
    move-result-object v0

    .line 16
    const v1, 0x7f070466    # @dimen/keyguard_clock_top_margin '0.0dp'

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v0

    .line 26
    const v1, 0x7f070484    # @dimen/keyguard_large_clock_top_margin '-60.0dp'

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 33
    move-result-object v0

    .line 36
    const v1, 0x7f0b006f    # @integer/keyguard_date_weather_view_invisibility '4'

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 40
    move-result v0

    .line 43
    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardDateWeatherViewInvisibility:I

    .line 44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setDateWeatherVisibility()V

    .line 49
    return-void
    .line 52
.end method

.method public final onLocaleListChanged()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isEnabled()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isDateWeatherDecoupled()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    .line 23
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mWeatherView:Landroid/view/View;

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    .line 30
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 34
    move-result v0

    .line 37
    if-ltz v0, :cond_0

    .line 38
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    .line 40
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    .line 42
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->addDateWeatherView(I)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setDateWeatherVisibility()V

    .line 50
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setWeatherVisibility()V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    .line 56
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 60
    move-result v0

    .line 63
    if-ltz v0, :cond_2

    .line 64
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    .line 66
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    .line 68
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->addSmartspaceView(I)V

    .line 73
    :cond_2
    return-void
    .line 76
.end method
