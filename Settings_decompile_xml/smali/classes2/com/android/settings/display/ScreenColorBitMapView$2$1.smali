.class Lcom/android/settings/display/ScreenColorBitMapView$2$1;
.super Ljava/lang/Object;
.source "ScreenColorBitMapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ScreenColorBitMapView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/display/ScreenColorBitMapView$2;


# direct methods
.method public static synthetic $r8$lambda$LL_0ssNcHYq1ceuwDWJ6RCA9XaY(Lcom/android/settings/display/ScreenColorBitMapView$2$1;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenColorBitMapView$2$1;->lambda$run$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/display/ScreenColorBitMapView$2;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/display/ScreenColorBitMapView$2$1;->this$1:Lcom/android/settings/display/ScreenColorBitMapView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorBitMapView$2$1;->this$1:Lcom/android/settings/display/ScreenColorBitMapView$2;

    iget-object v0, v0, Lcom/android/settings/display/ScreenColorBitMapView$2;->this$0:Lcom/android/settings/display/ScreenColorBitMapView;

    invoke-static {v0}, Lcom/android/settings/display/ScreenColorBitMapView;->-$$Nest$fgetmPointView(Lcom/android/settings/display/ScreenColorBitMapView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorBitMapView$2$1;->this$1:Lcom/android/settings/display/ScreenColorBitMapView$2;

    iget-object p0, p0, Lcom/android/settings/display/ScreenColorBitMapView$2;->this$0:Lcom/android/settings/display/ScreenColorBitMapView;

    invoke-static {p0}, Lcom/android/settings/display/ScreenColorBitMapView;->-$$Nest$fgetmPointView(Lcom/android/settings/display/ScreenColorBitMapView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 143
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ScreenColorBitMapView$2$1;->this$1:Lcom/android/settings/display/ScreenColorBitMapView$2;

    iget-object v1, v1, Lcom/android/settings/display/ScreenColorBitMapView$2;->this$0:Lcom/android/settings/display/ScreenColorBitMapView;

    invoke-static {v1}, Lcom/android/settings/display/ScreenColorBitMapView;->-$$Nest$fgettransparentAnimTime(Lcom/android/settings/display/ScreenColorBitMapView;)J

    move-result-wide v1

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/android/settings/display/ScreenColorBitMapView$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/display/ScreenColorBitMapView$2$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/ScreenColorBitMapView$2$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 151
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorBitMapView$2$1;->this$1:Lcom/android/settings/display/ScreenColorBitMapView$2;

    iget-object v0, v0, Lcom/android/settings/display/ScreenColorBitMapView$2;->this$0:Lcom/android/settings/display/ScreenColorBitMapView;

    invoke-static {v0}, Lcom/android/settings/display/ScreenColorBitMapView;->-$$Nest$mupdatePointViewLocation(Lcom/android/settings/display/ScreenColorBitMapView;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/display/ScreenColorBitMapView$2$1;->this$1:Lcom/android/settings/display/ScreenColorBitMapView$2;

    iget-object v0, v0, Lcom/android/settings/display/ScreenColorBitMapView$2;->this$0:Lcom/android/settings/display/ScreenColorBitMapView;

    invoke-static {v0}, Lcom/android/settings/display/ScreenColorBitMapView;->-$$Nest$fgetmPointView(Lcom/android/settings/display/ScreenColorBitMapView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object p0, p0, Lcom/android/settings/display/ScreenColorBitMapView$2$1;->this$1:Lcom/android/settings/display/ScreenColorBitMapView$2;

    iget-object p0, p0, Lcom/android/settings/display/ScreenColorBitMapView$2;->this$0:Lcom/android/settings/display/ScreenColorBitMapView;

    invoke-static {p0}, Lcom/android/settings/display/ScreenColorBitMapView;->-$$Nest$fgetmPointView(Lcom/android/settings/display/ScreenColorBitMapView;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
