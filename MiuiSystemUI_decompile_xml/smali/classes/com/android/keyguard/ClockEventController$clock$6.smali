.class public final Lcom/android/keyguard/ClockEventController$clock$6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $value:Lcom/android/systemui/plugins/ClockController;

.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/ClockController;Lcom/android/keyguard/ClockEventController;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/keyguard/ClockEventController$clock$6;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$clock$6;->$value:Lcom/android/systemui/plugins/ClockController;

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/ClockEventController$clock$6;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/keyguard/ClockEventController$clock$6;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController$clock$6;->$value:Lcom/android/systemui/plugins/ClockController;

    .line 8
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockController;->getEvents()Lcom/android/systemui/plugins/ClockEvents;

    .line 10
    move-result-object p1

    .line 13
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$clock$6;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->context:Landroid/content/Context;

    .line 16
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 18
    move-result p0

    .line 21
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ClockEvents;->onTimeFormatChanged(Z)V

    .line 22
    return-void

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController$clock$6;->$value:Lcom/android/systemui/plugins/ClockController;

    .line 26
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockController;->getEvents()Lcom/android/systemui/plugins/ClockEvents;

    .line 28
    move-result-object p1

    .line 31
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$clock$6;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 32
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->context:Landroid/content/Context;

    .line 34
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 36
    move-result p0

    .line 39
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ClockEvents;->onTimeFormatChanged(Z)V

    .line 40
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 44
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
