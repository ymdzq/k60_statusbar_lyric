.class Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mColors:[I

.field private mMatrixName:Ljava/lang/String;

.field public mShader:Landroid/graphics/Shader;

.field private mShaderType:I

.field public mStops:[F

.field private mTileMode:Landroid/graphics/Shader$TileMode;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mColors:[I

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mStops:[F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/GraphicsElement$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mMatrixName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$002(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mMatrixName:Ljava/lang/String;

    .line 2
    return-object p1
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$102(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mShaderType:I

    .line 2
    return p1
    .line 4
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;)Landroid/graphics/Shader$TileMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$202(Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/GraphicsElement$GraphicsShader;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 2
    return-object p1
    .line 4
.end method
