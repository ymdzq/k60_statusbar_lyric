.class public final Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;
.super Lcom/airbnb/lottie/value/LottieValueCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic val$documentData:Lcom/airbnb/lottie/model/DocumentData;

.field public final synthetic val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

.field public final synthetic val$valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/value/LottieFrameInfo;Lcom/airbnb/lottie/value/LottieValueCallback;Lcom/airbnb/lottie/model/DocumentData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 2
    iput-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 4
    iput-object p3, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$documentData:Lcom/airbnb/lottie/model/DocumentData;

    .line 6
    invoke-direct {p0}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->startFrame:F

    .line 2
    iget v1, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    .line 4
    iget-object v2, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    .line 6
    check-cast v2, Lcom/airbnb/lottie/model/DocumentData;

    .line 8
    iget-object v2, v2, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 10
    iget-object v3, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    .line 12
    check-cast v3, Lcom/airbnb/lottie/model/DocumentData;

    .line 14
    iget-object v3, v3, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 16
    iget v4, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    .line 18
    iget v5, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    .line 20
    iget v6, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->overallProgress:F

    .line 22
    iget-object v7, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$stringFrameInfo:Lcom/airbnb/lottie/value/LottieFrameInfo;

    .line 24
    iput v0, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->startFrame:F

    .line 26
    iput v1, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->endFrame:F

    .line 28
    iput-object v2, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    .line 30
    iput-object v3, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    .line 32
    iput v4, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->linearKeyframeProgress:F

    .line 34
    iput v5, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    .line 36
    iput v6, v7, Lcom/airbnb/lottie/value/LottieFrameInfo;->overallProgress:F

    .line 38
    iget-object v0, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$valueCallback:Lcom/airbnb/lottie/value/LottieValueCallback;

    .line 40
    invoke-virtual {v0, v7}, Lcom/airbnb/lottie/value/LottieValueCallback;->getValue(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/String;

    .line 46
    iget v1, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->interpolatedKeyframeProgress:F

    .line 48
    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    cmpl-float v1, v1, v2

    .line 52
    if-nez v1, :cond_0

    .line 54
    iget-object p1, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->endValue:Ljava/lang/Object;

    .line 56
    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p1, Lcom/airbnb/lottie/value/LottieFrameInfo;->startValue:Ljava/lang/Object;

    .line 59
    :goto_0
    check-cast p1, Lcom/airbnb/lottie/model/DocumentData;

    .line 61
    iget-object v1, p1, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 63
    iget v2, p1, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 65
    iget-object v3, p1, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 67
    iget v4, p1, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 69
    iget v5, p1, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 71
    iget v6, p1, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    .line 73
    iget v7, p1, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 75
    iget v8, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 77
    iget v9, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    .line 79
    iget-boolean p1, p1, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 81
    iget-object p0, p0, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation$1;->val$documentData:Lcom/airbnb/lottie/model/DocumentData;

    .line 83
    iput-object v0, p0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    .line 87
    iput v2, p0, Lcom/airbnb/lottie/model/DocumentData;->size:F

    .line 89
    iput-object v3, p0, Lcom/airbnb/lottie/model/DocumentData;->justification:Lcom/airbnb/lottie/model/DocumentData$Justification;

    .line 91
    iput v4, p0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    .line 93
    iput v5, p0, Lcom/airbnb/lottie/model/DocumentData;->lineHeight:F

    .line 95
    iput v6, p0, Lcom/airbnb/lottie/model/DocumentData;->baselineShift:F

    .line 97
    iput v7, p0, Lcom/airbnb/lottie/model/DocumentData;->color:I

    .line 99
    iput v8, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    .line 101
    iput v9, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:F

    .line 103
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    .line 105
    return-object p0
    .line 107
.end method
