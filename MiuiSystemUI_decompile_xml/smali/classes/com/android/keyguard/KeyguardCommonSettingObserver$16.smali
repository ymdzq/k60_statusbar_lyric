.class public final Lcom/android/keyguard/KeyguardCommonSettingObserver$16;
.super Lcom/android/systemui/util/MiuiSettingObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCommonSettingObserver;


# direct methods
.method public constructor <init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V
    .locals 7

    .line 1
    iput-object p2, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver$16;->this$0:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 2
    const-string/jumbo v5, "wallpaper_effect_type_2"

    .line 4
    move-object v0, p0

    .line 7
    move-object v1, p3

    .line 8
    move-object v2, p4

    .line 9
    move-object v3, p5

    .line 10
    move-object v4, p6

    .line 11
    move v6, p1

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
    iget-object p2, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver$16;->this$0:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 2
    iput p1, p2, Lcom/android/keyguard/KeyguardCommonSettingObserver;->mMiuiWallpaperEffect:I

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver$16;->this$0:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 6
    const/4 p2, 0x2

    .line 8
    if-ne p2, p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->depthEffectEnable:Z

    .line 14
    return-void
    .line 16
.end method