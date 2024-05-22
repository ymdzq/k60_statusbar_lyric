.class public final Lcom/android/systemui/statusbar/BlurUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final crossWindowBlurListeners:Landroid/view/CrossWindowBlurListeners;

.field public earlyWakeupEnabled:Z

.field public lastAppliedBlur:I

.field public final maxBlurRadius:I

.field public final minBlurRadius:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/CrossWindowBlurListeners;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/BlurUtils;->crossWindowBlurListeners:Landroid/view/CrossWindowBlurListeners;

    .line 5
    const p2, 0x7f0707c9    # @dimen/min_window_blur_radius '1.0px'

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result p2

    .line 13
    iput p2, p0, Lcom/android/systemui/statusbar/BlurUtils;->minBlurRadius:I

    .line 14
    const p2, 0x7f070775    # @dimen/max_window_blur_radius '100.0px'

    .line 16
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result p1

    .line 22
    iput p1, p0, Lcom/android/systemui/statusbar/BlurUtils;->maxBlurRadius:I

    .line 23
    const-class p1, Lcom/android/systemui/statusbar/BlurUtils;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    sget-object p2, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 31
    invoke-virtual {p3, p1, p0, p2}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 33
    return-void
    .line 36
.end method


# virtual methods
.method public final applyBlur(Landroid/view/ViewRootImpl;IZ)V
    .locals 6

    .line 1
    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BlurUtils;->createTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 15
    move-result-object v0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 25
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 29
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BlurUtils;->earlyWakeupEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const-string v2, "BlurUtils"

    .line 34
    const-wide/16 v3, 0x1000

    .line 36
    const/4 v5, 0x0

    .line 38
    if-nez v1, :cond_1

    .line 39
    :try_start_1
    iget v1, p0, Lcom/android/systemui/statusbar/BlurUtils;->lastAppliedBlur:I

    .line 41
    if-nez v1, :cond_1

    .line 43
    if-eqz p2, :cond_1

    .line 45
    const-string v1, "eEarlyWakeup (applyBlur)"

    .line 47
    invoke-static {v3, v4, v2, v1, v5}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;

    .line 52
    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BlurUtils;->earlyWakeupEnabled:Z

    .line 56
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BlurUtils;->earlyWakeupEnabled:Z

    .line 58
    if-eqz v1, :cond_2

    .line 60
    iget v1, p0, Lcom/android/systemui/statusbar/BlurUtils;->lastAppliedBlur:I

    .line 62
    if-eqz v1, :cond_2

    .line 64
    if-nez p2, :cond_2

    .line 66
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;

    .line 68
    invoke-static {v3, v4, v2, v5}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 71
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/BlurUtils;->earlyWakeupEnabled:Z

    .line 74
    :cond_2
    iput p2, p0, Lcom/android/systemui/statusbar/BlurUtils;->lastAppliedBlur:I

    .line 76
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 78
    move-result-object p0

    .line 81
    invoke-virtual {v0, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 82
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    const/4 p0, 0x0

    .line 88
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 89
    return-void

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    :catchall_1
    move-exception p1

    .line 95
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 96
    throw p1

    .line 99
    :cond_4
    :goto_0
    return-void
    .line 100
.end method

.method public final blurRadiusOfRatio(F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    if-nez v1, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-eqz v1, :cond_1

    .line 10
    return v0

    .line 12
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/BlurUtils;->minBlurRadius:I

    .line 13
    int-to-float v0, v0

    .line 15
    iget p0, p0, Lcom/android/systemui/statusbar/BlurUtils;->maxBlurRadius:I

    .line 16
    int-to-float p0, p0

    .line 18
    invoke-static {v0, p0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 19
    move-result p0

    .line 22
    return p0
    .line 23
.end method

.method public createTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 1
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    .line 2
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Landroid/util/IndentingPrintWriter;

    .line 2
    const-string v0, "  "

    .line 4
    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 6
    const-string p1, "BlurUtils:"

    .line 9
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    const-string v0, "minBlurRadius: "

    .line 19
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget v0, p0, Lcom/android/systemui/statusbar/BlurUtils;->minBlurRadius:I

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    const-string v0, "maxBlurRadius: "

    .line 38
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/android/systemui/statusbar/BlurUtils;->maxBlurRadius:I

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 51
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BlurUtils;->supportsBlursOnWindows()Z

    .line 55
    move-result p0

    .line 58
    const-string/jumbo p1, "supportsBlursOnWindows: "

    .line 59
    invoke-static {p1, p0, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 62
    sget-boolean p0, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    const-string v0, "CROSS_WINDOW_BLUR_SUPPORTED: "

    .line 69
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 80
    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    .line 84
    move-result p0

    .line 87
    const-string p1, "isHighEndGfx: "

    .line 88
    invoke-static {p1, p0, p2}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    .line 90
    return-void
    .line 93
.end method

.method public final ratioOfBlurRadius(F)F
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    if-nez v1, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-eqz v1, :cond_1

    .line 10
    return v0

    .line 12
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/BlurUtils;->minBlurRadius:I

    .line 13
    int-to-float v1, v1

    .line 15
    iget p0, p0, Lcom/android/systemui/statusbar/BlurUtils;->maxBlurRadius:I

    .line 16
    int-to-float p0, p0

    .line 18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    invoke-static {v1, p0, v0, v2, p1}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 21
    move-result p0

    .line 24
    return p0
    .line 25
.end method

.method public final supportsBlursOnWindows()Z
    .locals 2

    .line 1
    sget-boolean v0, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/BlurUtils;->crossWindowBlurListeners:Landroid/view/CrossWindowBlurListeners;

    .line 13
    invoke-virtual {p0}, Landroid/view/CrossWindowBlurListeners;->isCrossWindowBlurEnabled()Z

    .line 15
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    const-string p0, "persist.sysui.disableBlur"

    .line 21
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    move-result p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v1, 0x1

    .line 29
    :cond_0
    return v1
    .line 30
.end method
