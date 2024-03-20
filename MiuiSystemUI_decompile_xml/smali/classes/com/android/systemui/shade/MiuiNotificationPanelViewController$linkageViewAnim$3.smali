.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $show:Z

.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$3;->$show:Z

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$3;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$3;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$linkageViewAnim$3;->$show:Z

    .line 4
    if-nez p0, :cond_0

    .line 6
    iget-boolean v0, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->beginToAodAnim:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string/jumbo v0, "toAodAnim:begin"

    .line 12
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->beginToAodAnim:Z

    .line 19
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 21
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->KEY_TRANSLATION_ALPHA:Ljava/lang/String;

    .line 24
    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 26
    move-result-object p2

    .line 29
    if-nez p2, :cond_1

    .line 30
    return-void

    .line 32
    :cond_1
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 33
    move-result p2

    .line 36
    iget-boolean v0, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardBouncerShowing:Z

    .line 37
    if-eqz v0, :cond_2

    .line 39
    const/4 v0, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v0, p2

    .line 43
    :goto_0
    if-eqz p0, :cond_3

    .line 44
    move p0, v0

    .line 46
    goto :goto_1

    .line 47
    :cond_3
    mul-float p0, v0, v0

    .line 48
    :goto_1
    iget-object v1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInfoLayer:Landroid/widget/FrameLayout;

    .line 50
    if-nez v1, :cond_4

    .line 52
    goto :goto_2

    .line 54
    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTransitionAlpha(F)V

    .line 55
    :goto_2
    iget-object v1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 58
    iget-object v1, v1, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mColorRibbonsContainer:Lcom/android/keyguard/widget/ColorRibbonsContainer;

    .line 60
    if-nez v1, :cond_5

    .line 62
    goto :goto_3

    .line 64
    :cond_5
    invoke-virtual {v1, p0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 65
    :goto_3
    iget-object p0, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleTextView:Lcom/miui/keyguardtemplate/doodle/DoodleView;

    .line 70
    if-nez p0, :cond_6

    .line 72
    goto :goto_4

    .line 74
    :cond_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 75
    :goto_4
    iget-object p0, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 78
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDoodleBgView:Landroid/view/View;

    .line 80
    if-nez p0, :cond_7

    .line 82
    goto :goto_5

    .line 84
    :cond_7
    invoke-virtual {p0, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 85
    :goto_5
    return-void
    .line 88
.end method
