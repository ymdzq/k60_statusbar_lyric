.class public final Lcom/android/systemui/shared/clocks/AnimatableClockView;
.super Landroid/widget/TextView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final MOVE_LEFT_DELAYS:Ljava/util/List;

.field public static final MOVE_RIGHT_DELAYS:Ljava/util/List;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final chargeAnimationDelay:I

.field public descFormat:Ljava/lang/CharSequence;

.field public dozingColor:I

.field public final dozingWeightInternal:I

.field public format:Ljava/lang/CharSequence;

.field public final glyphFilter:Lkotlin/jvm/functions/Function2;

.field public final glyphOffsets:Ljava/util/List;

.field public isAnimationEnabled:Z

.field public final isSingleLineInternal:Z

.field public lockScreenColor:I

.field public final lockScreenWeightInternal:I

.field public logBuffer:Lcom/android/systemui/log/LogBuffer;

.field public onTextAnimatorInitialized:Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;

.field public textAnimator:Lcom/android/systemui/animation/TextAnimator;

.field public textAnimatorFactory:Lkotlin/jvm/functions/Function2;

.field public final time:Ljava/util/Calendar;

.field public timeOverrideInMillis:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    sput-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/android/app/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    .line 17
    sput-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 19
    const/4 v0, 0x0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 30
    const/4 v2, 0x2

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v2

    .line 35
    const/4 v3, 0x3

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v3

    .line 40
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    .line 41
    move-result-object v4

    .line 44
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    move-result-object v4

    .line 48
    sput-object v4, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_LEFT_DELAYS:Ljava/util/List;

    .line 49
    filled-new-array {v1, v0, v3, v2}, [Ljava/lang/Integer;

    .line 51
    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    move-result-object v0

    .line 58
    sput-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_RIGHT_DELAYS:Ljava/util/List;

    .line 59
    return-void
    .line 61
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/shared/clocks/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/shared/clocks/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/shared/clocks/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->time:Ljava/util/Calendar;

    .line 7
    sget-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$textAnimatorFactory$1;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$textAnimatorFactory$1;

    iput-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimatorFactory:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    .line 9
    sget-object v1, Lcom/android/systemui/customization/R$styleable;->AnimatableClockView:[I

    .line 10
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x64

    .line 11
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingWeightInternal:I

    const/16 v0, 0x12c

    const/4 v2, 0x2

    .line 12
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenWeightInternal:I

    const/16 v0, 0xc8

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->chargeAnimationDelay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    sget-object v0, Landroid/R$styleable;->TextView:[I

    .line 16
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x20

    .line 17
    :try_start_1
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    iput-boolean p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isSingleLineInternal:Z

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshFormat(Z)V

    const/4 p1, 0x0

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {p2, p3, p4, v0}, [Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphOffsets:Ljava/util/List;

    .line 22
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p2, p3, p4, p1}, [Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    new-instance p1, Lcom/android/systemui/shared/clocks/AnimatableClockView$glyphFilter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView$glyphFilter$1;-><init>(Lcom/android/systemui/shared/clocks/AnimatableClockView;)V

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphFilter:Lkotlin/jvm/functions/Function2;

    return-void

    :catchall_0
    move-exception p0

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :catchall_1
    move-exception p0

    .line 25
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/clocks/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final getMoveToCenterDelays()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    .line 2
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    sget-object p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_LEFT_DELAYS:Ljava/util/List;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_RIGHT_DELAYS:Ljava/util/List;

    .line 11
    :goto_0
    return-object p0
    .line 13
.end method

.method private final getMoveToSideDelays()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    .line 2
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    sget-object p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_RIGHT_DELAYS:Ljava/util/List;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    sget-object p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_LEFT_DELAYS:Ljava/util/List;

    .line 11
    :goto_0
    return-object p0
    .line 13
.end method

.method public static synthetic getTextAnimatorFactory$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getTimeOverrideInMillis$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic isAnimationEnabled$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final animateDoze(ZZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 6
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 8
    const-string v3, "animateDoze"

    .line 10
    const/4 v4, 0x0

    .line 12
    const/16 v5, 0x8

    .line 13
    const/4 v6, 0x0

    .line 15
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 16
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getDozingWeight()I

    .line 21
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getLockScreenWeight()I

    .line 26
    move-result v0

    .line 29
    :goto_0
    move v2, v0

    .line 30
    if-eqz p1, :cond_2

    .line 31
    iget p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingColor:I

    .line 33
    goto :goto_1

    .line 35
    :cond_2
    iget p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    .line 36
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v3

    .line 41
    if-eqz p2, :cond_3

    .line 42
    iget-boolean p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    .line 44
    if-eqz p1, :cond_3

    .line 46
    const/4 p1, 0x1

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    const/4 p1, 0x0

    .line 50
    :goto_2
    move v4, p1

    .line 51
    const-wide/16 v5, 0x12c

    .line 52
    const-wide/16 v7, 0x0

    .line 54
    const/4 v9, 0x0

    .line 56
    move-object v1, p0

    .line 57
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZJJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    .line 58
    return-void
    .line 61
.end method

.method public final animateFoldAppear(Z)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    sget-object v2, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 15
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 17
    const-string v4, "animateFoldAppear"

    .line 19
    const/4 v5, 0x0

    .line 21
    const/16 v6, 0x8

    .line 22
    const/4 v7, 0x0

    .line 24
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 25
    :cond_1
    iget v1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenWeightInternal:I

    .line 28
    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    const-wide/16 v4, 0x0

    .line 37
    const-wide/16 v6, 0x0

    .line 39
    const/4 v8, 0x0

    .line 41
    move-object v0, p0

    .line 42
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZJJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    .line 43
    iget v1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingWeightInternal:I

    .line 46
    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingColor:I

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v2

    .line 53
    if-eqz p1, :cond_2

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    .line 56
    if-eqz v0, :cond_2

    .line 58
    const/4 v0, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x0

    .line 62
    :goto_0
    move v3, v0

    .line 63
    sget-object v4, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 64
    const-wide/16 v5, 0x258

    .line 66
    const-wide/16 v7, 0x0

    .line 68
    const/4 v10, 0x0

    .line 70
    move-object v0, p0

    .line 71
    move-object v9, v10

    .line 72
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZLandroid/animation/TimeInterpolator;JJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    .line 73
    return-void
    .line 76
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getAlpha()F

    .line 9
    move-result v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "    alpha="

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    .line 30
    move-result v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "    measuredWidth="

    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 51
    move-result v0

    .line 54
    const-string v1, "    measuredHeight="

    .line 55
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isSingleLineInternal:Z

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    const-string v2, "    singleLineInternal="

    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 79
    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    const-string v2, "    currText="

    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    .line 100
    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    const-string v2, "    currTimeContextDesc="

    .line 106
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingWeightInternal:I

    .line 121
    const-string v1, "    dozingWeightInternal="

    .line 123
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 125
    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenWeightInternal:I

    .line 128
    const-string v1, "    lockScreenWeightInternal="

    .line 130
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 132
    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingColor:I

    .line 135
    const-string v1, "    dozingColor="

    .line 137
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 139
    iget v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    .line 142
    const-string v1, "    lockScreenColor="

    .line 144
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 146
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->time:Ljava/util/Calendar;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "    time="

    .line 153
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p0

    .line 164
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    return-void
    .line 168
.end method

.method public final getBottom()F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 8
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
    .line 18
.end method

.method public final getDozingWeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 10
    const/16 v1, 0x64

    .line 12
    if-le v0, v1, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingWeightInternal:I

    .line 19
    if-eqz v0, :cond_1

    .line 21
    add-int/lit8 p0, p0, 0x64

    .line 23
    :cond_1
    return p0
    .line 25
.end method

.method public final getLockScreenWeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 10
    const/16 v1, 0x64

    .line 12
    if-le v0, v1, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenWeightInternal:I

    .line 19
    if-eqz v0, :cond_1

    .line 21
    add-int/lit8 p0, p0, 0x64

    .line 23
    :cond_1
    return p0
    .line 25
.end method

.method public final getLogBuffer()Lcom/android/systemui/log/LogBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTextAnimatorFactory()Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimatorFactory:Lkotlin/jvm/functions/Function2;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTimeOverrideInMillis()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->timeOverrideInMillis:Ljava/lang/Long;

    .line 2
    return-object p0
    .line 4
.end method

.method public final invalidate()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 9
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 11
    const-string v3, "invalidate"

    .line 13
    const/4 v4, 0x0

    .line 15
    const/16 v5, 0x8

    .line 16
    const/4 v6, 0x0

    .line 18
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final offsetGlyphsForStepClockAnimation(FII)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    if-gez p3, :cond_1

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    if-lez p3, :cond_1

    .line 13
    :goto_0
    move p3, v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move p3, v1

    .line 17
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    .line 18
    move-result v0

    .line 21
    sub-int/2addr v0, p2

    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    .line 23
    move-result p2

    .line 26
    if-eqz p2, :cond_2

    .line 27
    const/4 v2, -0x1

    .line 29
    :cond_2
    :goto_2
    const/4 p2, 0x4

    .line 30
    if-ge v1, p2, :cond_4

    .line 31
    if-eqz p3, :cond_3

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getMoveToCenterDelays()Ljava/util/List;

    .line 35
    move-result-object p2

    .line 38
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object p2

    .line 42
    check-cast p2, Ljava/lang/Number;

    .line 43
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 45
    move-result p2

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getMoveToSideDelays()Ljava/util/List;

    .line 50
    move-result-object p2

    .line 53
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 57
    check-cast p2, Ljava/lang/Number;

    .line 58
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 60
    move-result p2

    .line 63
    :goto_3
    const v3, 0x3d072b02    # 0.033f

    .line 64
    mul-float/2addr p2, v3

    .line 67
    sget-object v3, Lcom/android/systemui/shared/clocks/AnimatableClockView;->MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 68
    const v4, 0x3f66a7f0    # 0.901f

    .line 70
    add-float/2addr v4, p2

    .line 73
    const/4 v5, 0x0

    .line 74
    const/high16 v6, 0x3f800000    # 1.0f

    .line 75
    invoke-static {v5, v6, p2, v4, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    .line 77
    move-result p2

    .line 80
    check-cast v3, Landroid/view/animation/PathInterpolator;

    .line 81
    invoke-virtual {v3, p2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 83
    move-result p2

    .line 86
    int-to-float v3, v0

    .line 87
    mul-float/2addr p2, v3

    .line 88
    sub-float/2addr p2, v3

    .line 89
    iget-object v3, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphOffsets:Ljava/util/List;

    .line 90
    int-to-float v4, v2

    .line 92
    mul-float/2addr v4, p2

    .line 93
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 94
    move-result-object p2

    .line 97
    invoke-interface {v3, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 101
    goto :goto_2

    .line 103
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->invalidate()V

    .line 104
    return-void
    .line 107
.end method

.method public final onAttachedToWindow()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 9
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 11
    const-string v3, "onAttachedToWindow"

    .line 13
    const/4 v4, 0x0

    .line 15
    const/16 v5, 0x8

    .line 16
    const/4 v6, 0x0

    .line 18
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 26
    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshFormat(Z)V

    .line 30
    return-void
    .line 33
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    .line 2
    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    .line 6
    if-eqz v0, :cond_5

    .line 8
    iget-object v0, v0, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    .line 10
    iget-object v1, v0, Lcom/android/systemui/animation/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    .line 12
    iget-object v2, v0, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    .line 14
    iget v3, v0, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    .line 16
    iget-object v7, v0, Lcom/android/systemui/animation/TextInterpolator;->tmpPaint:Landroid/text/TextPaint;

    .line 18
    invoke-static {v1, v2, v3, v7}, Lcom/android/systemui/animation/TextInterpolator;->lerp(Landroid/graphics/Paint;Landroid/graphics/Paint;FLandroid/graphics/Paint;)V

    .line 20
    iget-object v1, v0, Lcom/android/systemui/animation/TextInterpolator;->lines:Ljava/util/List;

    .line 23
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v8

    .line 28
    const/4 v1, 0x0

    .line 29
    move v9, v1

    .line 30
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v1

    .line 34
    if-eqz v1, :cond_5

    .line 35
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    add-int/lit8 v10, v9, 0x1

    .line 41
    if-ltz v9, :cond_3

    .line 43
    check-cast v1, Lcom/android/systemui/animation/TextInterpolator$Line;

    .line 45
    iget-object v1, v1, Lcom/android/systemui/animation/TextInterpolator$Line;->runs:Ljava/util/List;

    .line 47
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v11

    .line 52
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 62
    move-object v12, v1

    .line 63
    check-cast v12, Lcom/android/systemui/animation/TextInterpolator$Run;

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 66
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    .line 69
    invoke-virtual {v1, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 71
    move-result v2

    .line 74
    const/4 v3, 0x1

    .line 75
    if-ne v2, v3, :cond_0

    .line 76
    invoke-virtual {v1, v9}, Landroid/text/Layout;->getLineLeft(I)F

    .line 78
    move-result v1

    .line 81
    goto :goto_2

    .line 82
    :cond_0
    invoke-virtual {v1, v9}, Landroid/text/Layout;->getLineRight(I)F

    .line 83
    move-result v1

    .line 86
    :goto_2
    iget-object v2, v0, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    .line 87
    invoke-virtual {v2, v9}, Landroid/text/Layout;->getLineBaseline(I)I

    .line 89
    move-result v2

    .line 92
    int-to-float v2, v2

    .line 93
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    iget-object v1, v12, Lcom/android/systemui/animation/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    .line 97
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 99
    move-result-object v13

    .line 102
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    move-result v1

    .line 106
    if-eqz v1, :cond_1

    .line 107
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object v1

    .line 112
    move-object v4, v1

    .line 113
    check-cast v4, Lcom/android/systemui/animation/TextInterpolator$FontRun;

    .line 114
    move-object v1, v0

    .line 116
    move-object v2, p1

    .line 117
    move-object v3, v12

    .line 118
    move v5, v9

    .line 119
    move-object v6, v7

    .line 120
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/animation/TextInterpolator;->drawFontRun(Landroid/graphics/Canvas;Lcom/android/systemui/animation/TextInterpolator$Run;Lcom/android/systemui/animation/TextInterpolator$FontRun;ILandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    goto :goto_3

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 125
    goto :goto_1

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 130
    throw p0

    .line 133
    :cond_2
    move v9, v10

    .line 134
    goto :goto_0

    .line 135
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 136
    const/4 p0, 0x0

    .line 139
    throw p0

    .line 140
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 144
    if-eqz v0, :cond_6

    .line 146
    sget-object v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 148
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 150
    const-string v3, "onDraw"

    .line 152
    const/4 v4, 0x0

    .line 154
    const/16 v5, 0x8

    .line 155
    const/4 v6, 0x0

    .line 157
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 158
    :cond_6
    return-void
    .line 161
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    .line 5
    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimatorFactory:Lkotlin/jvm/functions/Function2;

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 11
    move-result-object p2

    .line 14
    new-instance v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$onMeasure$1;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView$onMeasure$1;-><init>(Ljava/lang/Object;)V

    .line 17
    invoke-interface {p1, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 23
    check-cast p1, Lcom/android/systemui/animation/TextAnimator;

    .line 24
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    .line 26
    iget-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->onTextAnimatorInitialized:Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;

    .line 28
    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;->run()V

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->onTextAnimatorInitialized:Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 39
    move-result-object p2

    .line 42
    iget-object p1, p1, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    .line 43
    iput-object p2, p1, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    .line 45
    invoke-virtual {p1, p2}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;)V

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 50
    if-eqz v0, :cond_2

    .line 52
    sget-object v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 54
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 56
    const-string v3, "onMeasure"

    .line 58
    const/4 v4, 0x0

    .line 60
    const/16 v5, 0x8

    .line 61
    const/4 v6, 0x0

    .line 63
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 64
    :cond_2
    return-void
    .line 67
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    sget-object p2, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 9
    sget-object p3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 11
    sget-object p4, Lcom/android/systemui/shared/clocks/AnimatableClockView$onTextChanged$2;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$onTextChanged$2;

    .line 13
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 16
    move-result-object p2

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 23
    invoke-interface {p2, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    :cond_0
    return-void
    .line 30
.end method

.method public final refreshFormat(Z)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 13
    const v2, 0x7f1302b9    # @string/clock_12hr_format 'hm'

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 20
    const v3, 0x7f1302ba    # @string/clock_24hr_format 'Hm'

    .line 21
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 31
    invoke-static {v3, v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 35
    sget-object v4, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sCacheKey:Ljava/lang/String;

    .line 36
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v4

    .line 41
    if-eqz v4, :cond_0

    .line 42
    goto :goto_4

    .line 44
    :cond_0
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 48
    sput-object v4, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sClockView12:Ljava/lang/String;

    .line 49
    const-string v5, "a"

    .line 51
    invoke-static {v2, v5}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 53
    move-result v2

    .line 56
    if-nez v2, :cond_7

    .line 57
    new-instance v2, Lkotlin/text/Regex;

    .line 59
    invoke-direct {v2, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v5, ""

    .line 64
    invoke-virtual {v2, v4, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 70
    move-result v4

    .line 73
    const/4 v5, 0x1

    .line 74
    sub-int/2addr v4, v5

    .line 75
    const/4 v6, 0x0

    .line 76
    move v7, v6

    .line 77
    move v8, v7

    .line 78
    :goto_0
    if-gt v7, v4, :cond_6

    .line 79
    if-nez v8, :cond_1

    .line 81
    move v9, v7

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    move v9, v4

    .line 85
    :goto_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    .line 86
    move-result v9

    .line 89
    const/16 v10, 0x20

    .line 90
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 92
    move-result v9

    .line 95
    if-gtz v9, :cond_2

    .line 96
    move v9, v5

    .line 98
    goto :goto_2

    .line 99
    :cond_2
    move v9, v6

    .line 100
    :goto_2
    if-nez v8, :cond_4

    .line 101
    if-nez v9, :cond_3

    .line 103
    move v8, v5

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 107
    goto :goto_0

    .line 109
    :cond_4
    if-nez v9, :cond_5

    .line 110
    goto :goto_3

    .line 112
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 113
    goto :goto_0

    .line 115
    :cond_6
    :goto_3
    add-int/2addr v4, v5

    .line 116
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 117
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    move-result-object v2

    .line 124
    sput-object v2, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sClockView12:Ljava/lang/String;

    .line 125
    :cond_7
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 130
    sput-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sClockView24:Ljava/lang/String;

    .line 131
    sput-object v3, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sCacheKey:Ljava/lang/String;

    .line 133
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isSingleLineInternal:Z

    .line 135
    if-eqz v0, :cond_8

    .line 137
    if-eqz p1, :cond_8

    .line 139
    sget-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sClockView24:Ljava/lang/String;

    .line 141
    goto :goto_5

    .line 143
    :cond_8
    if-nez v0, :cond_9

    .line 144
    if-eqz p1, :cond_9

    .line 146
    const-string v0, "HH\nmm"

    .line 148
    goto :goto_5

    .line 150
    :cond_9
    if-eqz v0, :cond_a

    .line 151
    if-nez p1, :cond_a

    .line 153
    sget-object v0, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sClockView12:Ljava/lang/String;

    .line 155
    goto :goto_5

    .line 157
    :cond_a
    const-string v0, "hh\nmm"

    .line 158
    :goto_5
    iput-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->format:Ljava/lang/CharSequence;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 162
    if-eqz v0, :cond_c

    .line 164
    sget-object v1, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 166
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 168
    sget-object v3, Lcom/android/systemui/shared/clocks/AnimatableClockView$refreshFormat$2;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$refreshFormat$2;

    .line 170
    const/4 v4, 0x0

    .line 172
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 173
    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->format:Ljava/lang/CharSequence;

    .line 177
    if-eqz v2, :cond_b

    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 181
    move-result-object v4

    .line 184
    :cond_b
    invoke-interface {v1, v4}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 188
    :cond_c
    if-eqz p1, :cond_d

    .line 191
    sget-object p1, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sClockView24:Ljava/lang/String;

    .line 193
    goto :goto_6

    .line 195
    :cond_d
    sget-object p1, Lcom/android/systemui/shared/clocks/AnimatableClockView$Patterns;->sClockView12:Ljava/lang/String;

    .line 196
    :goto_6
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->descFormat:Ljava/lang/CharSequence;

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->refreshTime()V

    .line 200
    return-void
    .line 203
.end method

.method public final refreshTime()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->time:Ljava/util/Calendar;

    .line 4
    iget-object v2, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->timeOverrideInMillis:Ljava/lang/Long;

    .line 6
    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 10
    move-result-wide v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    move-result-wide v2

    .line 18
    :goto_0
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 19
    iget-object v1, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->descFormat:Ljava/lang/CharSequence;

    .line 22
    iget-object v2, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->time:Ljava/util/Calendar;

    .line 24
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v1, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->format:Ljava/lang/CharSequence;

    .line 33
    iget-object v2, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->time:Ljava/util/Calendar;

    .line 35
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    .line 37
    move-result-object v1

    .line 40
    iget-object v2, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 41
    const/4 v3, 0x0

    .line 43
    if-eqz v2, :cond_2

    .line 44
    sget-object v4, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 46
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 48
    sget-object v6, Lcom/android/systemui/shared/clocks/AnimatableClockView$refreshTime$2;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$refreshTime$2;

    .line 50
    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 52
    move-result-object v4

    .line 55
    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    move-result-object v5

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move-object v5, v3

    .line 63
    :goto_1
    invoke-interface {v4, v5}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 67
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 70
    move-result-object v2

    .line 73
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 74
    move-result v2

    .line 77
    if-nez v2, :cond_7

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v2, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 83
    if-eqz v2, :cond_4

    .line 85
    sget-object v4, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 87
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 89
    sget-object v6, Lcom/android/systemui/shared/clocks/AnimatableClockView$refreshTime$4;->INSTANCE:Lcom/android/systemui/shared/clocks/AnimatableClockView$refreshTime$4;

    .line 91
    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 93
    move-result-object v4

    .line 96
    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 102
    :cond_3
    invoke-interface {v4, v3}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 106
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 109
    move-result-object v1

    .line 112
    if-eqz v1, :cond_6

    .line 113
    iget-object v1, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    .line 115
    if-eqz v1, :cond_5

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 119
    move-result-object v2

    .line 122
    iget-object v1, v1, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    .line 123
    iput-object v2, v1, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    .line 125
    invoke-virtual {v1, v2}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;)V

    .line 127
    :cond_5
    iget-object v3, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 130
    if-eqz v3, :cond_6

    .line 132
    sget-object v4, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 134
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 136
    const-string/jumbo v6, "refreshTime: done updating textAnimator layout"

    .line 138
    const/4 v7, 0x0

    .line 141
    const/16 v8, 0x8

    .line 142
    const/4 v9, 0x0

    .line 144
    invoke-static/range {v3 .. v9}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 145
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->requestLayout()V

    .line 148
    iget-object v10, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 151
    if-eqz v10, :cond_7

    .line 153
    sget-object v11, Lcom/android/systemui/shared/clocks/AnimatableClockView;->TAG:Ljava/lang/String;

    .line 155
    sget-object v12, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 157
    const-string/jumbo v13, "refreshTime: after requestLayout"

    .line 159
    const/4 v14, 0x0

    .line 162
    const/16 v15, 0x8

    .line 163
    const/16 v16, 0x0

    .line 165
    invoke-static/range {v10 .. v16}, Lcom/android/systemui/log/LogBuffer;->log$default(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 167
    :cond_7
    return-void
    .line 170
.end method

.method public final setAnimationEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setColors(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->dozingColor:I

    .line 2
    iput p2, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->lockScreenColor:I

    .line 4
    return-void
    .line 6
.end method

.method public final setLineSpacingScale(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3
    return-void
    .line 6
.end method

.method public final setLogBuffer(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 2
    return-void
    .line 4
.end method

.method public final setTextAnimatorFactory(Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimatorFactory:Lkotlin/jvm/functions/Function2;

    .line 2
    return-void
    .line 4
.end method

.method public final setTextStyle(ILjava/lang/Integer;ZJJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V
    .locals 10

    move-object v0, p0

    if-eqz p3, :cond_0

    .line 9
    iget-boolean v1, v0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v3, v1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    .line 10
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZLandroid/animation/TimeInterpolator;JJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    return-void
.end method

.method public final setTextStyle(ILjava/lang/Integer;ZLandroid/animation/TimeInterpolator;JJLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V
    .locals 22

    move-object/from16 v10, p0

    const/high16 v13, -0x40800000    # -1.0f

    .line 1
    iget-object v11, v10, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    if-eqz v11, :cond_2

    if-eqz p3, :cond_0

    .line 2
    iget-boolean v0, v10, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    move/from16 v12, p1

    move-object/from16 v14, p2

    move-wide/from16 v16, p5

    move-object/from16 v18, p4

    move-wide/from16 v19, p7

    move-object/from16 v21, p9

    .line 3
    invoke-static/range {v11 .. v21}, Lcom/android/systemui/animation/TextAnimator;->setTextStyle$default(Lcom/android/systemui/animation/TextAnimator;IFLjava/lang/Integer;ZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;)V

    .line 4
    iget-object v0, v10, Lcom/android/systemui/shared/clocks/AnimatableClockView;->textAnimator:Lcom/android/systemui/animation/TextAnimator;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v10, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphFilter:Lkotlin/jvm/functions/Function2;

    .line 5
    iget-object v0, v0, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    iput-object v1, v0, Lcom/android/systemui/animation/TextInterpolator;->glyphFilter:Lkotlin/jvm/functions/Function2;

    :goto_1
    if-eqz p2, :cond_3

    .line 6
    iget-boolean v0, v10, Lcom/android/systemui/shared/clocks/AnimatableClockView;->isAnimationEnabled:Z

    if-nez v0, :cond_3

    .line 7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 8
    :cond_2
    new-instance v11, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p5

    move-object/from16 v6, p4

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;-><init>(Lcom/android/systemui/shared/clocks/AnimatableClockView;ILjava/lang/Integer;JLandroid/animation/TimeInterpolator;JLcom/android/systemui/shared/clocks/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    iput-object v11, v10, Lcom/android/systemui/shared/clocks/AnimatableClockView;->onTextAnimatorInitialized:Lcom/android/systemui/shared/clocks/AnimatableClockView$setTextStyle$1;

    :cond_3
    :goto_2
    return-void
.end method

.method public final setTimeOverrideInMillis(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->timeOverrideInMillis:Ljava/lang/Long;

    .line 2
    return-void
    .line 4
.end method
