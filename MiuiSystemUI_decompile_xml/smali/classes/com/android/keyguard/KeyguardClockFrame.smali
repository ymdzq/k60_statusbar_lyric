.class public final Lcom/android/keyguard/KeyguardClockFrame;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public drawAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/16 p1, 0xff

    .line 5
    iput p1, p0, Lcom/android/keyguard/KeyguardClockFrame;->drawAlpha:I

    .line 7
    return-void
    .line 9
.end method

.method public static final synthetic access$dispatchDraw$s1310765783(Lcom/android/keyguard/KeyguardClockFrame;Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardClockFrame;->drawAlpha:I

    .line 2
    new-instance v1, Lcom/android/keyguard/KeyguardClockFrame$dispatchDraw$1;

    .line 4
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardClockFrame$dispatchDraw$1;-><init>(Lcom/android/keyguard/KeyguardClockFrame;)V

    .line 6
    invoke-static {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardClockFrame$Companion;->saveCanvasAlpha(Landroid/view/View;Landroid/graphics/Canvas;ILkotlin/jvm/functions/Function1;)V

    .line 9
    return-void
    .line 12
.end method

.method public final onSetAlpha(I)Z
    .locals 1

    .line 1
    const/16 p1, 0xff

    .line 2
    int-to-float p1, p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 5
    move-result v0

    .line 8
    mul-float/2addr v0, p1

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTransitionAlpha()F

    .line 10
    move-result p1

    .line 13
    mul-float/2addr p1, v0

    .line 14
    float-to-int p1, p1

    .line 15
    iput p1, p0, Lcom/android/keyguard/KeyguardClockFrame;->drawAlpha:I

    .line 16
    const/4 p0, 0x1

    .line 18
    return p0
    .line 19
.end method
