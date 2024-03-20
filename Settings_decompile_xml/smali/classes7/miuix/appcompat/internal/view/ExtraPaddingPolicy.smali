.class public Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;
.super Ljava/lang/Object;
.source "ExtraPaddingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/ExtraPaddingPolicy$Builder;
    }
.end annotation


# static fields
.field public static DEBUGGABLE:Z = true


# instance fields
.field private mEnable:Z

.field private mIsFullWindow:Z

.field private mLastContainerHeight:I

.field private mLastContainerWidth:I

.field private mLastWindowHeightDp:I

.field private mLastWindowWidthDp:I

.field private mLevel:I

.field private mLevelThreshHolds:[I

.field private mLevelThreshHoldsInMultiColumns:[I

.field private mPaddingsDp:[I

.field private mPaddingsDpInMultiColumns:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowWidthDp:I

    .line 21
    iput v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowHeightDp:I

    .line 22
    iput v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerWidth:I

    .line 23
    iput v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerHeight:I

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHolds:[I

    .line 31
    iput-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHoldsInMultiColumns:[I

    return-void
.end method

.method static synthetic access$002(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I
    .locals 0

    .line 13
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHolds:[I

    return-object p1
.end method

.method static synthetic access$102(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I
    .locals 0

    .line 13
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mPaddingsDp:[I

    return-object p1
.end method

.method static synthetic access$202(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I
    .locals 0

    .line 13
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHoldsInMultiColumns:[I

    return-object p1
.end method

.method static synthetic access$302(Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;[I)[I
    .locals 0

    .line 13
    iput-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mPaddingsDpInMultiColumns:[I

    return-object p1
.end method


# virtual methods
.method public applyExtraPadding(Landroid/view/View;)V
    .locals 6

    .line 41
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mEnable:Z

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v4, v5

    .line 47
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->getExtraPaddingDp()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v4

    float-to-int p0, p0

    .line 48
    invoke-static {p1}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    sub-int/2addr v0, p0

    sub-int/2addr v2, p0

    goto :goto_0

    :cond_0
    add-int/2addr v0, p0

    add-int/2addr v2, p0

    .line 55
    :goto_0
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method

.method public getExtraPaddingDp()I
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->getExtraPaddingDp(Z)I

    move-result p0

    return p0
.end method

.method public getExtraPaddingDp(Z)I
    .locals 1

    .line 73
    iget-boolean v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mPaddingsDpInMultiColumns:[I

    if-nez v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget p0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    aget p0, v0, p0

    goto :goto_1

    .line 74
    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mPaddingsDp:[I

    iget p0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    aget p0, v0, p0

    :goto_1
    if-nez p0, :cond_2

    return p0

    :cond_2
    if-eqz p1, :cond_3

    return p0

    :cond_3
    add-int/lit8 p0, p0, 0x1c

    return p0
.end method

.method public getLevel()I
    .locals 0

    .line 89
    iget p0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    return p0
.end method

.method public isEnable()Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mEnable:Z

    return p0
.end method

.method public onContainerSizeChanged(IIIIFZ)V
    .locals 4

    .line 96
    iget v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerWidth:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowWidthDp:I

    if-eq v0, p1, :cond_e

    .line 97
    :cond_0
    sget-boolean v0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->DEBUGGABLE:Z

    const-string v1, "ExtraPaddingPolicy"

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContainerSizeChanged new Win w = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " new C w = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContainerSizeChanged old Win w = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowWidthDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowHeightDp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " old C w = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContainerSizeChanged density "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " isInFloatingWindow = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_1
    iput p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowWidthDp:I

    .line 108
    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowHeightDp:I

    .line 109
    iput p3, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerWidth:I

    .line 110
    iput p4, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastContainerHeight:I

    int-to-float p2, p3

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr p2, p4

    int-to-float p1, p1

    mul-float/2addr p1, p5

    div-float/2addr p2, p1

    const p1, 0x3f733333    # 0.95f

    cmpl-float p1, p2, p1

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-gez p1, :cond_3

    if-eqz p6, :cond_2

    goto :goto_0

    :cond_2
    move p1, p2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, p4

    .line 112
    :goto_1
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    .line 113
    sget-boolean p1, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->DEBUGGABLE:Z

    if-eqz p1, :cond_4

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onContainerSizeChanged isFullWindow "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p6, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_4
    iget p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLastWindowHeightDp:I

    const/16 p6, 0x226

    if-gt p1, p6, :cond_5

    .line 117
    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    return-void

    .line 120
    :cond_5
    iget-boolean p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mIsFullWindow:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHoldsInMultiColumns:[I

    if-nez p1, :cond_6

    goto :goto_3

    .line 138
    :cond_6
    :goto_2
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHoldsInMultiColumns:[I

    array-length p6, p1

    if-ge p2, p6, :cond_e

    .line 139
    aget p6, p1, p2

    int-to-float p6, p6

    mul-float/2addr p6, p5

    float-to-int p6, p6

    if-nez p2, :cond_7

    if-ge p3, p6, :cond_7

    .line 141
    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    goto :goto_4

    :cond_7
    if-gt p3, p6, :cond_8

    .line 145
    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    goto :goto_4

    .line 148
    :cond_8
    array-length p1, p1

    sub-int/2addr p1, p4

    if-ne p2, p1, :cond_9

    add-int/lit8 p1, p2, 0x1

    .line 149
    iput p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 122
    :cond_a
    :goto_3
    iget-object p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevelThreshHolds:[I

    array-length p6, p1

    if-ge p2, p6, :cond_e

    .line 123
    aget p6, p1, p2

    int-to-float p6, p6

    mul-float/2addr p6, p5

    float-to-int p6, p6

    if-nez p2, :cond_b

    if-ge p3, p6, :cond_b

    .line 125
    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    goto :goto_4

    :cond_b
    if-gt p3, p6, :cond_c

    .line 129
    iput p2, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    goto :goto_4

    .line 132
    :cond_c
    array-length p1, p1

    sub-int/2addr p1, p4

    if-ne p2, p1, :cond_d

    add-int/lit8 p1, p2, 0x1

    .line 133
    iput p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mLevel:I

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_e
    :goto_4
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lmiuix/appcompat/internal/view/ExtraPaddingPolicy;->mEnable:Z

    return-void
.end method
