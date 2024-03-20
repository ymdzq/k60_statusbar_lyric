.class public final Lcom/android/systemui/animation/FontVariationUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public isUpdated:Z

.field public mOpticalSize:I

.field public mRoundness:I

.field public mWeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/systemui/animation/FontVariationUtils;->mWeight:I

    .line 6
    iput v0, p0, Lcom/android/systemui/animation/FontVariationUtils;->mWidth:I

    .line 8
    iput v0, p0, Lcom/android/systemui/animation/FontVariationUtils;->mOpticalSize:I

    .line 10
    iput v0, p0, Lcom/android/systemui/animation/FontVariationUtils;->mRoundness:I

    .line 12
    return-void
    .line 14
.end method
