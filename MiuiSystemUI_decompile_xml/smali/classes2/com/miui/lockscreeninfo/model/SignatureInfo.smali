.class public abstract Lcom/miui/lockscreeninfo/model/SignatureInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public alignment:I

.field public aodBlendColor:I

.field public blendColor:I

.field public content:Ljava/lang/String;

.field public fontFamily:Ljava/lang/String;

.field public isAutoPrimaryColor:Z

.field public letterSpaceValue:F

.field public lineSpaceValue:F

.field public lines:I

.field public primaryColor:I

.field public final templateId:Ljava/lang/String;

.field public textsize:I

.field public verticalMode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->content:Ljava/lang/String;

    .line 7
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->primaryColor:I

    .line 10
    const/16 v1, 0x67

    .line 12
    iput v1, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->alignment:I

    .line 14
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->isAutoPrimaryColor:Z

    .line 17
    iget-boolean v1, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->verticalMode:Z

    .line 19
    if-eqz v1, :cond_0

    .line 21
    const v2, 0x3f4ccccd    # 0.8f

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    iput v2, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->letterSpaceValue:F

    .line 28
    if-eqz v1, :cond_1

    .line 30
    const/high16 v1, 0x41e00000    # 28.0f

    .line 32
    goto :goto_1

    .line 34
    :cond_1
    const/high16 v1, -0x3e580000    # -21.0f

    .line 35
    :goto_1
    iput v1, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->lineSpaceValue:F

    .line 37
    const v1, 0x7fffffff

    .line 39
    iput v1, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->lines:I

    .line 42
    iput v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->blendColor:I

    .line 44
    iput v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->aodBlendColor:I

    .line 46
    iput-object p1, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->templateId:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/miui/lockscreeninfo/model/SignatureInfo;->initData()V

    .line 50
    return-void
    .line 53
.end method


# virtual methods
.method public abstract initData()V
.end method

.method public setAlignment(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->alignment:I

    .line 2
    const/16 v0, 0x66

    .line 4
    if-gt p1, v0, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iput-boolean p1, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->verticalMode:Z

    .line 11
    invoke-virtual {p0}, Lcom/miui/lockscreeninfo/model/SignatureInfo;->initData()V

    .line 13
    return-void
    .line 16
.end method
