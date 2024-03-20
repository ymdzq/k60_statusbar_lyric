.class public Lcom/android/settings/recommend/bean/IndexDetail;
.super Ljava/lang/Object;
.source "IndexDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;
    }
.end annotation


# instance fields
.field private controller:Lcom/android/settingslib/core/AbstractPreferenceController;

.field private indexDetailController:Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;

.field private intent:Ljava/lang/String;

.field private rawIntent:Landroid/content/Intent;

.field private resId:I

.field private title:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$rt7uCYEvcoMBJZqe9nbOqcI_8Bo()Z
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/settings/recommend/bean/IndexDetail;->lambda$new$0()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/android/settings/recommend/bean/IndexDetail$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/recommend/bean/IndexDetail$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/settings/recommend/bean/IndexDetail;->indexDetailController:Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;

    .line 58
    iput p1, p0, Lcom/android/settings/recommend/bean/IndexDetail;->resId:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/android/settings/recommend/bean/IndexDetail$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/recommend/bean/IndexDetail$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/settings/recommend/bean/IndexDetail;->indexDetailController:Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;

    .line 71
    iput p1, p0, Lcom/android/settings/recommend/bean/IndexDetail;->resId:I

    .line 72
    iput-object p2, p0, Lcom/android/settings/recommend/bean/IndexDetail;->intent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/android/settings/recommend/bean/IndexDetail$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/recommend/bean/IndexDetail$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/settings/recommend/bean/IndexDetail;->indexDetailController:Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;

    .line 76
    iput p1, p0, Lcom/android/settings/recommend/bean/IndexDetail;->resId:I

    .line 77
    iput-object p2, p0, Lcom/android/settings/recommend/bean/IndexDetail;->intent:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/android/settings/recommend/bean/IndexDetail;->controller:Lcom/android/settingslib/core/AbstractPreferenceController;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/android/settings/recommend/bean/IndexDetail$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/recommend/bean/IndexDetail$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/settings/recommend/bean/IndexDetail;->indexDetailController:Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;

    .line 62
    iput-object p1, p0, Lcom/android/settings/recommend/bean/IndexDetail;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/android/settings/recommend/bean/IndexDetail$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/recommend/bean/IndexDetail$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/settings/recommend/bean/IndexDetail;->indexDetailController:Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;

    .line 66
    iput-object p1, p0, Lcom/android/settings/recommend/bean/IndexDetail;->title:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/android/settings/recommend/bean/IndexDetail;->intent:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$new$0()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getController()Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/recommend/bean/IndexDetail;->controller:Lcom/android/settingslib/core/AbstractPreferenceController;

    return-object p0
.end method

.method public getIndexDetailController()Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/settings/recommend/bean/IndexDetail;->indexDetailController:Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;

    return-object p0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/recommend/bean/IndexDetail;->intent:Ljava/lang/String;

    return-object p0
.end method

.method public getRawIntent()Landroid/content/Intent;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/recommend/bean/IndexDetail;->rawIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getResId()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/android/settings/recommend/bean/IndexDetail;->resId:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settings/recommend/bean/IndexDetail;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setController(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/settings/recommend/bean/IndexDetail;->controller:Lcom/android/settingslib/core/AbstractPreferenceController;

    return-void
.end method

.method public setIndexDetailController(Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/recommend/bean/IndexDetail;->indexDetailController:Lcom/android/settings/recommend/bean/IndexDetail$IndexDetailController;

    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/recommend/bean/IndexDetail;->intent:Ljava/lang/String;

    return-void
.end method

.method public setRawIntent(Landroid/content/Intent;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/recommend/bean/IndexDetail;->rawIntent:Landroid/content/Intent;

    return-void
.end method

.method public setResId(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/android/settings/recommend/bean/IndexDetail;->resId:I

    return-void
.end method
