.class public final Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1$onReceive$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/VariableDateViewController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1$onReceive$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1$onReceive$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    .line 8
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->dateFormat:Landroid/icu/text/DateFormat;

    .line 11
    return-void

    .line 13
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/VariableDateViewController$intentReceiver$1$onReceive$1;->this$0:Lcom/android/systemui/statusbar/policy/VariableDateViewController;

    .line 14
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/VariableDateViewController;->access$updateClock(Lcom/android/systemui/statusbar/policy/VariableDateViewController;)V

    .line 16
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 20
.end method
