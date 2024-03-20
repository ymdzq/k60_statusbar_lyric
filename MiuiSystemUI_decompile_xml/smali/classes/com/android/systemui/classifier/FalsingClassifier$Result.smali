.class public final Lcom/android/systemui/classifier/FalsingClassifier$Result;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mConfidence:D

.field public final mContext:Ljava/lang/String;

.field public final mFalsed:Z

.field public final mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mFalsed:Z

    .line 5
    iput-wide p2, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mConfidence:D

    .line 7
    iput-object p4, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mContext:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mReason:Ljava/lang/String;

    .line 11
    return-void
    .line 13
.end method

.method public static passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, v6

    .line 7
    move-wide v2, p0

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/classifier/FalsingClassifier$Result;-><init>(ZDLjava/lang/String;Ljava/lang/String;)V

    .line 9
    return-object v6
    .line 12
.end method


# virtual methods
.method public final getReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mContext:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingClassifier$Result;->mReason:Ljava/lang/String;

    .line 4
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    const-string/jumbo v0, "{context=%s reason=%s}"

    .line 10
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 16
    return-object p0
    .line 17
.end method
