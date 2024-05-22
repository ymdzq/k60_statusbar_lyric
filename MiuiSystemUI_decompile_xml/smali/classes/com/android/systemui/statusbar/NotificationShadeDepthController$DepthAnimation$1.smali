.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation$1;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    .line 2
    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->pendingRadius:I

    .line 5
    const-class p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 7
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 13
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->requestNCSwitchingEnd(Ljava/lang/Boolean;)V

    .line 16
    return-void
    .line 19
.end method
