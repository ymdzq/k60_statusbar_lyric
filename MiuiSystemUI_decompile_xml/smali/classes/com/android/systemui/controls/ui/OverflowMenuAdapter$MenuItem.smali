.class public final Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final id:J

.field public final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;->text:Ljava/lang/CharSequence;

    .line 5
    iput-wide p2, p0, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;->id:J

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;

    .line 12
    iget-object v1, p1, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;->text:Ljava/lang/CharSequence;

    .line 14
    iget-object v3, p0, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;->text:Ljava/lang/CharSequence;

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
    iget-wide v3, p0, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;->id:J

    .line 25
    iget-wide p0, p1, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;->id:J

    .line 27
    cmp-long p0, v3, p0

    .line 29
    if-eqz p0, :cond_3

    .line 31
    return v2

    .line 33
    :cond_3
    return v0
    .line 34
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;->text:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;->id:J

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 12
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
    .line 17
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "MenuItem(text="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;->text:Ljava/lang/CharSequence;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", id="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v1, p0, Lcom/android/systemui/controls/ui/OverflowMenuAdapter$MenuItem;->id:J

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string p0, ")"

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method
