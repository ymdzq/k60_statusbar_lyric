.class public Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private iconParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

.field private textParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->iconParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTextParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->textParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 2
    return-object p0
    .line 4
.end method

.method public setIconParams(Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->iconParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 2
    return-void
    .line 4
.end method

.method public setTextParams(Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->textParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 2
    return-void
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Left{textParams="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->textParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", iconParams="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;->iconParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const/16 p0, 0x7d

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method
