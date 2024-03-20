.class public final Lcom/android/systemui/wmshell/MiuiWMShellStub$$;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collectImplProviders(Ljava/util/Map;)V
    .locals 1

    .line 1
    new-instance p0, Lcom/miui/analytics/MiuiFreeFormTackImpl$Provider;

    .line 2
    invoke-direct {p0}, Lcom/miui/analytics/MiuiFreeFormTackImpl$Provider;-><init>()V

    .line 4
    const-string/jumbo v0, "src.com.miui.analytics.MiuiFreeFormTrackStub"

    .line 7
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl$Provider;

    .line 13
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl$Provider;-><init>()V

    .line 15
    const-string v0, "com.android.wm.shell.onehanded.OneHandedTutorialHandlerStub"

    .line 18
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p0, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl$Provider;

    .line 23
    invoke-direct {p0}, Lcom/android/wm/shell/common/keyguard/KeyguardTransitionHandlerImpl$Provider;-><init>()V

    .line 25
    const-string v0, "com.android.wm.shell.common.keyguard.KeyguardTransitionHandlerStub"

    .line 28
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance p0, Lcom/miui/analytics/MiuiPIPTrackImpl$Provider;

    .line 33
    invoke-direct {p0}, Lcom/miui/analytics/MiuiPIPTrackImpl$Provider;-><init>()V

    .line 35
    const-string v0, "com.miui.analytics.MiuiPIPTrackStub"

    .line 38
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance p0, Lcom/miui/analytics/MiuiTrackManagerImpl$Provider;

    .line 43
    invoke-direct {p0}, Lcom/miui/analytics/MiuiTrackManagerImpl$Provider;-><init>()V

    .line 45
    const-string v0, "com.miui.analytics.MiuiTrackManagerStub"

    .line 48
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance p0, Lcom/android/wm/shell/common/splitmode/SplitTransitionImpl$Provider;

    .line 53
    invoke-direct {p0}, Lcom/android/wm/shell/common/splitmode/SplitTransitionImpl$Provider;-><init>()V

    .line 55
    const-string v0, "com.android.wm.shell.common.splitmode.SplitTransitionStub"

    .line 58
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance p0, Lcom/miui/analytics/MiuiAppPairsTrackImpl$Provider;

    .line 63
    invoke-direct {p0}, Lcom/miui/analytics/MiuiAppPairsTrackImpl$Provider;-><init>()V

    .line 65
    const-string v0, "com.miui.analytics.MiuiAppPairsTrackStub"

    .line 68
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance p0, Lcom/miui/analytics/MiuiMultiWinTrackImpl$Provider;

    .line 73
    invoke-direct {p0}, Lcom/miui/analytics/MiuiMultiWinTrackImpl$Provider;-><init>()V

    .line 75
    const-string v0, "com.miui.analytics.MiuiMultiWinTrackStub"

    .line 78
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance p0, Lcom/android/wm/shell/sosc/SoScUtilsImpl$Provider;

    .line 83
    invoke-direct {p0}, Lcom/android/wm/shell/sosc/SoScUtilsImpl$Provider;-><init>()V

    .line 85
    const-string v0, "com.android.wm.shell.sosc.SoScUtils"

    .line 88
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance p0, Lcom/android/systemui/wmshell/MiuiWMShellImpl$Provider;

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/wmshell/MiuiWMShellImpl$Provider;-><init>()V

    .line 95
    const-string v0, "com.android.systemui.wmshell.MiuiWMShellStub"

    .line 98
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance p0, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$Provider;

    .line 103
    invoke-direct {p0}, Lcom/android/wm/shell/common/transition/DefaultTransitionImpl$Provider;-><init>()V

    .line 105
    const-string v0, "com.android.wm.shell.common.transition.DefaultTransitionStub"

    .line 108
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance p0, Lcom/miui/analytics/MiuiSoScTrackImpl$Provider;

    .line 113
    invoke-direct {p0}, Lcom/miui/analytics/MiuiSoScTrackImpl$Provider;-><init>()V

    .line 115
    const-string v0, "com.miui.analytics.MiuiSoScTrackStub"

    .line 118
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance p0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStubImpl$Provider;

    .line 123
    invoke-direct {p0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStubImpl$Provider;-><init>()V

    .line 125
    const-string v0, "com.android.wm.shell.activityembedding.ActivityEmbeddingStub"

    .line 128
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance p0, Lcom/android/wm/shell/common/split/SplitUtilsImpl$Provider;

    .line 133
    invoke-direct {p0}, Lcom/android/wm/shell/common/split/SplitUtilsImpl$Provider;-><init>()V

    .line 135
    const-string v0, "com.android.wm.shell.common.split.SplitUtilsStub"

    .line 138
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance p0, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$Provider;

    .line 143
    invoke-direct {p0}, Lcom/android/wm/shell/common/transition/ScreenRotationAnimationImpl$Provider;-><init>()V

    .line 145
    const-string v0, "com.android.wm.shell.common.transition.ScreenRotationAnimationStub"

    .line 148
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
    .line 153
.end method
