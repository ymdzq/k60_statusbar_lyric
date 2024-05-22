.class public Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private category:Ljava/lang/String;

.field private iconFormat:Ljava/lang/String;

.field private iconResName:Ljava/lang/String;

.field private iconType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->category:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getIconFormat()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->iconFormat:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getIconResName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->iconResName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getIconType()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->iconType:Ljava/lang/Integer;

    .line 2
    return-object p0
    .line 4
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->category:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setIconFormat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->iconFormat:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setIconResName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->iconResName:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setIconType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->iconType:Ljava/lang/Integer;

    .line 2
    return-void
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "IconParams{iconResName=\'"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->iconResName:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "\', iconType="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->iconType:Ljava/lang/Integer;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", iconFormat=\'"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->iconFormat:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "\', category=\'"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;->category:Ljava/lang/String;

    .line 39
    const-string v1, "\'}"

    .line 41
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    return-object p0
    .line 47
.end method
