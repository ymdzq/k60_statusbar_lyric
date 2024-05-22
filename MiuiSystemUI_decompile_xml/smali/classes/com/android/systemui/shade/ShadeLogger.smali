.class public final Lcom/android/systemui/shade/ShadeLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    const-string/jumbo v1, "systemui.shade"

    .line 4
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 7
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0x8

    .line 10
    const/4 v6, 0x0

    .line 12
    move-object v3, p1

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 14
    return-void
    .line 17
.end method

.method public final logEndMotionEvent(Ljava/lang/String;ZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/shade/ShadeLogger$logEndMotionEvent$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logEndMotionEvent$2;

    .line 4
    const-string/jumbo v2, "systemui.shade"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 12
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 16
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 19
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 25
    return-void
    .line 28
.end method

.method public final logExpansionChanged(Ljava/lang/String;FZZF)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    new-instance v1, Lcom/android/systemui/shade/ShadeLogger$logExpansionChanged$2;

    .line 4
    invoke-direct {v1, p5}, Lcom/android/systemui/shade/ShadeLogger$logExpansionChanged$2;-><init>(F)V

    .line 6
    const-string/jumbo v2, "systemui.shade"

    .line 9
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 12
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 15
    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 19
    float-to-double p1, p2

    .line 22
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 23
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 26
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 29
    float-to-long p1, p5

    .line 32
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 36
    return-void
    .line 39
.end method

.method public final logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/shade/ShadeLogger$logMotionEvent$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logMotionEvent$2;

    .line 4
    const-string/jumbo v2, "systemui.shade"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 12
    move-result-object v0

    .line 15
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 19
    move-result-wide v1

    .line 22
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 26
    move-result-wide v1

    .line 29
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong2(J)V

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 33
    move-result p2

    .line 36
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    .line 40
    move-result p2

    .line 43
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 47
    move-result p1

    .line 50
    float-to-double p1, p1

    .line 51
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 55
    return-void
    .line 58
.end method

.method public final logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/shade/ShadeLogger$logMotionEventStatusBarState$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logMotionEventStatusBarState$2;

    .line 4
    const-string/jumbo v2, "systemui.shade"

    .line 6
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 9
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 12
    move-result-object v0

    .line 15
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 19
    move-result-wide v1

    .line 22
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 26
    move-result-wide v1

    .line 29
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/log/LogMessage;->setLong2(J)V

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 33
    move-result p3

    .line 36
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 37
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setInt2(I)V

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 43
    move-result p1

    .line 46
    float-to-double p1, p1

    .line 47
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/log/LogMessage;->setDouble1(D)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 51
    return-void
    .line 54
.end method

.method public final logUpdateNotificationPanelTouchState(ZZZZZZ)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 2
    sget-object v1, Lcom/android/systemui/shade/ShadeLogger$logUpdateNotificationPanelTouchState$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logUpdateNotificationPanelTouchState$2;

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 7
    const-string/jumbo v3, "systemui.shade"

    .line 9
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 12
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 16
    invoke-interface {v0, p2}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 19
    invoke-interface {v0, p3}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 22
    invoke-interface {v0, p4}, Lcom/android/systemui/log/LogMessage;->setBool4(Z)V

    .line 25
    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 32
    invoke-static {p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 38
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 42
    return-void
    .line 45
.end method

.method public final v(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    const-string/jumbo v1, "systemui.shade"

    .line 4
    sget-object v2, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 7
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0x8

    .line 10
    const/4 v6, 0x0

    .line 12
    move-object v3, p1

    .line 13
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 14
    return-void
    .line 17
.end method
