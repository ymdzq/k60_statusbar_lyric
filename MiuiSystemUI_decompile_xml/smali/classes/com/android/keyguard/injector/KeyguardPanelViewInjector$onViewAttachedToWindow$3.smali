.class public final Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$3;
.super Lcom/android/systemui/util/MiuiSettingObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;I)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$3;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 2
    const-string/jumbo v5, "wallpaper_matting_support_2"

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
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector$onViewAttachedToWindow$3;->this$0:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 2
    const/4 p2, 0x1

    .line 4
    if-ne p1, p2, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    iput-boolean p2, p0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->mWallpaperMattingSupport:Z

    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateKeyguardElementsVisibility()V

    .line 11
    return-void
    .line 14
.end method
