.class public final Lcom/android/systemui/qs/QSDetailContent$ToggleItem;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/qs/QSDetailContent$Item;


# instance fields
.field public isChecked:Z

.field public final summary:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->title:Ljava/lang/CharSequence;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->summary:Ljava/lang/CharSequence;

    .line 7
    iput-boolean p3, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->isChecked:Z

    .line 9
    return-void
    .line 11
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
    instance-of v1, p1, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;

    .line 12
    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->title:Ljava/lang/CharSequence;

    .line 14
    iget-object v3, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->title:Ljava/lang/CharSequence;

    .line 16
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->summary:Ljava/lang/CharSequence;

    .line 25
    iget-object v3, p1, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->summary:Ljava/lang/CharSequence;

    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->isChecked:Z

    .line 36
    iget-boolean p1, p1, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->isChecked:Z

    .line 38
    if-eq p0, p1, :cond_4

    .line 40
    return v2

    .line 42
    :cond_4
    const/4 p0, 0x0

    .line 43
    invoke-static {p0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result p0

    .line 47
    if-nez p0, :cond_5

    .line 48
    return v2

    .line 50
    :cond_5
    return v0
    .line 51
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getType()I
    .locals 0

    .line 1
    const/16 p0, 0x91d

    .line 2
    return p0
    .line 4
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->title:Ljava/lang/CharSequence;

    .line 3
    if-nez v1, :cond_0

    .line 5
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 9
    move-result v1

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->summary:Ljava/lang/CharSequence;

    .line 15
    if-nez v2, :cond_1

    .line 17
    move v2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v1, v2

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->isChecked:Z

    .line 28
    if-eqz p0, :cond_2

    .line 30
    const/4 p0, 0x1

    .line 32
    :cond_2
    add-int/2addr v1, p0

    .line 33
    mul-int/lit8 v1, v1, 0x1f

    .line 34
    add-int/2addr v1, v0

    .line 36
    return v1
    .line 37
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->isChecked:Z

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "ToggleItem(title="

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->title:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, ", summary="

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->summary:Ljava/lang/CharSequence;

    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, ", isChecked="

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string p0, ", tag=null)"

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    return-object p0
    .line 43
.end method
