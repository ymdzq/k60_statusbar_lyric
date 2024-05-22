.class public final synthetic Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda5;
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
    iput p1, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Landroid/content/pm/LauncherApps;

    .line 10
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .line 12
    new-instance v0, Landroid/app/people/PeopleSpaceTile$Builder;

    .line 14
    invoke-direct {v0, p1, p0}, Landroid/app/people/PeopleSpaceTile$Builder;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/LauncherApps;)V

    .line 16
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    .line 19
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 24
    check-cast p0, Landroid/app/people/IPeopleManager;

    .line 26
    check-cast p1, Landroid/app/people/PeopleSpaceTile;

    .line 28
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;

    .line 30
    move-result-object v0

    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 38
    move-result v1

    .line 41
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 45
    invoke-virtual {p1}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 49
    invoke-interface {p0, v2, v1, p1}, Landroid/app/people/IPeopleManager;->getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J

    .line 50
    move-result-wide p0

    .line 53
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception p0

    .line 59
    const-string p1, "PeopleSpaceUtils"

    .line 60
    const-string v1, "Couldn\'t retrieve last interaction time"

    .line 62
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    const-wide/16 p0, 0x0

    .line 67
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    move-result-object p0

    .line 72
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 73
    move-result-wide p0

    .line 76
    invoke-virtual {v0, p0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;

    .line 77
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile$Builder;->build()Landroid/app/people/PeopleSpaceTile;

    .line 81
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 86
.end method
