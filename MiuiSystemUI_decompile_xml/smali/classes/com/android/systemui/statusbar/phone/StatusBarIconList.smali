.class public final Lcom/android/systemui/statusbar/phone/StatusBarIconList;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mSlots:Ljava/util/ArrayList;

.field public final mViewOnlySlots:Ljava/util/List;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mViewOnlySlots:Ljava/util/List;

    .line 16
    array-length v0, p1

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_0

    .line 20
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    .line 22
    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 24
    aget-object v4, p1, v1

    .line 26
    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    return-void
    .line 37
.end method


# virtual methods
.method public final findOrInsertSlot(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 15
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 16
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    return v2

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v0

    .line 33
    if-lez v0, :cond_2

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 36
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 42
    return p1

    .line 45
    :cond_2
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 46
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 51
    return v1
    .line 54
.end method

.method public final getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->findOrInsertSlot(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getHolderForTag(I)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->findOrInsertSlot(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 12
    return-object p0
    .line 14
.end method

.method public final getViewIndex(ILjava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->findOrInsertSlot(Ljava/lang/String;)I

    .line 2
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    .line 9
    if-ge v1, p2, :cond_3

    .line 11
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v3

    .line 16
    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 17
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->hasIconsInSlot()Z

    .line 19
    move-result v4

    .line 22
    if-eqz v4, :cond_2

    .line 23
    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 25
    if-nez v4, :cond_0

    .line 27
    move v4, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v4, 0x1

    .line 31
    :goto_1
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 32
    if-nez v3, :cond_1

    .line 34
    goto :goto_2

    .line 36
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v3

    .line 40
    add-int/2addr v4, v3

    .line 41
    :goto_2
    add-int/2addr v2, v4

    .line 42
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 49
    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;

    .line 50
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 52
    if-nez p2, :cond_4

    .line 54
    goto :goto_3

    .line 56
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 57
    move-result v0

    .line 60
    if-nez p1, :cond_5

    .line 61
    goto :goto_3

    .line 63
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getIndexForTag(I)I

    .line 64
    move-result p0

    .line 67
    sub-int/2addr v0, p0

    .line 68
    add-int/lit8 v0, v0, -0x1

    .line 69
    :goto_3
    add-int/2addr v2, v0

    .line 71
    return v2
    .line 72
.end method
