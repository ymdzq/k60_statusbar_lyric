.class public final Lcom/android/systemui/keyguard/bouncer/shared/model/Message;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final animate:Z

.field public final colorState:Landroid/content/res/ColorStateList;

.field public final formatterArgs:Ljava/util/Map;

.field public final message:Ljava/lang/String;

.field public final messageResId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p3, 0x2

    .line 8
    if-eqz v0, :cond_1

    .line 10
    move-object p2, v1

    .line 12
    :cond_1
    and-int/lit8 p3, p3, 0x10

    .line 13
    if-eqz p3, :cond_2

    .line 15
    const/4 p3, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const/4 p3, 0x0

    .line 19
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->message:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->messageResId:Ljava/lang/Integer;

    .line 25
    iput-object v1, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->colorState:Landroid/content/res/ColorStateList;

    .line 27
    iput-object v1, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->formatterArgs:Ljava/util/Map;

    .line 29
    iput-boolean p3, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->animate:Z

    .line 31
    return-void
    .line 33
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
    instance-of v1, p1, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;

    .line 12
    iget-object v1, p1, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->message:Ljava/lang/String;

    .line 14
    iget-object v3, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->message:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->messageResId:Ljava/lang/Integer;

    .line 25
    iget-object v3, p1, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->messageResId:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->colorState:Landroid/content/res/ColorStateList;

    .line 36
    iget-object v3, p1, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->colorState:Landroid/content/res/ColorStateList;

    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->formatterArgs:Ljava/util/Map;

    .line 47
    iget-object v3, p1, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->formatterArgs:Ljava/util/Map;

    .line 49
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    return v2

    .line 57
    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->animate:Z

    .line 58
    iget-boolean p1, p1, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->animate:Z

    .line 60
    if-eq p0, p1, :cond_6

    .line 62
    return v2

    .line 64
    :cond_6
    return v0
    .line 65
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->message:Ljava/lang/String;

    .line 3
    if-nez v1, :cond_0

    .line 5
    move v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 9
    move-result v1

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget-object v2, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->messageResId:Ljava/lang/Integer;

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
    iget-object v2, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->colorState:Landroid/content/res/ColorStateList;

    .line 28
    if-nez v2, :cond_2

    .line 30
    move v2, v0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->hashCode()I

    .line 34
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v1, v2

    .line 38
    mul-int/lit8 v1, v1, 0x1f

    .line 39
    iget-object v2, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->formatterArgs:Ljava/util/Map;

    .line 41
    if-nez v2, :cond_3

    .line 43
    goto :goto_3

    .line 45
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 46
    move-result v0

    .line 49
    :goto_3
    add-int/2addr v1, v0

    .line 50
    mul-int/lit8 v1, v1, 0x1f

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->animate:Z

    .line 53
    if-eqz p0, :cond_4

    .line 55
    const/4 p0, 0x1

    .line 57
    :cond_4
    add-int/2addr v1, p0

    .line 58
    return v1
    .line 59
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Message(message="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->message:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", messageResId="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->messageResId:Ljava/lang/Integer;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", colorState="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->colorState:Landroid/content/res/ColorStateList;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", formatterArgs="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->formatterArgs:Ljava/util/Map;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", animate="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/bouncer/shared/model/Message;->animate:Z

    .line 49
    const-string v1, ")"

    .line 51
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    return-object p0
    .line 57
.end method
