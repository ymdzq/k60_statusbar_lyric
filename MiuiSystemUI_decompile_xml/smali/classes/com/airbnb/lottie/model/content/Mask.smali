.class public final Lcom/airbnb/lottie/model/content/Mask;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final inverted:Z

.field public final maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public final maskPath:Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

.field public final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 5
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/Mask;->maskPath:Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 7
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/Mask;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 9
    iput-boolean p4, p0, Lcom/airbnb/lottie/model/content/Mask;->inverted:Z

    .line 11
    return-void
    .line 13
.end method