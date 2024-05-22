.class public final Lcom/miui/lockscreeninfo/model/MagazineB;
.super Lcom/miui/lockscreeninfo/model/SignatureInfo;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "magazine_b"

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/lockscreeninfo/model/SignatureInfo;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final initData()V
    .locals 1

    .line 1
    const/16 v0, 0x68

    .line 2
    iput v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->alignment:I

    .line 4
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->verticalMode:Z

    .line 7
    const v0, 0x7f0711f8    # @dimen/textsize_b '70.0dp'

    .line 9
    iput v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->textsize:I

    .line 12
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->letterSpaceValue:F

    .line 15
    const v0, 0x3f59999a    # 0.85f

    .line 17
    iput v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->lineSpaceValue:F

    .line 20
    const/4 v0, 0x3

    .line 22
    iput v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->lines:I

    .line 23
    const-string v0, "miclock-inter-scaled-medium"

    .line 25
    iput-object v0, p0, Lcom/miui/lockscreeninfo/model/SignatureInfo;->fontFamily:Ljava/lang/String;

    .line 27
    return-void
    .line 29
.end method

.method public final setAlignment(I)V
    .locals 0

    .line 1
    const/16 p1, 0x68

    .line 2
    invoke-super {p0, p1}, Lcom/miui/lockscreeninfo/model/SignatureInfo;->setAlignment(I)V

    .line 4
    return-void
    .line 7
.end method
