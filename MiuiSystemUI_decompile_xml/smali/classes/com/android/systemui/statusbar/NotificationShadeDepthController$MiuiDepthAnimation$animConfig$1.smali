.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$animConfig$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$animConfig$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$animConfig$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 5
    const/high16 p1, -0x80000000

    .line 7
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->pendingRadius:I

    .line 9
    const-class p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 11
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 17
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->requestNCSwitchingEnd(Ljava/lang/Boolean;)V

    .line 20
    return-void
    .line 23
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$animConfig$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 5
    const/high16 p1, -0x80000000

    .line 7
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->pendingRadius:I

    .line 9
    const-class p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 11
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 16
    check-cast p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 17
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->requestNCSwitchingEnd(Ljava/lang/Boolean;)V

    .line 20
    return-void
    .line 23
.end method

.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 6

    .line 1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result p2

    .line 9
    if-eqz p2, :cond_1

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 15
    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    .line 16
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 18
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$animConfig$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;

    .line 20
    iget-object v2, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->radiusProperty:Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation$radiusProperty$1;

    .line 22
    if-ne v0, v2, :cond_0

    .line 24
    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 26
    move-result p2

    .line 29
    float-to-double v2, p2

    .line 30
    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    .line 31
    cmpg-double p2, v2, v4

    .line 36
    if-gez p2, :cond_0

    .line 38
    iget-object p2, v1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$MiuiDepthAnimation;->springAnimation:Lmiuix/animation/IStateStyle;

    .line 40
    invoke-interface {p2}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 42
    goto :goto_0

    .line 45
    :cond_1
    return-void
    .line 46
.end method
