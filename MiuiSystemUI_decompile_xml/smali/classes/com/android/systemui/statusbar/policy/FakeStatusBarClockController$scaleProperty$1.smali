.class public final Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;
.super Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$Property;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

.field public value:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;I)V
    .locals 1

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_2

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p2, v0, :cond_1

    .line 8
    const/4 v0, 0x3

    .line 10
    if-eq p2, v0, :cond_0

    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 13
    const-string p1, "fake_clock_scale"

    .line 15
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$Property;-><init>(Ljava/lang/String;)V

    .line 17
    return-void

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 21
    const-string p1, "fake_clock_trans_y"

    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$Property;-><init>(Ljava/lang/String;)V

    .line 25
    return-void

    .line 28
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 29
    const-string p1, "fake_clock_trans_x"

    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$Property;-><init>(Ljava/lang/String;)V

    .line 33
    return-void

    .line 36
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 37
    const-string p1, "fake_clock_expansion"

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$Property;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final getValue$1()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->value:F

    .line 8
    return p0

    .line 10
    :pswitch_1
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->value:F

    .line 11
    return p0

    .line 13
    :pswitch_2
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->value:F

    .line 14
    return p0

    .line 16
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->value:F

    .line 17
    return p0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 20
.end method

.method public final setValue(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_5

    .line 7
    :pswitch_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->value:F

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->fakeStatusBarClock:Lcom/android/systemui/controlcenter/phone/widget/NotificationShadeFakeStatusBarClock;

    .line 12
    if-nez p0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 17
    :goto_0
    return-void

    .line 20
    :pswitch_1
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->value:F

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 23
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->shadeExpansion:F

    .line 25
    cmpg-float v0, v0, p1

    .line 27
    if-nez v0, :cond_1

    .line 29
    const/4 v0, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_1
    if-eqz v0, :cond_2

    .line 34
    goto :goto_2

    .line 36
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->shadeExpansion:F

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->update()V

    .line 39
    :goto_2
    return-void

    .line 42
    :pswitch_2
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->value:F

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 45
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->fakeStatusBarClock:Lcom/android/systemui/controlcenter/phone/widget/NotificationShadeFakeStatusBarClock;

    .line 47
    if-nez v0, :cond_3

    .line 49
    goto :goto_3

    .line 51
    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 52
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->fakeStatusBarClock:Lcom/android/systemui/controlcenter/phone/widget/NotificationShadeFakeStatusBarClock;

    .line 57
    if-nez p0, :cond_4

    .line 59
    goto :goto_4

    .line 61
    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 62
    :goto_4
    return-void

    .line 65
    :goto_5
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->value:F

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->fakeStatusBarClock:Lcom/android/systemui/controlcenter/phone/widget/NotificationShadeFakeStatusBarClock;

    .line 70
    if-nez v0, :cond_5

    .line 72
    goto :goto_6

    .line 74
    :cond_5
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->panelViewSpringLength:F

    .line 75
    add-float/2addr p1, p0

    .line 77
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 78
    :goto_6
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 82
.end method
