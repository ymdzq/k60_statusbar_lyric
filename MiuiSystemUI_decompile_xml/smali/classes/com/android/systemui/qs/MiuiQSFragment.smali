.class public final Lcom/android/systemui/qs/MiuiQSFragment;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/qs/MiuiQS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;


# instance fields
.field public final animateHeaderSlidingInListener:Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;

.field public brightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field public final controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

.field public headerAnimating:Z

.field public final host:Lcom/android/systemui/qs/QSTileHost;

.field public final injectionInflaterController:Lcom/android/systemui/util/InjectionInflationController;

.field public lastDetailShowing:Z

.field public lastKeyguardAndExpanded:Z

.field public lastQSExpansion:F

.field public lastViewHeight:I

.field public layoutDirection:I

.field public listening:Z

.field public mAppeared:Z

.field public notificationContainer:Lcom/android/systemui/shade/NotificationsQSContainerController;

.field public final onLayoutChangeListener:Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;

.field public panelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field public qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

.field public final qsBounds:Landroid/graphics/Rect;

.field public qsComponent:Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent;

.field public final qsComponentFactory:Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent$Factory;

.field public qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

.field public qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

.field public qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

.field public final qsDetailCallbacks:Ljava/util/ArrayList;

.field public qsDisabled:Z

.field public qsExpanded:Z

.field public final remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field public stackScrollerOverscrolling:Z

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent$Factory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->injectionInflaterController:Lcom/android/systemui/util/InjectionInflationController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->host:Lcom/android/systemui/qs/QSTileHost;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/qs/MiuiQSFragment;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 13
    iput-object p8, p0, Lcom/android/systemui/qs/MiuiQSFragment;->uiHandler:Landroid/os/Handler;

    .line 15
    iput-object p9, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsComponentFactory:Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent$Factory;

    .line 17
    new-instance p1, Landroid/graphics/Rect;

    .line 19
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsBounds:Landroid/graphics/Rect;

    .line 24
    const/high16 p1, -0x40800000    # -1.0f

    .line 26
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastQSExpansion:F

    .line 28
    invoke-virtual {p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    new-instance p1, Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;

    .line 33
    const/4 p2, 0x1

    .line 35
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;I)V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->onLayoutChangeListener:Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;

    .line 39
    iget-object p1, p0, Lcom/android/systemui/util/LifecycleFragment;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 41
    invoke-interface {p5, p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleRegistry;Ljava/lang/Object;)V

    .line 43
    new-instance p1, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;

    .line 46
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;I)V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->animateHeaderSlidingInListener:Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;

    .line 51
    iput-boolean p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->mAppeared:Z

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    .line 55
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDetailCallbacks:Ljava/util/ArrayList;

    .line 60
    return-void
    .line 62
.end method


# virtual methods
.method public final addQSContent(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getContentAdded()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->addQSContent()V

    .line 17
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsComponentFactory:Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent$Factory;

    .line 20
    invoke-interface {v0, p0}, Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent$Factory;->create(Lcom/android/systemui/qs/MiuiQSFragment;)Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent;

    .line 22
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsComponent:Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent;

    .line 26
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent;->getQsContainerController()Lcom/android/systemui/qs/MiuiQSContainerController;

    .line 31
    move-result-object v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v0, v1

    .line 36
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsComponent:Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent;

    .line 39
    if-eqz v0, :cond_2

    .line 41
    invoke-interface {v0}, Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent;->getQsCustomizerController()Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 43
    move-result-object v0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object v0, v1

    .line 48
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    .line 51
    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 58
    if-eqz v0, :cond_4

    .line 60
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    .line 65
    if-eqz v0, :cond_7

    .line 67
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->brightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 69
    iget-object v3, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 71
    if-eqz v3, :cond_5

    .line 73
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 75
    :cond_5
    iput-object v2, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 78
    if-eqz v2, :cond_6

    .line 80
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    .line 82
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_6
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 87
    if-eqz v2, :cond_7

    .line 89
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessSlider:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 91
    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->setMirrorControllerAndMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 93
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 96
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    .line 100
    move-result-object v0

    .line 103
    if-eqz v0, :cond_8

    .line 104
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->onLayoutChangeListener:Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;

    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 108
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 111
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    .line 115
    move-result-object v0

    .line 118
    if-eqz v0, :cond_9

    .line 119
    new-instance v2, Lcom/android/systemui/qs/MiuiQSFragment$addQSContent$1;

    .line 121
    invoke-direct {v2, p0}, Lcom/android/systemui/qs/MiuiQSFragment$addQSContent$1;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;)V

    .line 123
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 126
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 129
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    .line 133
    move-result-object v0

    .line 136
    if-eqz v0, :cond_a

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 139
    move-result-object v2

    .line 142
    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    .line 143
    move-result-object v2

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 147
    move-result-object v3

    .line 150
    invoke-virtual {v3}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 151
    move-result-object v3

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 155
    move-result-object v4

    .line 158
    invoke-virtual {v4}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 159
    move-result-object v4

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 163
    move-result-object v5

    .line 166
    invoke-virtual {v5}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    .line 167
    move-result-object v5

    .line 170
    check-cast v5, Landroid/view/View;

    .line 171
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/systemui/qs/MiuiQSDetail;->setQsPanel(Lcom/android/systemui/qs/MiuiQSPanel;Lcom/android/systemui/qs/MiuiNotificationShadeHeader;Lcom/android/systemui/qs/MiuiQuickQSPanel;Landroid/view/View;)V

    .line 173
    :cond_a
    new-instance v0, Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 178
    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 182
    move-result-object v2

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 186
    move-result-object v3

    .line 189
    invoke-virtual {v3}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    .line 190
    move-result-object v3

    .line 193
    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/qs/MiuiQSAnimator;-><init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/MiuiQuickQSPanel;Lcom/android/systemui/qs/MiuiQSPanel;)V

    .line 194
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 199
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 203
    move-result-object v0

    .line 206
    if-nez v0, :cond_b

    .line 207
    goto :goto_2

    .line 209
    :cond_b
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setQs(Lcom/android/systemui/qs/MiuiQS;)V

    .line 210
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 213
    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    .line 217
    move-result-object v0

    .line 220
    if-eqz v0, :cond_c

    .line 221
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/MiuiQSDetail;->setQS(Lcom/android/systemui/qs/MiuiQS;)V

    .line 223
    :cond_c
    if-eqz p1, :cond_f

    .line 226
    const-string v0, "expanded"

    .line 228
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 230
    move-result v0

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQSFragment;->setExpanded(Z)V

    .line 234
    const-string v0, "listening"

    .line 237
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 239
    move-result v0

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQSFragment;->setListening(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    .line 246
    const/4 v2, 0x0

    .line 248
    if-eqz v0, :cond_d

    .line 249
    const-string v3, "extra_slider_progress"

    .line 251
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 253
    move-result v3

    .line 256
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessSlider:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 257
    invoke-virtual {v0, v3}, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->setValue(I)V

    .line 259
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 262
    if-eqz v0, :cond_e

    .line 264
    const-string v3, "qs_customizing"

    .line 266
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 268
    move-result v3

    .line 271
    if-eqz v3, :cond_e

    .line 272
    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 274
    check-cast v3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 276
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    new-instance v2, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$restoreInstanceState$1;

    .line 281
    invoke-direct {v2, v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$restoreInstanceState$1;-><init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V

    .line 283
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 286
    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 289
    if-eqz v0, :cond_f

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 293
    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    .line 297
    move-result-object v0

    .line 300
    if-eqz v0, :cond_f

    .line 301
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSPanel;->getTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 303
    move-result-object v0

    .line 306
    if-eqz v0, :cond_f

    .line 307
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 309
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->host:Lcom/android/systemui/qs/QSTileHost;

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 314
    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    .line 318
    move-result-object v0

    .line 321
    if-eqz v0, :cond_10

    .line 322
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 324
    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/qs/MiuiQSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V

    .line 326
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 329
    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    .line 333
    move-result-object v0

    .line 336
    if-eqz v0, :cond_11

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 339
    move-result-object v2

    .line 342
    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    .line 343
    move-result-object v2

    .line 346
    invoke-interface {v0, v2}, Lcom/android/systemui/qs/MiuiQSFooter;->setQSPanel(Lcom/android/systemui/qs/MiuiQSPanel;)V

    .line 347
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 350
    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    .line 354
    move-result-object v0

    .line 357
    if-eqz v0, :cond_12

    .line 358
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/MiuiQSDetail;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 360
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 363
    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 367
    move-result-object v0

    .line 370
    if-eqz v0, :cond_13

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 373
    move-result-object v2

    .line 376
    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    .line 377
    move-result-object v2

    .line 380
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setQSPanel(Lcom/android/systemui/qs/MiuiQSPanel;)V

    .line 381
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 384
    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 388
    move-result-object v0

    .line 391
    if-eqz v0, :cond_14

    .line 392
    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V

    .line 394
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 397
    if-eqz v0, :cond_15

    .line 399
    iput-object p1, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 401
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;)V

    .line 403
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSAnimator;->miuiUpdateAnimators()V

    .line 406
    :cond_15
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 409
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 411
    move-result p1

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSFragment;->onStateChanged(I)V

    .line 415
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->notificationContainer:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 418
    if-eqz p1, :cond_17

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 422
    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 426
    move-result-object v0

    .line 429
    if-eqz v0, :cond_16

    .line 430
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setContainer(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    .line 432
    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 435
    move-result-object p0

    .line 438
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    .line 439
    move-result-object p0

    .line 442
    if-eqz p0, :cond_17

    .line 443
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSDetail;->setContainer(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    .line 445
    :cond_17
    return-void
    .line 448
.end method

.method public final addQSDetailCallback(Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setQSDetailAnimatedViews$1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->uiHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/systemui/qs/MiuiQSFragment$addQSDetailCallback$1;

    .line 4
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/MiuiQSFragment$addQSDetailCallback$1;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;Lcom/android/systemui/shade/MiuiNotificationPanelViewController$setQSDetailAnimatedViews$1;)V

    .line 6
    invoke-static {v0, v1}, Lcom/miui/utils/CommonExtensionsKt;->runOrPost(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    .line 9
    return-void
    .line 12
.end method

.method public final addQsTile(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 2
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    const-string v1, "command add tile: "

    .line 17
    const-string v2, "QS"

    .line 19
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    if-nez p1, :cond_2

    .line 24
    return-void

    .line 26
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->host:Lcom/android/systemui/qs/QSTileHost;

    .line 27
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSTileHost;->addTile(Landroid/content/ComponentName;Z)V

    .line 30
    return-void
    .line 33
.end method

.method public final animateHeaderSlidingOut()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 13
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSContainer;->getMinHeight()I

    .line 17
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    neg-float v1, v1

    .line 22
    cmpg-float v0, v0, v1

    .line 23
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v0, :cond_0

    .line 27
    move v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v2

    .line 31
    :goto_0
    if-eqz v0, :cond_1

    .line 32
    return-void

    .line 34
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    .line 35
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 44
    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 48
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSContainer;->getMinHeight()I

    .line 52
    move-result v1

    .line 55
    int-to-float v1, v1

    .line 56
    neg-float v1, v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 58
    move-result-object v0

    .line 61
    const-wide/16 v3, 0x0

    .line 62
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 64
    move-result-object v0

    .line 67
    const-wide/16 v3, 0x168

    .line 68
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 70
    move-result-object v0

    .line 73
    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 76
    move-result-object v0

    .line 79
    new-instance v1, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;

    .line 80
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;I)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 85
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 89
    return-void
    .line 92
.end method

.method public final clickTile(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 2
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-object v1, v0

    .line 17
    :goto_0
    const-string v2, "command click tile: "

    .line 18
    const-string v3, "QS"

    .line 20
    invoke-static {v2, v1, v3}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    if-nez p1, :cond_2

    .line 25
    return-void

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    .line 32
    move-result-object p0

    .line 35
    if-eqz p0, :cond_4

    .line 36
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 41
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    :goto_1
    if-ge v2, v1, :cond_4

    .line 49
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 56
    check-cast v3, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 57
    iget-object v3, v3, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 59
    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v3

    .line 68
    if-eqz v3, :cond_3

    .line 69
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object p0

    .line 76
    check-cast p0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 77
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 79
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->click(Landroid/view/View;)V

    .line 81
    goto :goto_2

    .line 84
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 85
    goto :goto_1

    .line 87
    :cond_4
    :goto_2
    return-void
    .line 88
.end method

.method public final closeCustomizer()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->hide$default(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final closeDetail()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    .line 6
    move-result-object p0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 12
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->hide(Z)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mDetailRecord:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 20
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHandler:Lcom/android/systemui/qs/MiuiQSPanel$H;

    .line 22
    const/4 v2, 0x0

    .line 24
    invoke-virtual {p0, v1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 29
    :cond_1
    return-void
    .line 32
.end method

.method public final disable(IIIZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    .line 6
    move-result p2

    .line 9
    if-eq p1, p2, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 13
    iget-boolean p2, p1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->remoteInputActive:Z

    .line 15
    if-eqz p2, :cond_1

    .line 17
    iget-boolean p2, p1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->isLandscape:Z

    .line 19
    if-eqz p2, :cond_1

    .line 21
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->shouldUseSplitNotificationShade:Z

    .line 23
    if-nez p1, :cond_1

    .line 25
    or-int/lit8 p3, p3, 0x1

    .line 27
    :cond_1
    const/4 p1, 0x1

    .line 29
    and-int/lit8 p2, p3, 0x1

    .line 30
    const/4 p3, 0x0

    .line 32
    if-eqz p2, :cond_2

    .line 33
    move p4, p1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move p4, p3

    .line 37
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDisabled:Z

    .line 38
    if-ne p4, v0, :cond_3

    .line 40
    return-void

    .line 42
    :cond_3
    iput-boolean p4, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDisabled:Z

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    if-eqz p2, :cond_4

    .line 52
    goto :goto_1

    .line 54
    :cond_4
    move p1, p3

    .line 55
    :goto_1
    iget-boolean p2, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDisabled:Z

    .line 56
    const/16 v1, 0x8

    .line 58
    if-ne p1, p2, :cond_5

    .line 60
    goto :goto_5

    .line 62
    :cond_5
    iput-boolean p1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDisabled:Z

    .line 63
    iget-object p2, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsBackground:Landroid/view/View;

    .line 65
    if-nez p2, :cond_6

    .line 67
    goto :goto_3

    .line 69
    :cond_6
    if-eqz p1, :cond_7

    .line 70
    move p1, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_7
    move p1, p3

    .line 74
    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :goto_3
    iget-object p1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->brightnessView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 78
    if-nez p1, :cond_8

    .line 80
    goto :goto_5

    .line 82
    :cond_8
    iget-boolean p2, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDisabled:Z

    .line 83
    if-eqz p2, :cond_9

    .line 85
    move p2, v1

    .line 87
    goto :goto_4

    .line 88
    :cond_9
    move p2, p3

    .line 89
    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 90
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 93
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 100
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 104
    move-result-object p1

    .line 107
    if-eqz p1, :cond_b

    .line 108
    iget-boolean p2, p1, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mDisabledByPolicy:Z

    .line 110
    if-eq p4, p2, :cond_b

    .line 112
    iput-boolean p4, p1, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mDisabledByPolicy:Z

    .line 114
    if-eqz p4, :cond_a

    .line 116
    move p3, v1

    .line 118
    :cond_a
    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setVisibility(I)V

    .line 119
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->updateQsState()V

    .line 122
    return-void
    .line 125
.end method

.method public final getDesiredHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isCustomizing()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 18
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    .line 27
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    iget-boolean v1, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mIsShowingDetail:Z

    .line 33
    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 37
    move-result p0

    .line 40
    return p0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 42
    move-result-object p0

    .line 45
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 49
    move-result p0

    .line 52
    return p0
    .line 53
.end method

.method public final getHeader()Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public final getHeightDiff()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getQsMinExpansionHeight()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getMinHeight()I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public final hideImmediately()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 13
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->mAppeared:Z

    .line 23
    if-eqz v1, :cond_0

    .line 25
    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 31
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    .line 35
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 37
    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getMinHeight()I

    .line 48
    move-result p0

    .line 51
    int-to-float p0, p0

    .line 52
    neg-float p0, p0

    .line 53
    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    .line 54
    return-void
    .line 57
.end method

.method public final isCustomizing()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 6
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isCustomizing()Z

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
    .line 18
.end method

.method public final isExpanded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isFullyCollapsed()Z
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastQSExpansion:F

    .line 2
    const/4 v0, 0x0

    .line 4
    cmpg-float v0, p0, v0

    .line 5
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    if-nez v0, :cond_3

    .line 14
    const/high16 v0, -0x40800000    # -1.0f

    .line 16
    cmpg-float p0, p0, v0

    .line 18
    if-nez p0, :cond_1

    .line 20
    move p0, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move p0, v2

    .line 24
    :goto_1
    if-eqz p0, :cond_2

    .line 25
    goto :goto_2

    .line 27
    :cond_2
    move v1, v2

    .line 28
    :cond_3
    :goto_2
    return v1
    .line 29
.end method

.method public final isListening()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isShowingDetail()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    .line 6
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 13
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    move v1, v2

    .line 18
    :cond_0
    if-eqz v1, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->isCustomizing()Z

    .line 22
    move-result v2

    .line 25
    :goto_0
    return v2

    .line 26
    :cond_2
    return v1
    .line 27
.end method

.method public final notifyCustomizeChanged()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    .line 16
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x4

    .line 21
    if-nez v1, :cond_0

    .line 22
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isCustomizing()Z

    .line 25
    move-result v4

    .line 28
    if-nez v4, :cond_1

    .line 29
    move v4, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v4, v3

    .line 33
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 34
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    .line 41
    move-result-object p0

    .line 44
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isCustomizing()Z

    .line 48
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    goto :goto_2

    .line 54
    :cond_2
    move v2, v3

    .line 55
    :goto_2
    invoke-interface {p0, v2}, Lcom/android/systemui/qs/MiuiQSFooter;->setVisibility(I)V

    .line 56
    :cond_3
    return-void
    .line 59
.end method

.method public final notifyQSDetailChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->isShowingDetail()Z

    .line 2
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastDetailShowing:Z

    .line 6
    if-eq v0, v1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->isShowingDetail()Z

    .line 10
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastDetailShowing:Z

    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->uiHandler:Landroid/os/Handler;

    .line 16
    new-instance v1, Lcom/android/systemui/qs/MiuiQSFragment$notifyQSDetailChanged$1;

    .line 18
    invoke-direct {v1, p0}, Lcom/android/systemui/qs/MiuiQSFragment$notifyQSDetailChanged$1;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;)V

    .line 20
    invoke-static {v0, v1}, Lcom/miui/utils/CommonExtensionsKt;->runOrPost(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 5
    move-result v0

    .line 8
    iget v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->layoutDirection:I

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 13
    move-result p1

    .line 16
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->layoutDirection:I

    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSAnimator;->miuiUpdateAnimators()V

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->injectionInflaterController:Lcom/android/systemui/util/InjectionInflationController;

    .line 2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 9
    const v1, 0x7f14056f    # @style/Theme.SystemUI.QuickSettings

    .line 10
    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 27
    move-result-object p0

    .line 30
    iget-object p1, p3, Lcom/android/systemui/util/InjectionInflationController;->mFactory:Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 33
    const p1, 0x7f0d01d2    # @layout/miui_qs_panel 'res/layout/miui_qs_panel.xml'

    .line 36
    const/4 p3, 0x0

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    move-result-object p0

    .line 43
    return-object p0
    .line 44
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 5
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 10
    invoke-virtual {v0, p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->removeCallback(Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;)V

    .line 12
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQSFragment;->setListening(Z)V

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 27
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    if-nez v0, :cond_1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setQs(Lcom/android/systemui/qs/MiuiQS;)V

    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 38
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    .line 42
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/MiuiQSDetail;->setQS(Lcom/android/systemui/qs/MiuiQS;)V

    .line 48
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDetailCallbacks:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 53
    return-void
    .line 56
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 11
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 17
    :cond_0
    const-string v0, "expanded"

    .line 20
    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    const-string v0, "listening"

    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 41
    move-result v0

    .line 44
    const-string v1, "alpha"

    .line 45
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    .line 50
    move-result-object v0

    .line 53
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 57
    move-result v0

    .line 60
    const-string/jumbo v1, "trans_y"

    .line 61
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 67
    if-eqz v0, :cond_2

    .line 69
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 71
    check-cast v1, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 73
    iget-boolean v2, v1, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    .line 75
    if-eqz v2, :cond_1

    .line 77
    iget-object v2, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 79
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 81
    iget-object v0, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->keyguardCallback:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;

    .line 83
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 85
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isCustomizing()Z

    .line 88
    move-result v0

    .line 91
    const-string v1, "qs_customizing"

    .line 92
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    .line 97
    if-eqz v0, :cond_3

    .line 99
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessSlider:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    .line 101
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->getValue()I

    .line 103
    move-result v0

    .line 106
    const-string v1, "extra_slider_progress"

    .line 107
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 112
    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 116
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    .line 120
    move-result-object p0

    .line 123
    if-eqz p0, :cond_4

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->getTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    .line 126
    move-result-object p0

    .line 129
    if-eqz p0, :cond_4

    .line 130
    invoke-interface {p0, p1}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->saveInstanceState(Landroid/os/Bundle;)V

    .line 132
    :cond_4
    return-void
    .line 135
.end method

.method public final onStateChanged(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    move v1, v0

    .line 7
    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    .line 8
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastQSExpansion:F

    .line 10
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 12
    if-eqz p1, :cond_2

    .line 14
    iput-boolean v1, p1, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnKeyguard:Z

    .line 16
    iget-object v2, p1, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 18
    if-eqz v1, :cond_1

    .line 20
    const/4 v0, 0x4

    .line 22
    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setVisibility(I)V

    .line 23
    iget-boolean v0, p1, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnKeyguard:Z

    .line 26
    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSAnimator;->clearAnimationState()V

    .line 30
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    .line 37
    move-result-object p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    invoke-interface {p1, v1}, Lcom/android/systemui/qs/MiuiQSFooter;->setKeyguardShowing(Z)V

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->updateQsState()V

    .line 46
    return-void
    .line 49
.end method

.method public final onUseControlCenterChange(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    move-result-object v0

    .line 5
    xor-int/lit8 v1, p1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/MiuiQSContainer;->setShowQSPanel(Z)V

    .line 8
    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->removeQSContent()V

    .line 13
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSFragment;->addQSContent(Landroid/os/Bundle;)V

    .line 18
    :goto_0
    return-void
    .line 21
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    const v0, 0x7f0a076e    # @id/quick_settings_container

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/qs/MiuiQSContainer;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 16
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 21
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->removeQSContent()V

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/MiuiQSFragment;->addQSContent(Landroid/os/Bundle;)V

    .line 31
    :goto_0
    if-eqz p2, :cond_1

    .line 34
    const-string v0, "alpha"

    .line 36
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 38
    move-result v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 42
    const-string/jumbo v0, "trans_y"

    .line 45
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 48
    move-result p2

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 52
    goto :goto_1

    .line 55
    :cond_1
    const/4 p2, 0x0

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 57
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 60
    invoke-virtual {p2, p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->addCallback(Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;)V

    .line 62
    new-instance p2, Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;

    .line 65
    const/4 v0, 0x0

    .line 67
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;I)V

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 71
    return-void
    .line 74
.end method

.method public final remQsTile(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 2
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    const-string v1, "command remove tile: "

    .line 17
    const-string v2, "QS"

    .line 19
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    if-nez p1, :cond_2

    .line 24
    return-void

    .line 26
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->host:Lcom/android/systemui/qs/QSTileHost;

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->removeTileByUser(Landroid/content/ComponentName;)V

    .line 29
    return-void
    .line 32
.end method

.method public final removeQSContent()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 7
    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 14
    invoke-interface {v2}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 16
    move-result-object v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSAnimator;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 22
    invoke-interface {v2}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    .line 24
    move-result-object v2

    .line 27
    invoke-virtual {v2, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 28
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/MiuiQSAnimator;->onViewDetachedFromWindow(Landroid/view/View;)V

    .line 31
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    .line 40
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->onLayoutChangeListener:Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 48
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 51
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    .line 55
    move-result-object v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 61
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 64
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 68
    move-result-object v0

    .line 71
    if-nez v0, :cond_5

    .line 72
    goto :goto_0

    .line 74
    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setQs(Lcom/android/systemui/qs/MiuiQS;)V

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 78
    move-result-object v0

    .line 81
    iget-boolean v2, v0, Lcom/android/systemui/qs/MiuiQSContainer;->contentAdded:Z

    .line 82
    if-nez v2, :cond_6

    .line 84
    goto :goto_1

    .line 86
    :cond_6
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsContent:Lcom/android/systemui/qs/QSContent;

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 89
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 94
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 99
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsContent:Lcom/android/systemui/qs/QSContent;

    .line 102
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 104
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 106
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 108
    if-eqz v2, :cond_7

    .line 110
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/MiuiQSPanel;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 112
    :cond_7
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 115
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSContainer;->quickQSPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 117
    if-eqz v2, :cond_8

    .line 119
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/MiuiQSPanel;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 121
    :cond_8
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->quickQSPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 124
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->brightnessView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 126
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->footer:Lcom/android/systemui/qs/MiuiQSFooter;

    .line 128
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->footerBundle:Landroid/view/ViewGroup;

    .line 130
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->dataUsage:Lcom/android/systemui/qs/datausage/QSFooterDataUsage;

    .line 132
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanelScrollView:Landroid/view/View;

    .line 134
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 136
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 138
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSContainer;->dragHandle:Landroid/widget/ImageView;

    .line 140
    if-eqz v2, :cond_9

    .line 142
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_9
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->dragHandle:Landroid/widget/ImageView;

    .line 147
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->indicatorDrawable:Lcom/android/systemui/qs/IndicatorDrawable;

    .line 149
    iput-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsBackground:Landroid/view/View;

    .line 151
    const/4 v2, 0x0

    .line 153
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/MiuiQSContainer;->updateResources(Z)V

    .line 154
    iput-boolean v2, v0, Lcom/android/systemui/qs/MiuiQSContainer;->contentAdded:Z

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    .line 159
    if-eqz v0, :cond_b

    .line 161
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainerController;->onViewDetached()V

    .line 163
    iget-boolean v2, v0, Lcom/android/systemui/util/ViewController;->mInited:Z

    .line 166
    if-nez v2, :cond_a

    .line 168
    goto :goto_2

    .line 170
    :cond_a
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mOnAttachStateListener:Lcom/android/systemui/util/ViewController$1;

    .line 171
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 173
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 175
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 178
    if-eqz v0, :cond_d

    .line 180
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->onViewDetached()V

    .line 182
    iget-boolean v2, v0, Lcom/android/systemui/util/ViewController;->mInited:Z

    .line 185
    if-nez v2, :cond_c

    .line 187
    goto :goto_3

    .line 189
    :cond_c
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mOnAttachStateListener:Lcom/android/systemui/util/ViewController$1;

    .line 190
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 192
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 194
    :cond_d
    :goto_3
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    .line 197
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 199
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsComponent:Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent;

    .line 201
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 203
    return-void
    .line 206
.end method

.method public final setCollapseExpandAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setCollapsedMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 6
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->notificationContainer:Lcom/android/systemui/shade/NotificationsQSContainerController;

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 14
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setContainer(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    .line 27
    move-result-object p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSDetail;->setContainer(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public final setExpanded(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setExpanded "

    .line 2
    const-string v1, "QS"

    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    .line 16
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    .line 22
    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/qs/MiuiQSPanel;->setListening(ZZ)V

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    .line 29
    if-eqz p1, :cond_6

    .line 31
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    .line 33
    iget-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainerController;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 35
    iget-boolean v1, v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 37
    if-eqz v1, :cond_1

    .line 39
    goto :goto_2

    .line 41
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessController:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 42
    if-eqz v0, :cond_3

    .line 44
    iget-boolean v2, v1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mListening:Z

    .line 46
    if-eqz v2, :cond_2

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    new-instance v2, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda1;

    .line 51
    invoke-direct {v2, v1}, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;)V

    .line 53
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 56
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->registerCallbacks()V

    .line 61
    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->unregisterCallbacks()V

    .line 65
    :goto_1
    iget-object p1, p1, Lcom/android/systemui/qs/MiuiQSContainerController;->qsFooterDataUsageController:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 68
    iget-boolean v1, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    .line 70
    if-ne v1, v0, :cond_4

    .line 72
    goto :goto_2

    .line 74
    :cond_4
    iput-boolean v0, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    .line 75
    iget-object v0, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->bgHandler:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;

    .line 77
    const/16 v1, 0x64

    .line 79
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    iget-boolean v2, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    .line 84
    if-eqz v2, :cond_5

    .line 86
    iget-boolean v2, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 88
    if-eqz v2, :cond_5

    .line 90
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    :cond_5
    iget-boolean v0, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 95
    if-nez v0, :cond_6

    .line 97
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->updateDataUsageInfo(Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;)V

    .line 100
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->updateQsState()V

    .line 103
    return-void
    .line 106
.end method

.method public final setFancyClipping(IIIIIZZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setHasNotifications(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setHeaderClickable(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setHeaderListening(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 2
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    .line 9
    if-eqz v0, :cond_5

    .line 11
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessController:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 13
    if-eqz p1, :cond_2

    .line 15
    iget-boolean v2, v1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mListening:Z

    .line 17
    if-eqz v2, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    new-instance v2, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda1;

    .line 22
    invoke-direct {v2, v1}, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;)V

    .line 24
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 27
    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->registerCallbacks()V

    .line 32
    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->unregisterCallbacks()V

    .line 36
    :goto_1
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->qsFooterDataUsageController:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 39
    iget-boolean v1, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    .line 41
    if-ne v1, p1, :cond_3

    .line 43
    goto :goto_2

    .line 45
    :cond_3
    iput-boolean p1, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    .line 46
    iget-object v1, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->bgHandler:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;

    .line 48
    const/16 v2, 0x64

    .line 50
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    iget-boolean v3, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    .line 55
    if-eqz v3, :cond_4

    .line 57
    iget-boolean v3, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 59
    if-eqz v3, :cond_4

    .line 61
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    :cond_4
    iget-boolean v1, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 66
    if-nez v1, :cond_5

    .line 68
    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->updateDataUsageInfo(Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;)V

    .line 71
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 74
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    .line 78
    move-result-object v0

    .line 81
    if-eqz v0, :cond_6

    .line 82
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/MiuiQSFooter;->setListening(Z)V

    .line 84
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 87
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 91
    move-result-object p0

    .line 94
    if-eqz p0, :cond_7

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSPanel;->setListening(Z)V

    .line 97
    :cond_7
    return-void
    .line 100
.end method

.method public final setHeightOverride(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSContainer;->setHeightOverride(I)V

    .line 6
    return-void
    .line 9
.end method

.method public final setInSplitShade(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setIsNotificationPanelFullWidth(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setListening(Z)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setListening "

    .line 2
    const-string v1, "QS"

    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 10
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 12
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    if-eqz p1, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    .line 28
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/MiuiQSFooter;->setListening(Z)V

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 37
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    .line 41
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    iget-boolean v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    .line 47
    iget-boolean v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 49
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/qs/MiuiQSPanel;->setListening(ZZ)V

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    .line 54
    if-eqz v0, :cond_8

    .line 56
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 58
    iget-boolean v2, v2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 60
    if-eqz v2, :cond_3

    .line 62
    goto :goto_3

    .line 64
    :cond_3
    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessController:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 65
    if-eqz p1, :cond_5

    .line 67
    iget-boolean v3, v2, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mListening:Z

    .line 69
    if-eqz v3, :cond_4

    .line 71
    goto :goto_1

    .line 73
    :cond_4
    new-instance v3, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda1;

    .line 74
    invoke-direct {v3, v2}, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;)V

    .line 76
    iget-object v4, v2, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 79
    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :goto_1
    invoke-virtual {v2}, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->registerCallbacks()V

    .line 84
    goto :goto_2

    .line 87
    :cond_5
    invoke-virtual {v2}, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->unregisterCallbacks()V

    .line 88
    :goto_2
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->qsFooterDataUsageController:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 91
    iget-boolean v2, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    .line 93
    if-ne v2, p1, :cond_6

    .line 95
    goto :goto_3

    .line 97
    :cond_6
    iput-boolean p1, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    .line 98
    iget-object v2, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->bgHandler:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$handler$1;

    .line 100
    const/16 v3, 0x64

    .line 102
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-boolean v4, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    .line 107
    if-eqz v4, :cond_7

    .line 109
    iget-boolean v4, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 111
    if-eqz v4, :cond_7

    .line 113
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    :cond_7
    iget-boolean v2, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->showDataUsage:Z

    .line 118
    if-nez v2, :cond_8

    .line 120
    const/4 v2, 0x0

    .line 122
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->updateDataUsageInfo(Lcom/android/systemui/qs/datausage/QSFooterDataUsage$DataUsageInfo;)V

    .line 123
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 126
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 130
    move-result-object v0

    .line 133
    if-eqz v0, :cond_9

    .line 134
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/MiuiQSPanel;->setListening(Z)V

    .line 136
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 139
    move-result-object p0

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 143
    move-result-object p0

    .line 146
    if-eqz p0, :cond_a

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/MiuiQSPanel;->switchTileLayout(Z)Z

    .line 149
    :cond_a
    return-void
    .line 152
.end method

.method public final setOverscrolling(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->stackScrollerOverscrolling:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->updateQsState()V

    .line 4
    return-void
    .line 7
.end method

.method public final setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->panelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    .line 2
    return-void
    .line 4
.end method

.method public final setQsExpansion(FF)V
    .locals 9

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/MiuiQSContainer;->setExpansion(F)V

    const/4 v0, 0x1

    int-to-float v1, v0

    sub-float v1, p1, v1

    .line 3
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 4
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    if-nez v4, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSContainer;->getMinHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    .line 7
    :cond_1
    invoke-virtual {v4, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 9
    iget v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastQSExpansion:F

    cmpg-float v1, p1, v1

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastKeyguardAndExpanded:Z

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastViewHeight:I

    if-ne v1, p2, :cond_4

    return-void

    .line 10
    :cond_4
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastQSExpansion:F

    .line 11
    iput-boolean v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastKeyguardAndExpanded:Z

    .line 12
    iput p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastViewHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float v1, p1, p2

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-nez v4, :cond_6

    move v4, v0

    goto :goto_3

    :cond_6
    move v4, v3

    .line 13
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 14
    invoke-virtual {v5, v3}, Lcom/android/systemui/qs/MiuiQSPanel;->switchTileLayout(Z)Z

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    move-result-object v5

    if-eqz v5, :cond_9

    if-eqz v2, :cond_8

    move v2, p2

    goto :goto_4

    :cond_8
    move v2, p1

    :goto_4
    invoke-interface {v5, v2}, Lcom/android/systemui/qs/MiuiQSFooter;->setExpansion(F)V

    .line 16
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSPanel;->getQsTileRevealController()Lcom/android/systemui/qs/MiuiQSTileRevealController;

    move-result-object v2

    if-eqz v2, :cond_b

    cmpl-float v5, p1, p2

    .line 17
    iget-object v6, v2, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mHandler:Landroid/os/Handler;

    iget-object v2, v2, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mRevealQsTiles:Lcom/android/systemui/qs/MiuiQSTileRevealController$1;

    if-nez v5, :cond_a

    const-wide/16 v7, 0x1f4

    .line 18
    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 19
    :cond_a
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSPanel;->getTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v2, p1}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->setExpansion(F)V

    :cond_c
    if-eqz v4, :cond_e

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v2, v3}, Landroid/view/View;->setScrollY(I)V

    .line 22
    :cond_e
    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/MiuiQSDetail;->setFullyExpanded(Z)V

    .line 23
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_10

    if-nez v1, :cond_10

    .line 24
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    neg-float v4, v4

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 25
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 26
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 27
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 28
    iget v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastQSExpansion:F

    cmpg-float p2, v2, p2

    if-nez p2, :cond_11

    goto :goto_7

    :cond_11
    move v0, v3

    :goto_7
    if-eqz v0, :cond_12

    .line 29
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2, v3, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 30
    :cond_12
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 31
    :cond_13
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    if-eqz p0, :cond_14

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSAnimator;->setPosition(F)V

    :cond_14
    return-void
.end method

.method public final setQsExpansion(FFFF)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/qs/MiuiQSFragment;->setQsExpansion(FF)V

    return-void
.end method

.method public final setQsVisible(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setShowQSPanelAnimate(Z)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->getNormalHeight()F

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    cmpg-float v0, v0, v1

    .line 15
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    move v0, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v3

    .line 23
    :goto_0
    if-nez v0, :cond_9

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->getFoldHeight()F

    .line 30
    move-result v0

    .line 33
    cmpg-float v0, v0, v1

    .line 34
    if-nez v0, :cond_1

    .line 36
    goto :goto_1

    .line 38
    :cond_1
    move v2, v3

    .line 39
    :goto_1
    if-eqz v2, :cond_2

    .line 40
    goto :goto_4

    .line 42
    :cond_2
    if-eqz p1, :cond_6

    .line 43
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->mContainerFolme:Lmiuix/animation/IFolme;

    .line 45
    if-eqz v0, :cond_3

    .line 47
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 49
    move-result-object v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->showState:Lmiuix/animation/controller/AnimState;

    .line 55
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSContainer;->mItemConfig:Lmiuix/animation/base/AnimConfig;

    .line 57
    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    .line 59
    move-result-object v2

    .line 62
    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->quickQSPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 66
    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 70
    move-result v0

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move v0, v3

    .line 75
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->footerBundle:Landroid/view/ViewGroup;

    .line 76
    if-eqz v1, :cond_5

    .line 78
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    .line 80
    move-result v3

    .line 83
    :cond_5
    add-int/2addr v0, v3

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 85
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->getNormalHeight()F

    .line 89
    move-result v1

    .line 92
    float-to-int v1, v1

    .line 93
    add-int/2addr v0, v1

    .line 94
    goto :goto_3

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->mContainerFolme:Lmiuix/animation/IFolme;

    .line 96
    if-eqz v0, :cond_7

    .line 98
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 100
    move-result-object v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->hiddenState:Lmiuix/animation/controller/AnimState;

    .line 106
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSContainer;->mItemConfig:Lmiuix/animation/base/AnimConfig;

    .line 108
    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    .line 110
    move-result-object v2

    .line 113
    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 114
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 117
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->getFoldHeight()F

    .line 121
    move-result v0

    .line 124
    float-to-int v0, v0

    .line 125
    :goto_3
    move v3, v0

    .line 126
    if-eqz p1, :cond_8

    .line 127
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 129
    int-to-float p1, v3

    .line 131
    iput p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->normalTarget:F

    .line 132
    goto :goto_4

    .line 134
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 135
    int-to-float p1, v3

    .line 137
    iput p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->unimportantTarget:F

    .line 138
    :cond_9
    :goto_4
    return v3
    .line 140
.end method

.method public final updateQsState()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->stackScrollerOverscrolling:Z

    .line 8
    if-nez v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    move v0, v1

    .line 19
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 20
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    .line 24
    move-result-object v3

    .line 27
    if-nez v3, :cond_2

    .line 28
    goto :goto_2

    .line 30
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 31
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/MiuiQSPanel;->setExpanded(Z)V

    .line 33
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 36
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    .line 40
    move-result-object v3

    .line 43
    if-eqz v3, :cond_3

    .line 44
    iget-boolean v4, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 46
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/MiuiQSDetail;->setExpanded(Z)V

    .line 48
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 51
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 53
    move-result v3

    .line 56
    if-ne v3, v1, :cond_4

    .line 57
    move v3, v1

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    move v3, v2

    .line 61
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 62
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 66
    move-result-object v4

    .line 69
    iget-boolean v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 70
    const/4 v6, 0x4

    .line 72
    if-nez v5, :cond_5

    .line 73
    if-eqz v3, :cond_5

    .line 75
    iget-boolean v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    .line 77
    if-nez v5, :cond_5

    .line 79
    move v5, v6

    .line 81
    goto :goto_4

    .line 82
    :cond_5
    move v5, v2

    .line 83
    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 87
    move-result-object v4

    .line 90
    invoke-virtual {v4}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 91
    move-result-object v4

    .line 94
    if-nez v4, :cond_6

    .line 95
    goto :goto_7

    .line 97
    :cond_6
    if-eqz v3, :cond_7

    .line 98
    iget-boolean v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    .line 100
    if-nez v5, :cond_7

    .line 102
    goto :goto_5

    .line 104
    :cond_7
    iget-boolean v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 105
    if-eqz v5, :cond_8

    .line 107
    iget-boolean v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->stackScrollerOverscrolling:Z

    .line 109
    if-nez v5, :cond_8

    .line 111
    :goto_5
    move v5, v1

    .line 113
    goto :goto_6

    .line 114
    :cond_8
    move v5, v2

    .line 115
    :goto_6
    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/MiuiQSPanel;->setExpanded(Z)V

    .line 116
    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 119
    move-result-object v4

    .line 122
    invoke-virtual {v4}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    .line 123
    move-result-object v4

    .line 126
    if-eqz v4, :cond_b

    .line 127
    iget-boolean v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDisabled:Z

    .line 129
    if-nez v5, :cond_a

    .line 131
    iget-boolean v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 133
    if-nez v5, :cond_9

    .line 135
    if-eqz v3, :cond_9

    .line 137
    iget-boolean v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    .line 139
    if-nez v5, :cond_9

    .line 141
    goto :goto_8

    .line 143
    :cond_9
    move v5, v2

    .line 144
    goto :goto_9

    .line 145
    :cond_a
    :goto_8
    move v5, v6

    .line 146
    :goto_9
    invoke-interface {v4, v5}, Lcom/android/systemui/qs/MiuiQSFooter;->setVisibility(I)V

    .line 147
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 150
    move-result-object v4

    .line 153
    invoke-virtual {v4}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    .line 154
    move-result-object v4

    .line 157
    if-eqz v4, :cond_e

    .line 158
    if-eqz v3, :cond_c

    .line 160
    iget-boolean v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    .line 162
    if-nez v3, :cond_c

    .line 164
    goto :goto_a

    .line 166
    :cond_c
    iget-boolean v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    .line 167
    if-eqz v3, :cond_d

    .line 169
    iget-boolean v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->stackScrollerOverscrolling:Z

    .line 171
    if-nez v3, :cond_d

    .line 173
    goto :goto_a

    .line 175
    :cond_d
    move v1, v2

    .line 176
    :goto_a
    invoke-interface {v4, v1}, Lcom/android/systemui/qs/MiuiQSFooter;->setExpanded(Z)V

    .line 177
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getQsContainer()Lcom/android/systemui/qs/MiuiQSContainer;

    .line 180
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    .line 184
    move-result-object v1

    .line 187
    if-nez v1, :cond_f

    .line 188
    goto :goto_c

    .line 190
    :cond_f
    iget-boolean p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDisabled:Z

    .line 191
    if-nez p0, :cond_10

    .line 193
    if-eqz v0, :cond_10

    .line 195
    goto :goto_b

    .line 197
    :cond_10
    move v2, v6

    .line 198
    :goto_b
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    :goto_c
    return-void
    .line 202
.end method
