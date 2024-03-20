.class public final Lcom/miui/lockscreeninfo/model/MagazineA;
.super Lcom/miui/lockscreeninfo/model/SignatureInfo;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "magazine_a"

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/lockscreeninfo/model/SignatureInfo;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final initData()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->verticalMode:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const v1, 0x7f0711f7    # @dimen/textsize_a_v '64.0dp'

    .line 6
    goto :goto_0

    .line 9
    :cond_0
    const v1, 0x7f0711f6    # @dimen/textsize_a_h '83.0dp'

    .line 10
    :goto_0
    iput v1, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->textsize:I

    .line 13
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    goto :goto_1

    .line 20
    :cond_1
    move v2, v1

    .line 21
    :goto_1
    iput v2, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->letterSpaceValue:F

    .line 22
    if-eqz v0, :cond_2

    .line 24
    const v1, 0x3f9c28f6    # 1.22f

    .line 26
    :cond_2
    iput v1, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->lineSpaceValue:F

    .line 29
    if-eqz v0, :cond_3

    .line 31
    const/4 v0, 0x4

    .line 33
    goto :goto_2

    .line 34
    :cond_3
    const/4 v0, 0x3

    .line 35
    :goto_2
    iput v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->lines:I

    .line 36
    const-string v0, "miclock-qinghe-75w"

    .line 38
    iput-object v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->fontFamily:Ljava/lang/String;

    .line 40
    return-void
    .line 42
.end method
