.class public Lmiuix/animation/controller/FolmeBlink;
.super Lmiuix/animation/controller/FolmeBase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/animation/IBlinkStyle;
.implements Lmiuix/animation/internal/BlinkStateSubject;


# instance fields
.field flashcount:I

.field private mBlinkStateObserverList:Ljava/util/List;

.field private mBlinkTask:Ljava/lang/Runnable;

.field private mInterval:J

.field private mLimitCount:I

.field private mStopConfig:Lmiuix/animation/base/AnimConfig;

.field private mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

.field private mToNormalConfig:Lmiuix/animation/base/AnimConfig;


# direct methods
.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 2
    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lmiuix/animation/controller/FolmeBlink;->mInterval:J

    .line 7
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkStateObserverList:Ljava/util/List;

    .line 17
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 19
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 21
    new-array v1, p1, [F

    .line 24
    const/high16 v2, 0x44160000    # 600.0f

    .line 26
    const/4 v3, 0x0

    .line 28
    aput v2, v1, v3

    .line 29
    const/4 v2, 0x6

    .line 31
    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 32
    move-result-object v0

    .line 35
    iput-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    .line 36
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 38
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 40
    new-array v1, p1, [F

    .line 43
    const/high16 v4, 0x43c80000    # 400.0f

    .line 45
    aput v4, v1, v3

    .line 47
    const/16 v4, 0x10

    .line 49
    invoke-virtual {v0, v4, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 51
    move-result-object v0

    .line 54
    iput-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 55
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 57
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 59
    new-array p1, p1, [F

    .line 62
    const/high16 v1, 0x42c80000    # 100.0f

    .line 64
    aput v1, p1, v3

    .line 66
    invoke-virtual {v0, v2, p1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 68
    move-result-object p1

    .line 71
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mStopConfig:Lmiuix/animation/base/AnimConfig;

    .line 72
    new-instance p1, Lmiuix/animation/controller/FolmeBlink$1;

    .line 74
    invoke-direct {p1, p0}, Lmiuix/animation/controller/FolmeBlink$1;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 76
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkTask:Ljava/lang/Runnable;

    .line 79
    iput v3, p0, Lmiuix/animation/controller/FolmeBlink;->flashcount:I

    .line 81
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeBlink;->setTintColor()V

    .line 83
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 86
    new-instance v0, Lmiuix/animation/controller/FolmeBlink$6;

    .line 88
    invoke-direct {v0, p0}, Lmiuix/animation/controller/FolmeBlink$6;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 90
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 93
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 97
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    .line 100
    new-instance v0, Lmiuix/animation/controller/FolmeBlink$7;

    .line 102
    invoke-direct {v0, p0}, Lmiuix/animation/controller/FolmeBlink$7;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 104
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 107
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 111
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mStopConfig:Lmiuix/animation/base/AnimConfig;

    .line 114
    new-instance v0, Lmiuix/animation/controller/FolmeBlink$8;

    .line 116
    invoke-direct {v0, p0}, Lmiuix/animation/controller/FolmeBlink$8;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 118
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 121
    move-result-object p0

    .line 124
    invoke-virtual {p1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 125
    return-void
    .line 128
.end method

.method public static synthetic access$000(Lmiuix/animation/controller/FolmeBlink;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lmiuix/animation/controller/FolmeBlink;)Lmiuix/animation/base/AnimConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$200(Lmiuix/animation/controller/FolmeBlink;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    .line 2
    return p0
    .line 4
.end method

.method private setTintColor()V
    .locals 5

    .line 1
    const/16 v0, 0x14

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 5
    move-result v0

    .line 8
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 9
    invoke-interface {v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 11
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    instance-of v2, v1, Landroid/view/View;

    .line 19
    if-eqz v2, :cond_0

    .line 21
    check-cast v1, Landroid/view/View;

    .line 23
    const v0, 0x7f06068b    # @color/miuix_folme_color_blink_tint '#14000000'

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 32
    move-result v0

    .line 35
    :cond_0
    sget-object v1, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    .line 36
    iget-object v2, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 38
    sget-object v3, Lmiuix/animation/IBlinkStyle$BlinkType;->HIGHLIGHT:Lmiuix/animation/IBlinkStyle$BlinkType;

    .line 40
    invoke-interface {v2, v3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 42
    move-result-object v2

    .line 45
    int-to-double v3, v0

    .line 46
    invoke-virtual {v2, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 47
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 50
    sget-object v0, Lmiuix/animation/IBlinkStyle$BlinkType;->NORMAL:Lmiuix/animation/IBlinkStyle$BlinkType;

    .line 52
    invoke-interface {p0, v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 54
    move-result-object p0

    .line 57
    const-wide/16 v2, 0x0

    .line 58
    invoke-virtual {p0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 60
    return-void
    .line 63
.end method


# virtual methods
.method public attach(Lmiuix/animation/internal/BlinkStateObserver;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkStateObserverList:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public detach(Lmiuix/animation/internal/BlinkStateObserver;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkStateObserverList:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public notifyState(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkStateObserverList:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lmiuix/animation/internal/BlinkStateObserver;

    .line 18
    invoke-interface {v0, p1}, Lmiuix/animation/internal/BlinkStateObserver;->updateBlinkState(Z)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public resetConfig()Lmiuix/animation/IBlinkStyle;
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [F

    .line 5
    const/high16 v3, 0x44160000    # 600.0f

    .line 7
    const/4 v4, 0x0

    .line 9
    aput v3, v2, v4

    .line 10
    const/4 v3, 0x6

    .line 12
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 13
    move-result-object v0

    .line 16
    new-instance v2, Lmiuix/animation/controller/FolmeBlink$2;

    .line 17
    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeBlink$2;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 19
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 22
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 26
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 29
    new-array v2, v1, [F

    .line 31
    const/high16 v3, 0x43c80000    # 400.0f

    .line 33
    aput v3, v2, v4

    .line 35
    const/16 v3, 0x10

    .line 37
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 39
    move-result-object v0

    .line 42
    new-instance v2, Lmiuix/animation/controller/FolmeBlink$3;

    .line 43
    invoke-direct {v2, p0}, Lmiuix/animation/controller/FolmeBlink$3;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 45
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 48
    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 52
    const-wide/16 v2, 0x0

    .line 55
    iput-wide v2, p0, Lmiuix/animation/controller/FolmeBlink;->mInterval:J

    .line 57
    iput v1, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    .line 59
    return-object p0
    .line 61
.end method

.method public setInterval(J)Lmiuix/animation/IBlinkStyle;
    .locals 0

    .line 1
    iput-wide p1, p0, Lmiuix/animation/controller/FolmeBlink;->mInterval:J

    .line 2
    return-object p0
    .line 4
.end method

.method public setLimitCount(I)Lmiuix/animation/IBlinkStyle;
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    .line 2
    return-object p0
    .line 4
.end method

.method public setToHighlightConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mToHighlightConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    new-instance v0, Lmiuix/animation/controller/FolmeBlink$4;

    .line 4
    invoke-direct {v0, p0}, Lmiuix/animation/controller/FolmeBlink$4;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 6
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 13
    return-object p0
    .line 16
.end method

.method public setToNormalConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;
    .locals 1

    .line 1
    iput-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mToNormalConfig:Lmiuix/animation/base/AnimConfig;

    .line 2
    new-instance v0, Lmiuix/animation/controller/FolmeBlink$5;

    .line 4
    invoke-direct {v0, p0}, Lmiuix/animation/controller/FolmeBlink$5;-><init>(Lmiuix/animation/controller/FolmeBlink;)V

    .line 6
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 13
    return-object p0
    .line 16
.end method

.method public varargs startBlink(I[Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 7
    iput p1, p0, Lmiuix/animation/controller/FolmeBlink;->mLimitCount:I

    .line 8
    array-length p1, p2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 9
    aget-object p1, p2, v0

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->setToHighlightConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;

    .line 10
    array-length p1, p2

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 11
    aget-object p1, p2, v1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->setToNormalConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;

    :cond_0
    new-array p1, v0, [Lmiuix/animation/base/AnimConfig;

    .line 12
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->startBlink([Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method public varargs startBlink([Lmiuix/animation/base/AnimConfig;)V
    .locals 3

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeBlink;->setToHighlightConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;

    .line 3
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 4
    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->setToNormalConfig(Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IBlinkStyle;

    .line 5
    :cond_0
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-interface {p1}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p1

    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    iget-object v0, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkTask:Ljava/lang/Runnable;

    iget v1, p0, Lmiuix/animation/controller/FolmeBlink;->flashcount:I

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lmiuix/animation/controller/FolmeBlink;->mInterval:J

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public stopBlink()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    invoke-interface {v0}, Lmiuix/animation/controller/IFolmeStateStyle;->getTarget()Lmiuix/animation/IAnimTarget;

    .line 4
    move-result-object v0

    .line 7
    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 8
    iget-object v1, p0, Lmiuix/animation/controller/FolmeBlink;->mBlinkTask:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 15
    sget-object v1, Lmiuix/animation/IBlinkStyle$BlinkType;->NORMAL:Lmiuix/animation/IBlinkStyle$BlinkType;

    .line 17
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 19
    move-result-object v1

    .line 22
    iget-object p0, p0, Lmiuix/animation/controller/FolmeBlink;->mStopConfig:Lmiuix/animation/base/AnimConfig;

    .line 23
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 25
    move-result-object p0

    .line 28
    invoke-interface {v0, v1, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 29
    return-void
    .line 32
.end method
