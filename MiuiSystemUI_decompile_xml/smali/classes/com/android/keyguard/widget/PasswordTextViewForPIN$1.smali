.class public final Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;
.super Lmiuix/animation/property/FloatProperty;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;->$r8$classId:I

    .line 2
    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getValue(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;)F
    .locals 0

    iget p0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget p0, p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->alpha:F

    return p0

    .line 5
    :pswitch_1
    iget p0, p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->yOffset:F

    return p0

    .line 6
    :goto_0
    iget p0, p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->scale:F

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;->getValue(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;)F

    move-result p0

    return p0

    .line 2
    :pswitch_1
    check-cast p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;->getValue(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;)F

    move-result p0

    return p0

    .line 3
    :goto_0
    check-cast p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;->getValue(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;)F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;F)V
    .locals 0

    iget p0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    iget p0, p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->alpha:F

    cmpl-float p0, p0, p2

    if-eqz p0, :cond_0

    .line 5
    iput p2, p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->alpha:F

    .line 6
    iget-object p0, p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/widget/PasswordTextViewForPIN;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void

    .line 7
    :pswitch_1
    iget p0, p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->yOffset:F

    cmpl-float p0, p0, p2

    if-eqz p0, :cond_1

    .line 8
    iput p2, p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->yOffset:F

    .line 9
    iget-object p0, p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/widget/PasswordTextViewForPIN;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void

    .line 10
    :goto_0
    iget p0, p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->scale:F

    cmpl-float p0, p0, p2

    if-eqz p0, :cond_2

    .line 11
    iput p2, p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->scale:F

    .line 12
    iget-object p0, p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;->this$0:Lcom/android/keyguard/widget/PasswordTextViewForPIN;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;->setValue(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;F)V

    return-void

    .line 2
    :pswitch_1
    check-cast p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;->setValue(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;F)V

    return-void

    .line 3
    :goto_0
    check-cast p1, Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$1;->setValue(Lcom/android/keyguard/widget/PasswordTextViewForPIN$CharState;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
