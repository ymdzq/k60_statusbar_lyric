.class public final synthetic Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;->f$0:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;->f$0:I

    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 17
    if-ne p1, p0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    return v1

    .line 22
    :goto_1
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController$$ExternalSyntheticLambda0;->f$0:I

    .line 23
    check-cast p1, Ljava/lang/Integer;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result p1

    .line 30
    if-ne p1, p0, :cond_1

    .line 31
    goto :goto_2

    .line 33
    :cond_1
    move v1, v2

    .line 34
    :goto_2
    return v1

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method
