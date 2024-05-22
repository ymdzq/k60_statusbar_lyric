.class public final Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1$invokeSuspend$$inlined$sortedBy$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 8
    iget-wide p0, p1, Landroid/content/pm/UserInfo;->creationTime:J

    .line 10
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object p0

    .line 15
    check-cast p2, Landroid/content/pm/UserInfo;

    .line 16
    iget-wide p1, p2, Landroid/content/pm/UserInfo;->creationTime:J

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object p1

    .line 23
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :goto_0
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 29
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 31
    move-result p0

    .line 34
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    move-result-object p0

    .line 38
    check-cast p2, Landroid/content/pm/UserInfo;

    .line 39
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 41
    move-result p1

    .line 44
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 49
    move-result p0

    .line 52
    return p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 54
.end method
