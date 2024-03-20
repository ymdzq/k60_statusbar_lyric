.class public final Lcom/android/keyguard/NumPadKey$2;
.super Lmiuix/animation/property/FloatProperty;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/NumPadKey$2;->$r8$classId:I

    .line 2
    invoke-direct {p0, p1}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getValue(Lcom/android/keyguard/NumPadKey;)F
    .locals 0

    iget p0, p0, Lcom/android/keyguard/NumPadKey$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/keyguard/NumPadKey;->getBgDrawableInnerRadius()F

    move-result p0

    return p0

    .line 5
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/keyguard/NumPadKey;->getBgDrawableOuterRadius()F

    move-result p0

    return p0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/android/keyguard/NumPadKey;->getBgDrawableAlpha()F

    move-result p0

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

    iget v0, p0, Lcom/android/keyguard/NumPadKey$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/NumPadKey$2;->getValue(Lcom/android/keyguard/NumPadKey;)F

    move-result p0

    return p0

    .line 2
    :pswitch_1
    check-cast p1, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/NumPadKey$2;->getValue(Lcom/android/keyguard/NumPadKey;)F

    move-result p0

    return p0

    .line 3
    :goto_0
    check-cast p1, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/NumPadKey$2;->getValue(Lcom/android/keyguard/NumPadKey;)F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Lcom/android/keyguard/NumPadKey;F)V
    .locals 0

    iget p0, p0, Lcom/android/keyguard/NumPadKey$2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/android/keyguard/NumPadKey;->setBgDrawableInnerRadius(F)V

    return-void

    .line 5
    :pswitch_1
    invoke-virtual {p1, p2}, Lcom/android/keyguard/NumPadKey;->setBgDrawableOuterRadius(F)V

    return-void

    .line 6
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/keyguard/NumPadKey;->setBgDrawableAlpha(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/NumPadKey$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/NumPadKey$2;->setValue(Lcom/android/keyguard/NumPadKey;F)V

    return-void

    .line 2
    :pswitch_1
    check-cast p1, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/NumPadKey$2;->setValue(Lcom/android/keyguard/NumPadKey;F)V

    return-void

    .line 3
    :goto_0
    check-cast p1, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/NumPadKey$2;->setValue(Lcom/android/keyguard/NumPadKey;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
