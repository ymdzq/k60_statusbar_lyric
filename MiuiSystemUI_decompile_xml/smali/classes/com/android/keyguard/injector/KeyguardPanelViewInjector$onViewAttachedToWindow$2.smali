.class public final Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$2;
.super Lcom/android/systemui/util/MiuiSettingObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;I)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$2;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 2
    const-string v5, "face_unlcok_apply_for_lock"

    .line 4
    move-object v0, p0

    .line 6
    move-object v1, p2

    .line 7
    move-object v2, p3

    .line 8
    move-object v3, p4

    .line 9
    move-object v4, p5

    .line 10
    move v6, p6

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/MiuiSettingObserver;-><init>(Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_2

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$2;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 4
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, p2

    .line 11
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 15
    if-nez p0, :cond_1

    .line 17
    const/4 p0, 0x0

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 20
    if-eqz p0, :cond_2

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/clock/KeyguardClockContainer;->updateFaceUnlockIconState(ZZ)V

    .line 24
    :cond_2
    return-void
    .line 27
.end method
