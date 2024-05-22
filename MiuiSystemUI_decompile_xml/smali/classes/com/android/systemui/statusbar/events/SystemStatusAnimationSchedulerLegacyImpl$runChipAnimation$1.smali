.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$runChipAnimation$1;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$runChipAnimation$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$runChipAnimation$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;

    .line 4
    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd$1(Landroidx/core/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$runChipAnimation$1;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl$runChipAnimation$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    const/4 p1, 0x3

    .line 10
    iput p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->animationState:I

    .line 11
    return-void

    .line 13
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->hasPersistentDot:Z

    .line 14
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x5

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    move p1, v0

    .line 21
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->animationState:I

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerLegacyImpl;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    .line 26
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 30
.end method
