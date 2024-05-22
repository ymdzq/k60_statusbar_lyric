.class public final Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

.field public final synthetic val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

.field public final synthetic val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

.field public final synthetic val$ticker:F

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(FILandroid/view/View;Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->$r8$classId:I

    .line 2
    iput-object p6, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 4
    iput-object p5, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 6
    iput-object p4, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$params:Lcom/android/keyguard/clock/animation/rhombus/RhombusDefaultClockAnimation$ClockViewParams;

    .line 8
    iput-object p3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$view:Landroid/view/View;

    .line 10
    iput p1, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$ticker:F

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
    .line 17
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->$r8$classId:I

    .line 2
    const/4 v1, -0x2

    .line 4
    const/4 v2, 0x2

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 10
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 16
    move-result-object v0

    .line 19
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 20
    iget-object v3, v3, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mSkInitState:Lmiuix/animation/controller/AnimState;

    .line 22
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 24
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 26
    new-array v2, v2, [F

    .line 29
    fill-array-data v2, :array_0

    .line 31
    invoke-virtual {v4, v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 34
    move-result-object v1

    .line 37
    new-instance v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3$1;

    .line 38
    const/4 v4, 0x0

    .line 40
    invoke-direct {v2, v4, p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3$1;-><init>(ILjava/lang/Runnable;)V

    .line 41
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {v1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 48
    move-result-object p0

    .line 51
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 52
    move-result-object p0

    .line 55
    invoke-interface {v0, v3, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 56
    return-void

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->val$skParams:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$SKParams;

    .line 60
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 65
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 66
    move-result-object v0

    .line 69
    iget-object v3, p0, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3;->this$0:Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;

    .line 70
    iget-object v3, v3, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation;->mSkInitState:Lmiuix/animation/controller/AnimState;

    .line 72
    new-instance v4, Lmiuix/animation/base/AnimConfig;

    .line 74
    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 76
    new-array v2, v2, [F

    .line 79
    fill-array-data v2, :array_1

    .line 81
    invoke-virtual {v4, v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 84
    move-result-object v1

    .line 87
    new-instance v2, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3$1;

    .line 88
    const/4 v4, 0x1

    .line 90
    invoke-direct {v2, v4, p0}, Lcom/android/keyguard/clock/animation/rhombus/RhombusSKPupokClockAnimation$3$1;-><init>(ILjava/lang/Runnable;)V

    .line 91
    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    .line 94
    move-result-object p0

    .line 97
    invoke-virtual {v1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 98
    move-result-object p0

    .line 101
    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    .line 102
    move-result-object p0

    .line 105
    invoke-interface {v0, v3, p0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 106
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 110
    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f19999a    # 0.6f
    .end array-data

    .line 116
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data
    .line 124
.end method
