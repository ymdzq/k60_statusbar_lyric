.class public final Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;
.super Landroid/os/CountDownTimer;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputViewController;JI)V
    .locals 2

    .line 1
    iput p4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    .line 4
    const-wide/16 v0, 0x3e8

    .line 6
    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    .line 8
    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 10
    const/4 v1, 0x1

    .line 12
    const-string v2, ""

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    .line 18
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockedOut:Z

    .line 21
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->resetState()V

    .line 23
    return-void

    .line 26
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    .line 27
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->resetState()V

    .line 29
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 34
.end method

.method public final onTick(J)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    return-void

    .line 7
    :pswitch_0
    long-to-double p1, p1

    .line 8
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 9
    div-double/2addr p1, v0

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 15
    move-result-wide p1

    .line 18
    long-to-int p1, p1

    .line 19
    new-instance p2, Ljava/util/HashMap;

    .line 20
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 22
    const-string v0, "count"

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 30
    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController$2;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputViewController;

    .line 34
    iget-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 38
    check-cast p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    .line 40
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object p0

    .line 45
    const v0, 0x7f130641    # @string/kg_too_many_failed_attempts_countdown '{count, plural, =1 {Try again in # second.} other {Try again in # seconds.} }'

    .line 46
    invoke-static {p0, p2, v0}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    const/4 p2, 0x0

    .line 53
    invoke-virtual {p1, p0, p2}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 54
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 58
.end method
