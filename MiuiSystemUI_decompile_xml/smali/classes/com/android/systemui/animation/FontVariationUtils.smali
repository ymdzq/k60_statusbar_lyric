.class public final Lcom/android/systemui/animation/FontVariationUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
