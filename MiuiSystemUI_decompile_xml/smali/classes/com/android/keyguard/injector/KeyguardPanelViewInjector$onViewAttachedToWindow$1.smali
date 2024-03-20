.class public final Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$1;
.super Lcom/android/systemui/util/MiuiSettingObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;I)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 2
    const-string/jumbo v5, "wallpaper_effect_type_2"

    .line 4
    move-object v0, p0

    .line 7
    move-object v1, p2

    .line 8
    move-object v2, p3

    .line 9
    move-object v3, p4

    .line 10
    move-object v4, p5

    .line 11
    move v6, p6

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/MiuiSettingObserver;-><init>(Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 4
    const/4 v0, 0x2

    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mDepthEffectEnable:Z

    .line 12
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 14
    invoke-virtual {p1}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateDeductedImageView()V

    .line 16
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$1;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 19
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateShowDepthState()V

    .line 21
    :cond_1
    return-void
    .line 24
.end method
