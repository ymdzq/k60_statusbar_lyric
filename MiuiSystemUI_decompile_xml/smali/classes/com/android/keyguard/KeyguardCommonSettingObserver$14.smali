.class public final Lcom/android/keyguard/KeyguardCommonSettingObserver$14;
.super Lcom/android/systemui/util/MiuiSettingObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCommonSettingObserver;


# direct methods
.method public constructor <init>(ILcom/android/keyguard/KeyguardCommonSettingObserver;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V
    .locals 8

    .line 1
    iput-object p2, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver$14;->this$0:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 2
    const-string/jumbo v5, "support_lock_screen_text_click"

    .line 4
    const/4 v7, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p3

    .line 9
    move-object v2, p4

    .line 10
    move-object v3, p5

    .line 11
    move-object v4, p6

    .line 12
    move v6, p1

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/util/MiuiSettingObserver;-><init>(Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;II)V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver$14;->this$0:Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->isSupportLockScreenTextClick:Z

    .line 9
    return-void
    .line 11
.end method
