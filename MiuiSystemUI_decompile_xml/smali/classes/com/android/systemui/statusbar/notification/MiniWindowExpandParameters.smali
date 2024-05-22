.class public final Lcom/android/systemui/statusbar/notification/MiniWindowExpandParameters;
.super Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public alpha:F

.field public backgroundAlpha:F

.field public startHeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;-><init>()V

    .line 2
    iget v0, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 5
    iget v1, p0, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 7
    sub-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/android/systemui/statusbar/notification/MiniWindowExpandParameters;->startHeight:I

    .line 10
    return-void
    .line 12
.end method
