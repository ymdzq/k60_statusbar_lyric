.class public final Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;
.super Landroid/util/Property;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;->$r8$classId:I

    .line 2
    const-class p2, Ljava/lang/Float;

    .line 4
    invoke-direct {p0, p2, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_2

    .line 7
    :pswitch_0
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    .line 8
    packed-switch p0, :pswitch_data_1

    .line 10
    goto :goto_0

    .line 13
    :pswitch_1
    iget p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    move-result-object p0

    .line 19
    goto :goto_1

    .line 20
    :goto_0
    iget p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    .line 21
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    move-result-object p0

    .line 26
    :goto_1
    return-object p0

    .line 27
    :goto_2
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    .line 28
    packed-switch p0, :pswitch_data_2

    .line 30
    goto :goto_3

    .line 33
    :pswitch_2
    iget p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    .line 34
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    move-result-object p0

    .line 39
    goto :goto_4

    .line 40
    :goto_3
    iget p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    .line 41
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    move-result-object p0

    .line 46
    :goto_4
    return-object p0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 48
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 54
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
    .line 60
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_2

    .line 7
    :pswitch_0
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    .line 8
    check-cast p2, Ljava/lang/Float;

    .line 10
    packed-switch p0, :pswitch_data_1

    .line 12
    goto :goto_0

    .line 15
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 16
    move-result p0

    .line 19
    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setAnimationFraction(F)V

    .line 20
    goto :goto_1

    .line 23
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 24
    move-result p0

    .line 27
    iput p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    .line 28
    :goto_1
    return-void

    .line 30
    :goto_2
    check-cast p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    .line 31
    check-cast p2, Ljava/lang/Float;

    .line 33
    packed-switch p0, :pswitch_data_2

    .line 35
    goto :goto_3

    .line 38
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 39
    move-result p0

    .line 42
    invoke-virtual {p1, p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setAnimationFraction(F)V

    .line 43
    goto :goto_4

    .line 46
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 47
    move-result p0

    .line 50
    iput p0, p1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    .line 51
    :goto_4
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 54
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 60
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
