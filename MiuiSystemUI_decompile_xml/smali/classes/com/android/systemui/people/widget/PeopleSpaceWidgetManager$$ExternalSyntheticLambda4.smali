.class public final synthetic Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Landroid/app/people/ConversationChannel;

    .line 8
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :pswitch_1
    check-cast p1, Landroid/service/notification/ConversationChannelWrapper;

    .line 15
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 17
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_2
    check-cast p1, Landroid/service/notification/ConversationChannelWrapper;

    .line 22
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 24
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_3
    new-instance p0, Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 29
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/people/widget/PeopleTileKey;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 33
    return-object p0

    .line 36
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    move-result p0

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 48
.end method
