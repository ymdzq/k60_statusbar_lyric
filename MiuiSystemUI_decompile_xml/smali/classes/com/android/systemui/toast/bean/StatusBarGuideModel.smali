.class public Lcom/android/systemui/toast/bean/StatusBarGuideModel;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private center:Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;

.field private left:Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

.field private right:Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCenter()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->center:Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;

    .line 2
    return-object p0
    .line 4
.end method

.method public getLeft()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->left:Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 2
    return-object p0
    .line 4
.end method

.method public getRight()Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->right:Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 2
    return-object p0
    .line 4
.end method

.method public setCenter(Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->center:Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;

    .line 2
    return-void
    .line 4
.end method

.method public setLeft(Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->left:Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 2
    return-void
    .line 4
.end method

.method public setRight(Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->right:Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 2
    return-void
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "StatusBarGuideModel{left="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->left:Lcom/android/systemui/toast/bean/StatusBarGuideModel$Left;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", right="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->right:Lcom/android/systemui/toast/bean/StatusBarGuideModel$Right;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", center="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StatusBarGuideModel;->center:Lcom/android/systemui/toast/bean/StatusBarGuideModel$Center;

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const/16 p0, 0x7d

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    return-object p0
    .line 43
.end method