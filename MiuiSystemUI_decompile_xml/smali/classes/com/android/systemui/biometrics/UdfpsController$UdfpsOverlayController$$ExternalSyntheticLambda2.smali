.class public final synthetic Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    .line 5
    iput-wide p2, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda2;->f$1:J

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    check-cast p2, Landroid/view/MotionEvent;

    .line 4
    check-cast p3, Ljava/lang/Boolean;

    .line 6
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    .line 8
    iget-object p1, p1, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    .line 10
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result p3

    .line 15
    iget-wide v0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda2;->f$1:J

    .line 16
    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/android/systemui/biometrics/UdfpsController;->onTouch(JLandroid/view/MotionEvent;Z)Z

    .line 18
    move-result p0

    .line 21
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method
