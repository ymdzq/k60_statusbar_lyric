.class public final Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public final synthetic val$miuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;->val$miuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onKeyguardOccludedChanged(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardOccluded:Z

    .line 2
    if-nez p1, :cond_0

    .line 4
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mInteractive:Z

    .line 6
    if-nez p1, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->needUpdateDozeAfterScreenOffLate:Z

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozeAfterScreenOff(Z)V

    .line 17
    :goto_0
    return-void
    .line 20
.end method

.method public final onKeyguardShowingChanged(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardShowing:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mInteractive:Z

    .line 6
    if-nez p1, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    sput-boolean p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->needUpdateDozeAfterScreenOffLate:Z

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateDozeAfterScreenOff(Z)V

    .line 17
    :goto_0
    return-void
    .line 20
.end method

.method public final onLockWallpaperChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;->val$miuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-virtual {p1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isDefaultLockScreenTheme()Z

    .line 4
    move-result p1

    .line 7
    sput-boolean p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mLockscreenIsDefaultTheme:Z

    .line 8
    const/4 p1, 0x0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->updateLinkageState(Z)V

    .line 13
    return-void
    .line 16
.end method

.method public final onPartColorComputeComplete(Ljava/util/Map;IZZZZZ)V
    .locals 0

    .line 1
    sput-boolean p4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mClockStyleIsDeep:Z

    .line 2
    const-string p2, "clock_style_rect"

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/HashMap;

    .line 10
    sput-object p1, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mClockColorMap:Ljava/util/HashMap;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$2;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->setAodClockColor()V

    .line 16
    return-void
    .line 19
.end method
