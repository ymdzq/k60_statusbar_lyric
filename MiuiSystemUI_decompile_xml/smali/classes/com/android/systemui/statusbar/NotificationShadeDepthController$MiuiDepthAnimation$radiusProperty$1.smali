.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$radiusProperty$1;
.super Lmiuix/animation/property/FloatProperty;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

.field public final synthetic this$1:Lcom/android/systemui/statusbar/NotificationShadeDepthController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$radiusProperty$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$radiusProperty$1;->this$1:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 4
    const-string p1, "ns_blur_radius"

    .line 6
    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$radiusProperty$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 4
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->radius:F

    .line 6
    return p0
    .line 8
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$radiusProperty$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 4
    iget v0, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->radius:F

    .line 6
    cmpg-float v0, v0, p2

    .line 8
    if-nez v0, :cond_0

    .line 10
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    goto :goto_1

    .line 17
    :cond_1
    iput p2, p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->radius:F

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$radiusProperty$1;->this$1:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 20
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->ncSwitching:Z

    .line 22
    if-eqz p1, :cond_2

    .line 24
    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate()V

    .line 27
    :goto_1
    return-void
    .line 30
.end method
