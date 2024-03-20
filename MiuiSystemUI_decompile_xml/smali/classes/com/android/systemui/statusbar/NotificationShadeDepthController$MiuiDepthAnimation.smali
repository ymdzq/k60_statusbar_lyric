.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final animConfig:Lmiuix/animation/base/AnimConfig;

.field public pendingRadius:I

.field public radius:F

.field public final radiusProperty:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$radiusProperty$1;

.field public final springAnimation:Lmiuix/animation/IStateStyle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/high16 v0, -0x80000000

    .line 5
    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->pendingRadius:I

    .line 7
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 13
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->springAnimation:Lmiuix/animation/IStateStyle;

    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$radiusProperty$1;

    .line 19
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$radiusProperty$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->radiusProperty:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$radiusProperty$1;

    .line 24
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 26
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$animConfig$1;

    .line 31
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$animConfig$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;)V

    .line 33
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 40
    move-result-object p1

    .line 43
    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [F

    .line 45
    fill-array-data v0, :array_0

    .line 47
    const/4 v1, -0x2

    .line 50
    invoke-virtual {p1, v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 51
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 55
    return-void

    .line 57
    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3eb33333    # 0.35f
    .end array-data
    .line 58
.end method


# virtual methods
.method public final animateTo(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->pendingRadius:I

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-string v1, "animConfig start "

    .line 7
    const-string v2, " -> "

    .line 9
    const-string v3, "DepthController"

    .line 11
    invoke-static {v1, v0, v2, p1, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 13
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->pendingRadius:I

    .line 16
    int-to-float p1, p1

    .line 18
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 19
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->animConfig:Lmiuix/animation/base/AnimConfig;

    .line 23
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->radiusProperty:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$radiusProperty$1;

    .line 25
    filled-new-array {v1, p1, v0}, [Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->springAnimation:Lmiuix/animation/IStateStyle;

    .line 31
    invoke-interface {p0, p1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 33
    return-void
    .line 36
.end method

.method public final finishIfRunning()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->pendingRadius:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/high16 v2, -0x80000000

    .line 5
    if-eq v0, v2, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    new-array v0, v1, [Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->springAnimation:Lmiuix/animation/IStateStyle;

    .line 16
    invoke-interface {v1, v0}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V

    .line 18
    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->pendingRadius:I

    .line 21
    :cond_1
    return-void
    .line 23
.end method
