.class public Lcom/android/systemui/toast/bean/StrongToastModel;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private charge:Ljava/lang/String;

.field private chargeFlag:I

.field private chargeLevel:F

.field private chargeRate:F

.field private duration:Ljava/lang/Long;

.field private packageName:Ljava/lang/String;

.field private statusBarGuideModel:Lcom/android/systemui/toast/bean/StatusBarGuideModel;

.field private strongSupperCharge:I

.field private strongToastCategory:Ljava/lang/String;

.field private target:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/Long;FFLjava/lang/String;IILcom/android/systemui/toast/bean/StatusBarGuideModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->packageName:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->strongToastCategory:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->target:Landroid/app/PendingIntent;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->duration:Ljava/lang/Long;

    .line 11
    iput p5, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->chargeLevel:F

    .line 13
    iput p6, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->chargeRate:F

    .line 15
    iput-object p7, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->charge:Ljava/lang/String;

    .line 17
    iput p8, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->chargeFlag:I

    .line 19
    iput p9, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->strongSupperCharge:I

    .line 21
    iput-object p10, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->statusBarGuideModel:Lcom/android/systemui/toast/bean/StatusBarGuideModel;

    .line 23
    return-void
    .line 25
.end method


# virtual methods
.method public getCharge()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->charge:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getChargeFlag()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->chargeFlag:I

    .line 2
    return p0
    .line 4
.end method

.method public getChargeLevel()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->chargeLevel:F

    .line 2
    return p0
    .line 4
.end method

.method public getChargeRate()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->chargeRate:F

    .line 2
    return p0
    .line 4
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->duration:Ljava/lang/Long;

    .line 2
    return-object p0
    .line 4
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->packageName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getStatusBarGuideModel()Lcom/android/systemui/toast/bean/StatusBarGuideModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->statusBarGuideModel:Lcom/android/systemui/toast/bean/StatusBarGuideModel;

    .line 2
    return-object p0
    .line 4
.end method

.method public getStrongSupperCharge()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->strongSupperCharge:I

    .line 2
    return p0
    .line 4
.end method

.method public getStrongToastCategory()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->strongToastCategory:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTarget()Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->target:Landroid/app/PendingIntent;

    .line 2
    return-object p0
    .line 4
.end method

.method public setCharge(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->charge:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setChargeFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->chargeFlag:I

    .line 2
    return-void
    .line 4
.end method

.method public setChargeLevel(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->chargeLevel:F

    .line 2
    return-void
    .line 4
.end method

.method public setChargeRate(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->chargeRate:F

    .line 2
    return-void
    .line 4
.end method

.method public setDuration(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->duration:Ljava/lang/Long;

    .line 2
    return-void
    .line 4
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->packageName:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setStatusBarGuideModel(Lcom/android/systemui/toast/bean/StatusBarGuideModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->statusBarGuideModel:Lcom/android/systemui/toast/bean/StatusBarGuideModel;

    .line 2
    return-void
    .line 4
.end method

.method public setStrongSupperCharge(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->strongSupperCharge:I

    .line 2
    return-void
    .line 4
.end method

.method public setStrongToastCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->strongToastCategory:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method

.method public setTarget(Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/bean/StrongToastModel;->target:Landroid/app/PendingIntent;

    .line 2
    return-void
    .line 4
.end method
