.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

.field public final blurUtilsExt:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

.field public blursDisabledForAppLaunch:Z

.field public blursDisabledForUnlock:Z

.field public final bouncerContainer$delegate:Lkotlin/Lazy;

.field public final brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

.field public final choreographer:Landroid/view/Choreographer;

.field public final context:Landroid/content/Context;

.field public final dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public editorState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

.field public forceMaxBlur:Z

.field public inSplitShade:Z

.field public keyguardAnimator:Landroid/animation/Animator;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public lastAppliedBlur:I

.field public final listeners:Ljava/util/List;

.field public final logger:Lcom/android/systemui/log/NotificationShadeDepthLogger;

.field public mBouncerShowing:Z

.field public mKeyguardBouncerBlur:F

.field public ncSwitching:Z

.field public needUseKeyguardBouncerBlur:Z

.field public final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public qsPanelExpansion:F

.field public root:Landroid/view/View;

.field public scrimsVisible:Z

.field public final shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

.field public shadeExpansion:F

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final updateBlurCallback:Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;

.field public updateScheduled:Z

.field public wakeAndUnlockBlurRadius:F

.field public final wallpaperController:Lcom/android/systemui/util/WallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/view/Choreographer;Lcom/android/systemui/util/WallpaperController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/log/NotificationShadeDepthLogger;Lcom/android/systemui/statusbar/policy/BlurUtilsExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->choreographer:Landroid/view/Choreographer;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wallpaperController:Lcom/android/systemui/util/WallpaperController;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->context:Landroid/content/Context;

    .line 21
    iput-object p12, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->logger:Lcom/android/systemui/log/NotificationShadeDepthLogger;

    .line 23
    iput-object p13, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtilsExt:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 25
    new-instance p2, Ljava/util/ArrayList;

    .line 27
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    .line 32
    new-instance p2, Lcom/android/systemui/statusbar/NotificationShadeDepthController$bouncerContainer$2;

    .line 34
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$bouncerContainer$2;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    .line 36
    invoke-static {p2}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 39
    move-result-object p2

    .line 42
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->bouncerContainer$delegate:Lkotlin/Lazy;

    .line 43
    sget-object p2, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 45
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->editorState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 47
    new-instance p2, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 49
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    .line 51
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 54
    new-instance p2, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    .line 56
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    .line 58
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    .line 61
    new-instance p2, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;

    .line 63
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    .line 65
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateBlurCallback:Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;

    .line 68
    new-instance p2, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;

    .line 70
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    .line 72
    new-instance p3, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;

    .line 75
    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    .line 77
    const-class p5, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 80
    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 82
    move-result-object p5

    .line 85
    invoke-virtual {p10, p5, p0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 86
    check-cast p4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 89
    invoke-virtual {p4, p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 91
    invoke-interface {p1, p3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 94
    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$1;

    .line 97
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    .line 99
    check-cast p7, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 102
    iget-object p2, p7, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    .line 104
    if-eq p2, p1, :cond_0

    .line 106
    iput-object p1, p7, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mScrimsVisibilityListener:Ljava/util/function/Consumer;

    .line 108
    :cond_0
    invoke-virtual {p9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object p1

    .line 113
    invoke-static {p1}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 114
    move-result p1

    .line 117
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->inSplitShade:Z

    .line 118
    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$2;

    .line 120
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$2;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    .line 122
    check-cast p11, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 125
    invoke-virtual {p11, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 127
    return-void
    .line 130
.end method

.method public static final access$setWakeAndUnlockBlurRadius(Lcom/android/systemui/statusbar/NotificationShadeDepthController;F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wakeAndUnlockBlurRadius:F

    .line 2
    cmpg-float v0, v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    goto :goto_1

    .line 13
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wakeAndUnlockBlurRadius:F

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate()V

    .line 16
    :goto_1
    return-void
    .line 19
.end method

.method public static synthetic getBrightnessMirrorSpring$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getShadeExpansion$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getUpdateBlurCallback$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final computeBlurAndZoomOut()Lkotlin/Pair;
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->qsPanelExpansion:F

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    .line 4
    mul-float/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 7
    iget v2, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->radius:F

    .line 9
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 11
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    .line 13
    move-result v4

    .line 16
    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    .line 17
    move-result v2

    .line 20
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    .line 21
    const/4 v5, 0x0

    .line 23
    if-nez v4, :cond_0

    .line 24
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForUnlock:Z

    .line 26
    if-eqz v4, :cond_1

    .line 28
    :cond_0
    move v2, v5

    .line 30
    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/BlurUtils;->ratioOfBlurRadius(F)F

    .line 31
    move-result v4

    .line 34
    invoke-static {v4}, Landroid/util/MathUtils;->saturate(F)F

    .line 35
    move-result v4

    .line 38
    float-to-int v2, v2

    .line 39
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->inSplitShade:Z

    .line 40
    if-eqz v6, :cond_2

    .line 42
    move v4, v5

    .line 44
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimsVisible:Z

    .line 45
    const/4 v7, 0x0

    .line 47
    if-eqz v6, :cond_3

    .line 48
    move v4, v5

    .line 50
    move v2, v7

    .line 51
    :cond_3
    cmpg-float v5, v0, v5

    .line 52
    const/4 v6, 0x1

    .line 54
    if-nez v5, :cond_4

    .line 55
    move v5, v6

    .line 57
    goto :goto_0

    .line 58
    :cond_4
    move v5, v7

    .line 59
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 60
    if-eqz v5, :cond_5

    .line 62
    invoke-interface {v8}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 64
    move-result v5

    .line 67
    if-eq v5, v6, :cond_6

    .line 68
    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->mBouncerShowing:Z

    .line 70
    if-eqz v5, :cond_7

    .line 72
    :cond_6
    move v7, v6

    .line 74
    :cond_7
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->needUseKeyguardBouncerBlur:Z

    .line 75
    if-eqz v7, :cond_8

    .line 77
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->mKeyguardBouncerBlur:F

    .line 79
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    .line 81
    move-result v2

    .line 84
    float-to-int v2, v2

    .line 85
    goto :goto_1

    .line 86
    :cond_8
    invoke-interface {v8}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 87
    move-result v5

    .line 90
    const/4 v6, 0x2

    .line 91
    if-eq v5, v6, :cond_9

    .line 92
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->ncSwitching:Z

    .line 94
    if-eqz v5, :cond_a

    .line 96
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->forceMaxBlur:Z

    .line 98
    if-eqz v5, :cond_a

    .line 100
    :cond_9
    iget v2, v3, Lcom/android/systemui/statusbar/BlurUtils;->maxBlurRadius:I

    .line 102
    :cond_a
    :goto_1
    sget-boolean v3, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_PANEL:Z

    .line 104
    if-eqz v3, :cond_b

    .line 106
    iget v3, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->radius:F

    .line 108
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    .line 110
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimsVisible:Z

    .line 112
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->forceMaxBlur:Z

    .line 114
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->mBouncerShowing:Z

    .line 116
    new-instance v9, Ljava/lang/StringBuilder;

    .line 118
    const-string v10, "cb sS="

    .line 120
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 125
    const-string v3, " q="

    .line 128
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    const-string v3, " disabled="

    .line 136
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v3, " sV="

    .line 141
    const-string v10, " max="

    .line 143
    invoke-static {v9, v5, v3, v6, v10}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 145
    const-string v3, " bS="

    .line 148
    const-string v5, " blur="

    .line 150
    invoke-static {v9, v7, v3, v8, v5}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 152
    const-string v3, "DepthController"

    .line 155
    invoke-static {v9, v2, v3}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 157
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->logger:Lcom/android/systemui/log/NotificationShadeDepthLogger;

    .line 160
    iget v1, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->radius:F

    .line 162
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 164
    move-result-object v6

    .line 167
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 168
    move-result-object v11

    .line 171
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    .line 172
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimsVisible:Z

    .line 174
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->forceMaxBlur:Z

    .line 176
    move v7, v2

    .line 178
    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/log/NotificationShadeDepthLogger;->logUpdateBlur(Ljava/lang/String;IZZZLjava/lang/String;)V

    .line 179
    int-to-float v0, v2

    .line 182
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 185
    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 187
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->radius:F

    .line 189
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/BlurUtils;->ratioOfBlurRadius(F)F

    .line 191
    move-result p0

    .line 194
    const/high16 v1, 0x3f800000    # 1.0f

    .line 195
    sub-float/2addr v1, p0

    .line 197
    mul-float/2addr v1, v0

    .line 198
    float-to-int p0, v1

    .line 199
    new-instance v0, Lkotlin/Pair;

    .line 200
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object p0

    .line 205
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 206
    move-result-object v1

    .line 209
    invoke-direct {v0, p0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 210
    return-object v0
    .line 213
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p2, Landroid/util/IndentingPrintWriter;

    .line 2
    const-string v0, "  "

    .line 4
    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6
    const-string p1, "StatusBarWindowBlurController:"

    .line 9
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 14
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v1, "shadeExpansion: "

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shouldApplyShadeBlur()Z

    .line 37
    move-result p1

    .line 40
    const-string/jumbo v0, "shouldApplyShadeBlur: "

    .line 41
    invoke-static {v0, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 44
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    .line 47
    iget p1, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->radius:F

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "brightnessMirrorRadius: "

    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 64
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 65
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    .line 68
    const-string v0, "blursDisabledForAppLaunch: "

    .line 70
    invoke-static {v0, p1, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 72
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->qsPanelExpansion:F

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "qsPanelExpansion: "

    .line 79
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 90
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 91
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->lastAppliedBlur:I

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    const-string v0, "lastAppliedBlur: "

    .line 98
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 109
    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 110
    return-void
    .line 113
.end method

.method public final getRoot()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->root:Landroid/view/View;

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

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_PANEL:Z

    .line 2
    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    .line 4
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "panelExpansionChanged:expansion="

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, "DepthController"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    .line 27
    cmpg-float v0, v0, p1

    .line 29
    const/4 v1, 0x1

    .line 31
    if-nez v0, :cond_1

    .line 32
    move v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    if-eqz v0, :cond_2

    .line 37
    return-void

    .line 39
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateShadeBlur(Z)V

    .line 42
    return-void
    .line 45
.end method

.method public final onPanelStretchChanged(FZ)V
    .locals 2

    .line 1
    sget-boolean p2, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_PANEL:Z

    .line 2
    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    const-string v0, "panelExpansionChanged:expansion="

    .line 8
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 19
    const-string v0, "DepthController"

    .line 20
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 25
    cmpg-float p2, p1, p2

    .line 27
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-nez p2, :cond_1

    .line 31
    move p2, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move p2, v0

    .line 35
    :goto_0
    if-nez p2, :cond_4

    .line 36
    const/4 p2, 0x0

    .line 38
    cmpg-float p2, p1, p2

    .line 39
    if-nez p2, :cond_2

    .line 41
    move p2, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move p2, v0

    .line 45
    :goto_1
    if-eqz p2, :cond_3

    .line 46
    goto :goto_2

    .line 48
    :cond_3
    move p2, v0

    .line 49
    goto :goto_3

    .line 50
    :cond_4
    :goto_2
    move p2, v1

    .line 51
    :goto_3
    if-nez p2, :cond_6

    .line 52
    iget p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    .line 54
    cmpg-float p2, p2, p1

    .line 56
    if-nez p2, :cond_5

    .line 58
    move v0, v1

    .line 60
    :cond_5
    if-eqz v0, :cond_6

    .line 61
    return-void

    .line 63
    :cond_6
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    .line 64
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateShadeBlur(Z)V

    .line 66
    return-void
    .line 69
.end method

.method public final scheduleUpdate()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateScheduled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->ncSwitching:Z

    .line 7
    if-nez v0, :cond_3

    .line 9
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateScheduled:Z

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->computeBlurAndZoomOut()Lkotlin/Pair;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Number;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 24
    move-result v1

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    .line 28
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 32
    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    if-eqz v2, :cond_2

    .line 41
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 43
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 47
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    .line 53
    move-result v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    iget-boolean v2, v3, Lcom/android/systemui/statusbar/BlurUtils;->earlyWakeupEnabled:Z

    .line 59
    if-eqz v2, :cond_1

    .line 61
    goto :goto_0

    .line 63
    :cond_1
    iget v2, v3, Lcom/android/systemui/statusbar/BlurUtils;->lastAppliedBlur:I

    .line 64
    if-nez v2, :cond_2

    .line 66
    if-eqz v1, :cond_2

    .line 68
    const-string v1, "eEarlyWakeup (prepareBlur)"

    .line 70
    const/4 v2, 0x0

    .line 72
    const-wide/16 v4, 0x1000

    .line 73
    const-string v6, "BlurUtils"

    .line 75
    invoke-static {v4, v5, v6, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 77
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/BlurUtils;->earlyWakeupEnabled:Z

    .line 80
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/BlurUtils;->createTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 82
    move-result-object v0

    .line 85
    :try_start_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;

    .line 86
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    const/4 v1, 0x0

    .line 92
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 93
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    :catchall_1
    move-exception v1

    .line 99
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 100
    throw v1

    .line 103
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateBlurCallback:Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->choreographer:Landroid/view/Choreographer;

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 108
    goto :goto_1

    .line 111
    :cond_3
    const-string p0, "DepthController"

    .line 112
    const-string v0, "NCSwitch intercept panel blur!"

    .line 114
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_1
    return-void
    .line 119
.end method

.method public final setBrightnessMirrorVisible(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    .line 8
    move-result p1

    .line 11
    float-to-int p1, p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    .line 15
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    .line 17
    if-ne v0, p1, :cond_1

    .line 19
    goto :goto_1

    .line 21
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->springAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 24
    int-to-float p1, p1

    .line 26
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 27
    :goto_1
    return-void
    .line 30
.end method

.method public final shouldApplyShadeBlur()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 2
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 4
    move-result v1

    .line 7
    instance-of v2, v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 8
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_0

    .line 12
    move-object v2, v0

    .line 14
    check-cast v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 15
    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 17
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    .line 19
    if-eqz v2, :cond_0

    .line 21
    if-nez v1, :cond_0

    .line 23
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v3

    .line 27
    :goto_0
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 28
    move-result-object v5

    .line 31
    const-string v6, "isSysuiSBCtrl"

    .line 32
    instance-of v0, v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 34
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->logger:Lcom/android/systemui/log/NotificationShadeDepthLogger;

    .line 36
    invoke-virtual {v7, v5, v6, v2, v0}, Lcom/android/systemui/log/NotificationShadeDepthLogger;->logShouldApplyBlur(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 38
    if-eqz v2, :cond_1

    .line 41
    return v4

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 44
    if-eqz v1, :cond_2

    .line 46
    const/4 v0, 0x2

    .line 48
    if-ne v1, v0, :cond_3

    .line 49
    :cond_2
    move-object v0, p0

    .line 51
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 52
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 54
    if-nez v0, :cond_3

    .line 56
    move v3, v4

    .line 58
    :cond_3
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 63
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 65
    const-string v1, "keyguardFadingAway"

    .line 67
    invoke-virtual {v7, v0, v1, v3, p0}, Lcom/android/systemui/log/NotificationShadeDepthLogger;->logShouldApplyBlur(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 69
    return v3
    .line 72
.end method

.method public final updateShadeBlur(Z)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_PANEL:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 10
    move-result v0

    .line 13
    move-object v3, v1

    .line 14
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 15
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 17
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v6, "updateSS state="

    .line 23
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, " keyguardGoingAway="

    .line 32
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, " shadeExpansion="

    .line 40
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 51
    const-string v3, "DepthController"

    .line 52
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 57
    move-result v0

    .line 60
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 64
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 65
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 67
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    .line 69
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->logger:Lcom/android/systemui/log/NotificationShadeDepthLogger;

    .line 75
    invoke-virtual {v3, v0, v2, v1}, Lcom/android/systemui/log/NotificationShadeDepthLogger;->logUpdateShadeBlur(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shouldApplyShadeBlur()Z

    .line 80
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 86
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)F

    .line 90
    move-result v0

    .line 93
    float-to-int v0, v0

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x0

    .line 96
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->animateTo(I)V

    .line 99
    if-nez p1, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->finishIfRunning()V

    .line 104
    :cond_2
    return-void
    .line 107
.end method
