.class public final Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final clsName:Ljava/lang/CharSequence;

.field public final pkgName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 5
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 7
    const-string v1, ""

    .line 9
    if-nez v0, :cond_0

    .line 11
    move-object v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isMissedCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    const-string v0, "com.android.contacts"

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mPkgName:Ljava/lang/String;

    .line 24
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->pkgName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getMessageClassName()Ljava/lang/CharSequence;

    .line 28
    move-result-object v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    goto :goto_1

    .line 34
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isMissedCallNotification(Lcom/android/systemui/statusbar/notification/ExpandedNotification;)Z

    .line 35
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    const-string v1, ".activities.TwelveKeyDialer"

    .line 41
    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->getMessageClassName()Ljava/lang/CharSequence;

    .line 44
    move-result-object v1

    .line 47
    :goto_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->clsName:Ljava/lang/CharSequence;

    .line 48
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 50
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 54
    move-result p1

    .line 57
    iput p1, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->userId:I

    .line 58
    return-void
    .line 60
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    instance-of v2, p1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;

    .line 9
    if-nez v2, :cond_1

    .line 11
    goto :goto_1

    .line 13
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;

    .line 14
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->pkgName:Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->pkgName:Ljava/lang/String;

    .line 18
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->clsName:Ljava/lang/CharSequence;

    .line 26
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->clsName:Ljava/lang/CharSequence;

    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    iget p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->userId:I

    .line 36
    iget p1, p1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->userId:I

    .line 38
    if-ne p0, p1, :cond_2

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    move v0, v1

    .line 43
    :goto_0
    return v0

    .line 44
    :cond_3
    :goto_1
    return v1
    .line 45
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->userId:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->pkgName:Ljava/lang/String;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->clsName:Ljava/lang/CharSequence;

    .line 10
    filled-new-array {v1, p0, v0}, [Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    move-result p0

    .line 19
    return p0
    .line 20
.end method
