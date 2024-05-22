.class public final synthetic Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onActivityStarted(I)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    check-cast p0, Lcom/android/systemui/power/PowerNotificationWarnings$1;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$1;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 13
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 15
    return-void

    .line 17
    :pswitch_1
    check-cast p0, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 18
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 20
    return-void

    .line 22
    :goto_0
    check-cast p0, Lcom/android/systemui/power/PowerNotificationWarnings$1;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$1;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 25
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 27
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 30
.end method
