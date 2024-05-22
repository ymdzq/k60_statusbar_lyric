.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Ljava/util/Set;

    .line 10
    check-cast p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;

    .line 12
    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;->uniqueName:Ljava/lang/CharSequence;

    .line 14
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;->originalName:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    const-string v0, " "

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;->subscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 37
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 39
    move-result v0

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 49
    iput-object p0, p1, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;->uniqueName:Ljava/lang/CharSequence;

    .line 50
    :cond_0
    return-object p1

    .line 52
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 53
    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;

    .line 55
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    new-instance p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;

    .line 62
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    .line 64
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetDialogController$1DisplayInfo;-><init>(Landroid/telephony/SubscriptionInfo;Ljava/lang/CharSequence;)V

    .line 76
    return-object p0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 80
.end method
