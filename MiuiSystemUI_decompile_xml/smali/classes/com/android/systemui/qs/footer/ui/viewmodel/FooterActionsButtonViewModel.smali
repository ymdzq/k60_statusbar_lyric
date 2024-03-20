.class public final Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final backgroundColor:I

.field public final icon:Lcom/android/systemui/common/shared/model/Icon;

.field public final iconTint:Ljava/lang/Integer;

.field public final id:I

.field public final onClick:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(ILcom/android/systemui/common/shared/model/Icon;Ljava/lang/Integer;ILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->id:I

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->icon:Lcom/android/systemui/common/shared/model/Icon;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->iconTint:Ljava/lang/Integer;

    .line 9
    iput p4, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->backgroundColor:I

    .line 11
    iput-object p5, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->onClick:Lkotlin/jvm/functions/Function1;

    .line 13
    return-void
    .line 15
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
    instance-of v1, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;

    .line 12
    iget v1, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->id:I

    .line 14
    iget v3, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->id:I

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->icon:Lcom/android/systemui/common/shared/model/Icon;

    .line 21
    iget-object v3, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->icon:Lcom/android/systemui/common/shared/model/Icon;

    .line 23
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->iconTint:Ljava/lang/Integer;

    .line 32
    iget-object v3, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->iconTint:Ljava/lang/Integer;

    .line 34
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    return v2

    .line 42
    :cond_4
    iget v1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->backgroundColor:I

    .line 43
    iget v3, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->backgroundColor:I

    .line 45
    if-eq v1, v3, :cond_5

    .line 47
    return v2

    .line 49
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->onClick:Lkotlin/jvm/functions/Function1;

    .line 50
    iget-object p1, p1, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->onClick:Lkotlin/jvm/functions/Function1;

    .line 52
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result p0

    .line 57
    if-nez p0, :cond_6

    .line 58
    return v2

    .line 60
    :cond_6
    return v0
    .line 61
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->id:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->icon:Lcom/android/systemui/common/shared/model/Icon;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    iget-object v0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->iconTint:Ljava/lang/Integer;

    .line 19
    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 25
    move-result v0

    .line 28
    :goto_0
    add-int/2addr v1, v0

    .line 29
    mul-int/lit8 v1, v1, 0x1f

    .line 30
    iget v0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->backgroundColor:I

    .line 32
    const/16 v2, 0x1f

    .line 34
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 36
    move-result v0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->onClick:Lkotlin/jvm/functions/Function1;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 42
    move-result p0

    .line 45
    add-int/2addr p0, v0

    .line 46
    return p0
    .line 47
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "FooterActionsButtonViewModel(id="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->id:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", icon="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->icon:Lcom/android/systemui/common/shared/model/Icon;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", iconTint="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->iconTint:Ljava/lang/Integer;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", backgroundColor="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v1, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->backgroundColor:I

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", onClick="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsButtonViewModel;->onClick:Lkotlin/jvm/functions/Function1;

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string p0, ")"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    return-object p0
    .line 63
.end method
