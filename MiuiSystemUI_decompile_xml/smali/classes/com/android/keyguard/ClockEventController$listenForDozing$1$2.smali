.class public final Lcom/android/keyguard/ClockEventController$listenForDozing$1$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/ClockEventController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/ClockEventController$listenForDozing$1$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$listenForDozing$1$2;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iget v1, p0, Lcom/android/keyguard/ClockEventController$listenForDozing$1$2;->$r8$classId:I

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$listenForDozing$1$2;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 10
    goto :goto_2

    .line 13
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 16
    move-result p1

    .line 19
    invoke-static {p0, p1}, Lcom/android/keyguard/ClockEventController;->access$handleDoze(Lcom/android/keyguard/ClockEventController;F)V

    .line 20
    return-object p2

    .line 23
    :pswitch_1
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 24
    packed-switch v1, :pswitch_data_1

    .line 26
    goto :goto_0

    .line 29
    :pswitch_2
    invoke-static {p0, v0}, Lcom/android/keyguard/ClockEventController;->access$handleDoze(Lcom/android/keyguard/ClockEventController;F)V

    .line 30
    goto :goto_1

    .line 33
    :goto_0
    iget p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    .line 34
    invoke-static {p0, p1}, Lcom/android/keyguard/ClockEventController;->access$handleDoze(Lcom/android/keyguard/ClockEventController;F)V

    .line 36
    :goto_1
    return-object p2

    .line 39
    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    move-result p1

    .line 45
    iput-boolean p1, p0, Lcom/android/keyguard/ClockEventController;->isDozing:Z

    .line 46
    return-object p2

    .line 48
    :goto_2
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 49
    packed-switch v1, :pswitch_data_2

    .line 51
    goto :goto_3

    .line 54
    :pswitch_4
    invoke-static {p0, v0}, Lcom/android/keyguard/ClockEventController;->access$handleDoze(Lcom/android/keyguard/ClockEventController;F)V

    .line 55
    goto :goto_4

    .line 58
    :goto_3
    iget p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->value:F

    .line 59
    invoke-static {p0, p1}, Lcom/android/keyguard/ClockEventController;->access$handleDoze(Lcom/android/keyguard/ClockEventController;F)V

    .line 61
    :goto_4
    return-object p2

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 66
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 76
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
    .line 82
.end method
