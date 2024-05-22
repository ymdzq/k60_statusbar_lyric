.class public final Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

.field public final mName:Ljava/lang/String;

.field public mSubSlots:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    .line 5
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 9
    :cond_0
    return-void
    .line 11
.end method

.method public final getHolderForTag(I)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 4
    return-object p0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 7
    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 14
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 25
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 27
    if-ne v1, p1, :cond_1

    .line 29
    return-object v0

    .line 31
    :cond_2
    const/4 p0, 0x0

    .line 32
    return-object p0
    .line 33
.end method

.method public final getHolderListInViewOrder()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    :goto_0
    if-ltz v1, :cond_0

    .line 17
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 33
    if-eqz p0, :cond_1

    .line 35
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_1
    return-object v0
    .line 40
.end method

.method public final getIndexForTag(I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 17
    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->mTag:I

    .line 19
    if-ne v1, p1, :cond_0

    .line 21
    return v0

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, -0x1

    .line 27
    return p0
    .line 28
.end method

.method public final hasIconsInSlot()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 8
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_1

    .line 11
    return v0

    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result p0

    .line 17
    if-lez p0, :cond_2

    .line 18
    goto :goto_0

    .line 20
    :cond_2
    move v1, v0

    .line 21
    :goto_0
    return v1
    .line 22
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    .line 6
    aput-object v2, v0, v1

    .line 8
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 11
    aput-object v2, v0, v1

    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 15
    if-nez v1, :cond_0

    .line 17
    const-string p0, ""

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    const-string/jumbo v2, "| "

    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, " subSlots: "

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 46
    move-result-object p0

    .line 49
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot$$ExternalSyntheticLambda0;

    .line 50
    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot$$ExternalSyntheticLambda0;-><init>()V

    .line 52
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 55
    move-result-object p0

    .line 58
    const-string/jumbo v2, "|"

    .line 59
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 62
    move-result-object v2

    .line 65
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 69
    check-cast p0, Ljava/lang/String;

    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 78
    :goto_0
    const/4 v1, 0x2

    .line 79
    aput-object p0, v0, v1

    .line 80
    const-string p0, "(%s) holder=%s %s"

    .line 82
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 87
    return-object p0
    .line 88
.end method
