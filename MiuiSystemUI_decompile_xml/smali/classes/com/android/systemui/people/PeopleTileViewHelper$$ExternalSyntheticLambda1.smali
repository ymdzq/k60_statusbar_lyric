.class public final synthetic Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    goto :goto_2

    .line 9
    :pswitch_0
    check-cast p1, Landroid/app/people/ConversationStatus;

    .line 10
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getAvailability()I

    .line 12
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    return v0

    .line 20
    :pswitch_1
    check-cast p1, Landroid/app/people/ConversationStatus;

    .line 21
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    .line 23
    move-result p0

    .line 26
    const/4 p1, 0x3

    .line 27
    if-ne p0, p1, :cond_1

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    move v0, v1

    .line 31
    :goto_1
    return v0

    .line 32
    :goto_2
    check-cast p1, Landroid/app/people/ConversationStatus;

    .line 33
    invoke-virtual {p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    .line 35
    move-result p0

    .line 38
    if-ne p0, v0, :cond_2

    .line 39
    goto :goto_3

    .line 41
    :cond_2
    move v0, v1

    .line 42
    :goto_3
    return v0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 44
.end method
