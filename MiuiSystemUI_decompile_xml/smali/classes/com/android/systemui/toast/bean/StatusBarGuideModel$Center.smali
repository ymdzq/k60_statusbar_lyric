.class public Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;->iconParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTextParams()Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;->textParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 2
    return-object p0
    .line 4
.end method

.method public setIconParams(Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;->iconParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 2
    return-void
    .line 4
.end method

.method public setTextParams(Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;->textParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 2
    return-void
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "{textParams="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;->textParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$TextParams;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", iconParams="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;->iconParams:Lcom/android/systemui/toast/bean/StatusBarGuideModel$IconParams;

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const/16 p0, 0x7d

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    return-object p0
    .line 34
.end method
