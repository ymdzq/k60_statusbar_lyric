.class public final Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;
.super Landroid/util/FloatProperty;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    const-string p1, "TranslateXAod"

    .line 13
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 15
    return-void

    .line 18
    :cond_0
    const-string p1, "TranslateYClockSize"

    .line 19
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 21
    return-void

    .line 24
    :cond_1
    const-string p1, "TranslateYClockDesign"

    .line 25
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_2
    const-string p1, "TranslateXClockDesign"

    .line 31
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
    .line 36
.end method


# virtual methods
.method public final get(Lcom/android/keyguard/KeyguardStatusAreaView;)Ljava/lang/Float;
    .locals 0

    iget p0, p0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateYFromClockDesign()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateXFromClockDesign()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateXFromAod()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusAreaView;->getTranslateYFromClockSize()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/keyguard/KeyguardStatusAreaView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;->get(Lcom/android/keyguard/KeyguardStatusAreaView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_1
    check-cast p1, Lcom/android/keyguard/KeyguardStatusAreaView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;->get(Lcom/android/keyguard/KeyguardStatusAreaView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_2
    check-cast p1, Lcom/android/keyguard/KeyguardStatusAreaView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;->get(Lcom/android/keyguard/KeyguardStatusAreaView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 4
    :goto_0
    check-cast p1, Lcom/android/keyguard/KeyguardStatusAreaView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;->get(Lcom/android/keyguard/KeyguardStatusAreaView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Lcom/android/keyguard/KeyguardStatusAreaView;F)V
    .locals 0

    iget p0, p0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardStatusAreaView;->setTranslateYFromClockDesign(F)V

    return-void

    .line 6
    :pswitch_1
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardStatusAreaView;->setTranslateXFromClockDesign(F)V

    return-void

    .line 7
    :pswitch_2
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardStatusAreaView;->setTranslateXFromAod(F)V

    return-void

    .line 8
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardStatusAreaView;->setTranslateYFromClockSize(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/android/keyguard/KeyguardStatusAreaView;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;->setValue(Lcom/android/keyguard/KeyguardStatusAreaView;F)V

    return-void

    .line 2
    :pswitch_1
    check-cast p1, Lcom/android/keyguard/KeyguardStatusAreaView;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;->setValue(Lcom/android/keyguard/KeyguardStatusAreaView;F)V

    return-void

    .line 3
    :pswitch_2
    check-cast p1, Lcom/android/keyguard/KeyguardStatusAreaView;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;->setValue(Lcom/android/keyguard/KeyguardStatusAreaView;F)V

    return-void

    .line 4
    :goto_0
    check-cast p1, Lcom/android/keyguard/KeyguardStatusAreaView;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardStatusAreaView$Companion$TRANSLATE_X_AOD$1;->setValue(Lcom/android/keyguard/KeyguardStatusAreaView;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
