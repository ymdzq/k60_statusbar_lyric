.class public Lmiuix/animation/controller/FolmeVisible;
.super Lmiuix/animation/controller/FolmeBase;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/animation/IVisibleStyle;


# instance fields
.field private final mDefConfig:Lmiuix/animation/base/AnimConfig;

.field private mHasMove:Z

.field private mHasScale:Z

.field private mSetBound:Z


# direct methods
.method public varargs constructor <init>([Lmiuix/animation/IAnimTarget;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeBase;-><init>([Lmiuix/animation/IAnimTarget;)V

    .line 2
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 5
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 7
    new-instance v0, Lmiuix/animation/controller/FolmeVisible$1;

    .line 10
    invoke-direct {v0, p0}, Lmiuix/animation/controller/FolmeVisible$1;-><init>(Lmiuix/animation/controller/FolmeVisible;)V

    .line 12
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 19
    move-result-object p1

    .line 22
    iput-object p1, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 23
    const/4 p1, 0x1

    .line 25
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeVisible;->useAutoAlpha(Z)Lmiuix/animation/IVisibleStyle;

    .line 26
    return-void
    .line 29
.end method

.method public static synthetic access$000(Lmiuix/animation/controller/FolmeVisible;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/animation/controller/FolmeVisible;->mSetBound:Z

    .line 2
    return p0
    .line 4
.end method

.method private varargs getConfig(Lmiuix/animation/IVisibleStyle$VisibleType;[Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, -0x2

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-boolean v3, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    .line 8
    if-nez v3, :cond_1

    .line 10
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 12
    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 14
    if-ne p1, v3, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 18
    new-array p1, p1, [F

    .line 19
    const/4 v1, 0x0

    .line 21
    const/high16 v2, 0x43960000    # 300.0f

    .line 22
    aput v2, p1, v1

    .line 24
    const/16 v1, 0x10

    .line 26
    invoke-static {v1, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 28
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-array p1, v1, [F

    .line 33
    fill-array-data p1, :array_0

    .line 35
    invoke-static {v2, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 38
    move-result-object p1

    .line 41
    :goto_0
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 42
    goto :goto_4

    .line 45
    :cond_1
    if-eqz v0, :cond_3

    .line 46
    iget-boolean v3, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    .line 48
    if-nez v3, :cond_3

    .line 50
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 52
    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 54
    if-ne p1, v3, :cond_2

    .line 56
    new-array p1, v1, [F

    .line 58
    fill-array-data p1, :array_1

    .line 60
    invoke-static {v2, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 63
    move-result-object p1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    new-array p1, v1, [F

    .line 68
    fill-array-data p1, :array_2

    .line 70
    invoke-static {v2, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 73
    move-result-object p1

    .line 76
    :goto_1
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 77
    goto :goto_4

    .line 80
    :cond_3
    if-nez v0, :cond_5

    .line 81
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 83
    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 85
    if-ne p1, v3, :cond_4

    .line 87
    new-array p1, v1, [F

    .line 89
    fill-array-data p1, :array_3

    .line 91
    invoke-static {v2, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 94
    move-result-object p1

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    new-array p1, v1, [F

    .line 99
    fill-array-data p1, :array_4

    .line 101
    invoke-static {v2, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 104
    move-result-object p1

    .line 107
    :goto_2
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 108
    goto :goto_4

    .line 111
    :cond_5
    iget-object v0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 112
    sget-object v3, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 114
    if-ne p1, v3, :cond_6

    .line 116
    new-array p1, v1, [F

    .line 118
    fill-array-data p1, :array_5

    .line 120
    invoke-static {v2, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 123
    move-result-object p1

    .line 126
    goto :goto_3

    .line 127
    :cond_6
    new-array p1, v1, [F

    .line 128
    fill-array-data p1, :array_6

    .line 130
    invoke-static {v2, p1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 133
    move-result-object p1

    .line 136
    :goto_3
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    .line 137
    :goto_4
    iget-object p0, p0, Lmiuix/animation/controller/FolmeVisible;->mDefConfig:Lmiuix/animation/base/AnimConfig;

    .line 140
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 142
    move-result-object p0

    .line 145
    invoke-static {p2, p0}, Lmiuix/animation/utils/CommonUtils;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 146
    move-result-object p0

    .line 149
    check-cast p0, [Lmiuix/animation/base/AnimConfig;

    .line 150
    return-object p0

    .line 152
    nop

    .line 153
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e19999a    # 0.15f
    .end array-data

    .line 154
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3eb33333    # 0.35f
    .end array-data

    .line 162
    :array_2
    .array-data 4
        0x3f400000    # 0.75f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 170
    :array_3
    .array-data 4
        0x3f400000    # 0.75f
        0x3eb33333    # 0.35f
    .end array-data

    .line 178
    :array_4
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
    .end array-data

    .line 186
    :array_5
    .array-data 4
        0x3f266666    # 0.65f
        0x3eb33333    # 0.35f
    .end array-data

    .line 194
    :array_6
    .array-data 4
        0x3f400000    # 0.75f
        0x3e800000    # 0.25f
    .end array-data
    .line 202
.end method

.method private varargs getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;
    .locals 0

    .line 1
    array-length p0, p1

    .line 2
    if-lez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 5
    aget-object p0, p1, p0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 9
    :goto_0
    return-object p0
    .line 11
.end method


# virtual methods
.method public clean()V
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/animation/controller/FolmeBase;->clean()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    .line 6
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    .line 8
    return-void
    .line 10
.end method

.method public varargs hide([Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 4
    invoke-direct {p0, v1, p1}, Lmiuix/animation/controller/FolmeVisible;->getConfig(Lmiuix/animation/IVisibleStyle$VisibleType;[Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {v0, v1, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 10
    return-void
    .line 13
.end method

.method public varargs setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeVisible;->getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 4
    move-result-object p2

    .line 7
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 8
    move-result-object p2

    .line 11
    sget-object v0, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 12
    float-to-double v1, p1

    .line 14
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 15
    return-object p0
    .line 18
.end method

.method public setBound(IIII)Lmiuix/animation/IVisibleStyle;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mSetBound:Z

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 5
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 7
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 9
    move-result-object v0

    .line 12
    sget-object v1, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    .line 13
    int-to-double v2, p1

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 16
    move-result-object p1

    .line 19
    sget-object v0, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    .line 20
    int-to-double v1, p2

    .line 22
    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 23
    move-result-object p1

    .line 26
    sget-object p2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    .line 27
    int-to-double v0, p3

    .line 29
    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 30
    move-result-object p1

    .line 33
    sget-object p2, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    .line 34
    int-to-double p3, p4

    .line 36
    invoke-virtual {p1, p2, p3, p4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 37
    return-object p0
    .line 40
.end method

.method public setFlags(J)Lmiuix/animation/IVisibleStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    invoke-interface {v0, p1, p2}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    .line 4
    return-object p0
    .line 7
.end method

.method public setHide()Lmiuix/animation/IVisibleStyle;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 4
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 6
    return-object p0
    .line 9
.end method

.method public setMove(II)Lmiuix/animation/IVisibleStyle;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    filled-new-array {v0}, [Lmiuix/animation/IVisibleStyle$VisibleType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lmiuix/animation/controller/FolmeVisible;->setMove(II[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    return-object p0
.end method

.method public varargs setMove(II[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;
    .locals 6

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasMove:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    invoke-direct {p0, p3}, Lmiuix/animation/controller/FolmeVisible;->getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;

    move-result-object p3

    invoke-interface {v0, p3}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    sget-object v0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    new-array v3, v2, [J

    const-wide/16 v4, 0x1

    aput-wide v4, v3, v1

    .line 4
    invoke-virtual {p3, v0, p1, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p3, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    new-array v0, v2, [J

    aput-wide v4, v0, v1

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    :cond_2
    return-object p0
.end method

.method public varargs setScale(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeVisible;->mHasScale:Z

    .line 3
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 5
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeVisible;->getType([Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 7
    move-result-object p2

    .line 10
    invoke-interface {v0, p2}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 11
    move-result-object p2

    .line 14
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 15
    float-to-double v1, p1

    .line 17
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 18
    move-result-object p1

    .line 21
    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 22
    invoke-virtual {p1, p2, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 24
    return-object p0
    .line 27
.end method

.method public setShow()Lmiuix/animation/IVisibleStyle;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 4
    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 6
    return-object p0
    .line 9
.end method

.method public setShowDelay(J)Lmiuix/animation/IVisibleStyle;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 4
    invoke-interface {v0, v1}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 10
    move-result-object v0

    .line 13
    iput-wide p1, v0, Lmiuix/animation/base/AnimConfig;->delay:J

    .line 14
    return-object p0
    .line 16
.end method

.method public varargs show([Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 2
    sget-object v1, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 4
    invoke-direct {p0, v1, p1}, Lmiuix/animation/controller/FolmeVisible;->getConfig(Lmiuix/animation/IVisibleStyle$VisibleType;[Lmiuix/animation/base/AnimConfig;)[Lmiuix/animation/base/AnimConfig;

    .line 6
    move-result-object p0

    .line 9
    invoke-interface {v0, v1, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 10
    return-void
    .line 13
.end method

.method public useAutoAlpha(Z)Lmiuix/animation/IVisibleStyle;
    .locals 7

    .line 1
    sget-object v0, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 2
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 4
    const-wide/16 v2, 0x0

    .line 6
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 12
    sget-object v6, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 14
    invoke-interface {p1, v6}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p1, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 20
    move-result-object p1

    .line 23
    invoke-virtual {p1, v0, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 24
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 27
    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 29
    invoke-interface {p1, v4}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 31
    move-result-object p1

    .line 34
    invoke-virtual {p1, v1}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 35
    move-result-object p1

    .line 38
    invoke-virtual {p1, v0, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 39
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 43
    sget-object v6, Lmiuix/animation/IVisibleStyle$VisibleType;->SHOW:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 45
    invoke-interface {p1, v6}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 47
    move-result-object p1

    .line 50
    invoke-virtual {p1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 51
    move-result-object p1

    .line 54
    invoke-virtual {p1, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 55
    iget-object p1, p0, Lmiuix/animation/controller/FolmeBase;->mState:Lmiuix/animation/controller/IFolmeStateStyle;

    .line 58
    sget-object v4, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    .line 60
    invoke-interface {p1, v4}, Lmiuix/animation/controller/IFolmeStateStyle;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 62
    move-result-object p1

    .line 65
    invoke-virtual {p1, v0}, Lmiuix/animation/controller/AnimState;->remove(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    .line 66
    move-result-object p1

    .line 69
    invoke-virtual {p1, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 70
    :goto_0
    return-object p0
    .line 73
.end method
