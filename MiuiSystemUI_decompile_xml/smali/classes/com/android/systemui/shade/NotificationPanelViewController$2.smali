.class public final Lcom/android/systemui/shade/NotificationPanelViewController$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$2;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;I)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 8
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mResources:Landroid/content/res/Resources;

    .line 10
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 12
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    .line 14
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mViewName:Ljava/lang/String;

    .line 22
    return-void

    .line 24
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 25
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    .line 27
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 29
    invoke-virtual {v0, p1}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 31
    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 35
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;

    .line 42
    invoke-direct {v1, v0}, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;-><init>(Lcom/android/systemui/shade/QuickSettingsController;)V

    .line 44
    const-string v0, "QS"

    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    .line 49
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 52
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 54
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    .line 56
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 58
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 60
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 63
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    .line 65
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 67
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 69
    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 71
    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->onStateChanged(I)V

    .line 73
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 76
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 78
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;

    .line 80
    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 82
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 87
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;

    .line 89
    invoke-virtual {p1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;->onThemeChanged()V

    .line 91
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 94
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 96
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->init()V

    .line 98
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    const-string/jumbo p1, "user_switcher_enabled"

    .line 106
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 109
    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSettingsChangeObserver:Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;

    .line 113
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mContentResolver:Landroid/content/ContentResolver;

    .line 115
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 122
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    return-void

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 9
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mContentResolver:Landroid/content/ContentResolver;

    .line 11
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSettingsChangeObserver:Lcom/android/systemui/shade/NotificationPanelViewController$SettingsChangeObserver;

    .line 13
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 15
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 18
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    .line 20
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 24
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 28
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance v1, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;

    .line 35
    invoke-direct {v1, v0}, Lcom/android/systemui/shade/QuickSettingsController$QsFragmentListener;-><init>(Lcom/android/systemui/shade/QuickSettingsController;)V

    .line 37
    iget-object p1, p1, Lcom/android/systemui/fragments/FragmentHostManager;->mListeners:Ljava/util/HashMap;

    .line 40
    const-string v0, "QS"

    .line 42
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 47
    check-cast v2, Ljava/util/ArrayList;

    .line 48
    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 58
    move-result v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 67
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 69
    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;

    .line 71
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 73
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 75
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$2;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 80
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$MiuiConfigurationListener;

    .line 82
    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 84
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 86
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 90
.end method
