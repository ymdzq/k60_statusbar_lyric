.class Lcom/android/settings/colorgameled/LedColorBitMapView$1$1;
.super Ljava/lang/Object;
.source "LedColorBitMapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/colorgameled/LedColorBitMapView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/colorgameled/LedColorBitMapView$1;


# direct methods
.method public static synthetic $r8$lambda$H3jZgQR0_7Tp8-B5jm87699mvcc(Lcom/android/settings/colorgameled/LedColorBitMapView$1$1;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/colorgameled/LedColorBitMapView$1$1;->lambda$run$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/colorgameled/LedColorBitMapView$1;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView$1$1;->this$1:Lcom/android/settings/colorgameled/LedColorBitMapView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView$1$1;->this$1:Lcom/android/settings/colorgameled/LedColorBitMapView$1;

    iget-object v0, v0, Lcom/android/settings/colorgameled/LedColorBitMapView$1;->this$0:Lcom/android/settings/colorgameled/LedColorBitMapView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/colorgameled/LedColorBitMapView;->-$$Nest$fputmCircleBitmapAlpha(Lcom/android/settings/colorgameled/LedColorBitMapView;I)V

    .line 93
    iget-object p0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView$1$1;->this$1:Lcom/android/settings/colorgameled/LedColorBitMapView$1;

    iget-object p0, p0, Lcom/android/settings/colorgameled/LedColorBitMapView$1;->this$0:Lcom/android/settings/colorgameled/LedColorBitMapView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 89
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/colorgameled/LedColorBitMapView$1$1;->this$1:Lcom/android/settings/colorgameled/LedColorBitMapView$1;

    iget-object v1, v1, Lcom/android/settings/colorgameled/LedColorBitMapView$1;->this$0:Lcom/android/settings/colorgameled/LedColorBitMapView;

    invoke-static {v1}, Lcom/android/settings/colorgameled/LedColorBitMapView;->-$$Nest$fgettransparentAnimTime(Lcom/android/settings/colorgameled/LedColorBitMapView;)J

    move-result-wide v1

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/android/settings/colorgameled/LedColorBitMapView$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/colorgameled/LedColorBitMapView$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/colorgameled/LedColorBitMapView$1$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 95
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
