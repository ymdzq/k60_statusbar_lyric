.class public final Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public centerX:F

.field public centerY:F

.field public radius:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 3
    iput p2, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 4
    iput p3, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .locals 2

    .line 5
    iget v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v1, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget p1, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    return-void
.end method
