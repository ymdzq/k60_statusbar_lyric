.class public final Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final minOverlap:F

.field public final stepSize:I

.field public final targetSize:F


# direct methods
.method public constructor <init>(FFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->minOverlap:F

    .line 5
    iput p2, p0, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->targetSize:F

    .line 7
    iput p3, p0, Lcom/android/systemui/biometrics/EllipseOverlapDetectorParams;->stepSize:I

    .line 9
    return-void
    .line 11
.end method
